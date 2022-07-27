<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

<!-- Content Start -->
<div class="content">
	<!-- Navbar Start -->
	<nav
		class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
		<a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
			<h2 class="text-primary mb-0">
				<i class="fa fa-user-edit"></i>
			</h2>
		</a> <a href="#" class="sidebar-toggler flex-shrink-0"> <i
			class="fa fa-bars"></i>
		</a>
		<form class="d-none d-md-flex ms-4">
			<input class="form-control bg-dark border-0" type="search"
				placeholder="Search">
		</form>
		<div class="navbar-nav align-items-center ms-auto">
			<div class="nav-item dropdown">
				<a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown"> <i class="fa fa-envelope me-lg-2"></i>
					<span class="d-none d-lg-inline-flex">Message</span>
				</a>
				<div
					class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
					<a href="#" class="dropdown-item">
						<div class="d-flex align-items-center">
							<img class="rounded-circle" src="/resources/img/user.jpg" alt=""
								style="width: 40px; height: 40px;">
							<div class="ms-2">
								<h6 class="fw-normal mb-0">Jhon send you a message</h6>
								<small>15 minutes ago</small>
							</div>
						</div>
					</a>
					<hr class="dropdown-divider">
					<a href="#" class="dropdown-item">
						<div class="d-flex align-items-center">
							<img class="rounded-circle" src="/resources/img/user.jpg" alt=""
								style="width: 40px; height: 40px;">
							<div class="ms-2">
								<h6 class="fw-normal mb-0">Jhon send you a message</h6>
								<small>15 minutes ago</small>
							</div>
						</div>
					</a>
					<hr class="dropdown-divider">
					<a href="#" class="dropdown-item">
						<div class="d-flex align-items-center">
							<img class="rounded-circle" src="/resources/img/user.jpg" alt=""
								style="width: 40px; height: 40px;">
							<div class="ms-2">
								<h6 class="fw-normal mb-0">Jhon send you a message</h6>
								<small>15 minutes ago</small>
							</div>
						</div>
					</a>
					<hr class="dropdown-divider">
					<a href="#" class="dropdown-item text-center">See all message</a>
				</div>
			</div>
			<div class="nav-item dropdown">
				<a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown"> <i class="fa fa-bell me-lg-2"></i> <span
					class="d-none d-lg-inline-flex">Notificatin</span>
				</a>
				<div
					class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
					<a href="#" class="dropdown-item">
						<h6 class="fw-normal mb-0">Profile updated</h6> <small>15
							minutes ago</small>
					</a>
					<hr class="dropdown-divider">
					<a href="#" class="dropdown-item">
						<h6 class="fw-normal mb-0">New user added</h6> <small>15
							minutes ago</small>
					</a>
					<hr class="dropdown-divider">
					<a href="#" class="dropdown-item">
						<h6 class="fw-normal mb-0">Password changed</h6> <small>15
							minutes ago</small>
					</a>
					<hr class="dropdown-divider">
					<a href="#" class="dropdown-item text-center">See all
						notifications</a>
				</div>
			</div>
			<div class="nav-item dropdown">
				<a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown"> <img class="rounded-circle me-lg-2"
					src="/resources/img/user.jpg" alt=""
					style="width: 40px; height: 40px;"> <span
					class="d-none d-lg-inline-flex">eTribe</span>
				</a>
				<div
					class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
					<a href="#" class="dropdown-item">My Profile</a> <a href="#"
						class="dropdown-item">Settings</a> <a href="#"
						class="dropdown-item">Log Out</a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Navbar End -->


	<!-- Table Start -->
	<div class="container-fluid pt-4 px-4">
		<div class="row g-4">

			<!-- table_start -->
			<div class="col-12">
				<div class="bg-secondary rounded h-100 p-4">
					<h6 class="mb-4">Responsive Board Table</h6>
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Title</th>
									<th scope="col">Writer</th>
									<th scope="col">Register Date</th>
									<th scope="col">Update Date</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list }" var="list">
									<tr>
										<th scope="row"><c:out value="${list.bno }"></c:out></th>
										<td><a
											href='/board/get?bno=<c:out value="${list.bno }"/>'><c:out
													value="${list.title }"></c:out></a></td>
										<td><c:out value="${list.writer }"></c:out></td>
										<td><fmt:formatDate value="${list.regdate }"
												pattern="yyyy-MM-dd-HH:mm" /></td>
										<td><fmt:formatDate value="${list.updateDate }"
												pattern="yyyy-MM-dd-HH:mm" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div>
				<button type="button" onclick="location.href='register'"
					class="btn btn-default right">Register</button>
			</div>
			<!-- table_end -->
		</div>
	</div>

	<!-- Table End -->
	<%@include file="../includes/footer.jsp"%>

</div>
<!-- Content End -->

<script type="text/javascript">
	$(document).ready(function() {
		var result = '<c:out value="${result}"/>';
		checkModal(result);
		
		history.replaceState({}, null, null);

		function checkModal(result) {
			if (result === '' || history.state) {
				return;
			}
			if (parseInt(result) > 0) {
				alert("게시글 " + parseInt(result) + "번이 등록되었습니다.");
			}
			$("#myModal").modal('show');
		}
	});
</script>