package vn.hoidanit.laptopshop.service;

import java.io.File;
import java.util.List;

import org.springframework.stereotype.Service;

import jakarta.servlet.ServletContext;
import vn.hoidanit.laptopshop.domain.Role;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.domain.dto.RegisterDTO;
import vn.hoidanit.laptopshop.repository.RoleRepository;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class UserService {
    // DI
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final ServletContext servletContext;

    public UserService(UserRepository userRepository, RoleRepository roleRepository, ServletContext servletContext) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.servletContext = servletContext;
    }

    public String handleHello() {
        return "Hello service";
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    public void deleteUserById(long id) {
        this.userRepository.deleteById(id);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

    public String getAvatarsDirPath() {
        return this.servletContext.getRealPath("/resources/images/avatars");
    }

    public User mapRegisterDTOtoUser(RegisterDTO registerDTO) {
        User user = new User();
        user.setFullName(registerDTO.getFirstName() + " " + registerDTO.getLastName());
        user.setEmail(registerDTO.getEmail());
        user.setPassword(registerDTO.getPassword());
        return user;
    }

    public boolean checkEmailExist(String email) {
        return this.userRepository.existsByEmail(email);
    }

    public User getUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }
}
