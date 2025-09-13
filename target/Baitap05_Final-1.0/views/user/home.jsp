<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="bg-light">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">
            <i class="bi bi-house-door-fill"></i> Trang User
        </a>
        <div class="ms-auto d-flex align-items-center">
            <span class="navbar-text text-white fw-semibold me-3">
                👋 Xin chào, <span class="text-warning">${sessionScope.user.username}</span>
            </span>
            <a href="${pageContext.request.contextPath}/user/edit" class="btn btn-outline-light btn-sm me-2">
                ✏️ Chỉnh sửa
            </a>
            <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger btn-sm">
                🚪 Logout
            </a>
        </div>
    </div>
</nav>

<div class="container mt-4">
    <div class="card shadow-lg border-0 rounded-3">
        <div class="card-header bg-success text-white">
            <h5 class="mb-0"><i class="bi bi-list-task"></i> Danh sách Category</h5>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover align-middle text-center">
                    <thead class="table-light">
                        <tr>
                            <th style="width: 60px;">ID</th>
                            <th style="width: 200px;">Tên</th>
                            <th style="width: 100px;">Icon</th>
                            <th>Người tạo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="c" items="${listcate}">
                            <tr>
                                <td class="fw-semibold">${c.id}</td>
                                <td>${c.categoryname}</td>
                                <td>
                                    <img src="${pageContext.request.contextPath}/${c.icon}" width="40" height="40" class="rounded-circle border"/>
                                </td>
                                <td>
                                    <span class="badge bg-primary">${c.user.username}</span>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
