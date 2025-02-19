<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title> User Details</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const orgImage = "${user.avatar}";
                        if (orgImage) {
                            const imgURL = "/images/avatars/" + orgImage;
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });

                        }
                    })
                </script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Manage Users</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a> / Users</li>
                                </ol>
                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-12 mx-auto">
                                            <h3>User detail</h3>
                                            <div class="card" style="width: 60%;">
                                                <div class="card-header">
                                                    Id: ${user.id}
                                                </div>
                                                <ul class="list-group list-group-flush">
                                                    <li class="list-group-item">Email: ${user.email}</li>
                                                    <li class="list-group-item">Fullname: ${user.fullName}</li>
                                                    <li class="list-group-item">Address: ${user.address}</li>
                                                    <li class="list-group-item">Phone: ${user.phone}</li>
                                                    <li class="list-group-item">Role: ${user.role.name}</li>
                                                </ul>
                                            </div>
                                            <div class="col-12 mb-3">
                                                <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                    id="avatarPreview" src="/images/avatars/${user.avatar}" />
                                            </div>
                                            <a class="btn btn-primary mt-3" href="/admin/user">Back</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                    </div>
                    </main>
                    <jsp:include page="../layout/footer.jsp" />
                </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>

            </body>

            </html>