<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
</head>
<body class="d-flex align-items-center justify-content-center vh-100 bg-light">

<div class="card shadow-lg p-4" style="width: 400px;">
    <h3 class="text-center mb-4 text-primary">
        <i class="fas fa-user-circle me-2"></i> Đăng nhập
    </h3>

    <form action="${pageContext.request.contextPath}/login" method="post">
        <div class="mb-3">
            <label class="form-label">Tên đăng nhập</label>
            <div class="input-group">
                <span class="input-group-text"><i class="fas fa-user"></i></span>
                <input type="text" name="username" class="form-control" placeholder="Nhập username" required/>
            </div>
        </div>

        <div class="mb-3">
            <label class="form-label">Mật khẩu</label>
            <div class="input-group">
                <span class="input-group-text"><i class="fas fa-lock"></i></span>
                <input type="password" name="password" class="form-control" placeholder="Nhập password" required/>
            </div>
        </div>

        <button class="btn btn-primary w-100">
            <i class="fas fa-sign-in-alt me-1"></i> Đăng nhập
        </button>
    </form>

    <c:if test="${not empty error}">
        <div class="alert alert-danger mt-3 text-center">${error}</div>
    </c:if>

    <div class="text-center mt-3">
        <small class="text-muted">Chưa có tài khoản? <a href="${pageContext.request.contextPath}/register">Đăng ký</a></small>
    </div>
</div>

</body>
</html>
