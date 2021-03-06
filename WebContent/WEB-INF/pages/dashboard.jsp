<!DOCTYPE html>
<html>
<head>
<meta charset="utf8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Health Track</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="./assets/css/dashboard.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"></script>
</head>
<body>
	<div class="header">
		<nav class="navbar justify-content-between">
			<div>
				<a class="navbar-brand" href="./dashboard.jsp">Health Track</a>
				<button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarCollapse" type="button">
					<ion-icon name="menu-outline" size="large"></ion-icon>
				</button>
			</div>
			<form class="form-inline" style="justify-content: flex-end;">
				<div class="row">
					<div class="input-group mb-1 col-md-8 col-sm-5">
						<input class="form-control" type="text" placeholder="Procurar por..." aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-dark" id="btn-search" type="submit">
								<i class="fa fa-search" aria-hidden="true"></i>
							</button>
						</div>
					</div>
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="fa fa-user mt-2" aria-hidden="true"></i>
						</button>
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton" id="dropbtn">
							<a class="dropdown-item" href="./configuracao.jsp">Perfil</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="/">Sair</a>
						</div>
					</div>
				</div>
			</form>
		</nav>
	</div>
	<div class="row">
		<div class="wrapper col-xl-3 col-md-3 col-sm-3">
			<!-- Sidebar -->
			<nav id="sidebar">
				<div class="sidebar-header">
					<img src="./assets/images/animation.gif" class="img img-responsive rounded-circle" height="60px" width="60px" alt="Foto do usuário logado">
				</div>
				<ul class="list-unstyled components">
					<p>Menu</p>
					<li class="active"><a href="add.jsp">
							<div class="icon">
								<ion-icon name="add-outline"></ion-icon>
							</div>
							<div class="text-colapse">Metas diárias</div>
					</a></li>
					<li><a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
							<div class="icon">
								<ion-icon name="bar-chart-outline"></ion-icon>
							</div> </ion-icon>
							<div class="text-colapse">Gráficos</div>
					</a>
						<ul class="collapse list-unstyled" id="pageSubmenu">
							<li><a href="grafico.jsp">Pressão Arterial</a></li>
							<li><a href="grafico.jsp">Batimentos Cardíacos</a></li>
						</ul></li>
					<li><a href="imc">
							<div class="icon">
								<ion-icon name="man-outline"></ion-icon>
							</div>
							<div class="text-colapse">IMC</div>
					</a></li>
					<li><a href="aliments.jsp">
							<div class="icon">
								<ion-icon name="nutrition-outline"></ion-icon>
							</div>
							<div class="text-colapse">Alimentação</div>
					</a></li>
					<li><a href="exercicies.jsp">
							<div class="icon">
								<ion-icon name="bicycle-outline"></ion-icon>
							</div>
							<div class="text-colapse">Exercícios</div>
					</a></li>
					<li><a href="quem-somos.jsp">
							<div class="icon">
								<ion-icon name="alert-circle-outline"></ion-icon>
							</div>
							<div class="text-colapse">Quem Somos</div>
					</a></li>
				</ul>
			</nav>
		</div>
		<div style="margin-left: 0; padding-left: 0;" class="col-xl-9 col-md-9 col-sm-9">
			<div class="row mt-3 mb-2">
				<h1 class="col-md-9">Página inicial</h1>
			</div>
			<!--begin cards -->
			<div id="cards-group" class="row">
				<div class="col-xl-4 col-md-12 col-sm-12">
					<div class="card  mb-3 card01" style="max-width: 18rem;">
						<div class="card-body" style="background-image: url('./assets/images/IMC.png'); background-size: 100%;">
							<!--<div class="image-card"><img src="./assets/images/IMC.png" alt="img-imc"></div>-->
						</div>
						<div class="card-footer d-flex align-items-center justify-content-between">
							<a class="small stretched-link" href="imc"> IMC </a>
							<div class="small">
								<i class="fas fa-angle-right"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-md-12 col-sm-12">
					<div class="card mb-3 card02" style="max-width: 18rem;">
						<div class="card-body" style="background-image: url('./assets/images/aliments.png'); background-size: 100%;">
							<!--<div class="image-card"><img src="./assets/images/aliments.png" alt="img-aliments"></div>-->
						</div>
						<div class="card-footer d-flex align-items-center justify-content-between">
							<a class="small stretched-link" href="aliments.jsp"> Alimentação </a>
							<div class="small">
								<i class="fas fa-angle-right"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-md-12 col-sm-12">
					<div class="card mb-3 card03" style="max-width: 18rem;">
						<div class="card-body" style="background-image: url('./assets/images/exercicies.png'); background-size: 100%;">
							<!--<div class="image-card"><img src="./assets/images/exercicies.png" alt="img-exercic"></div>-->
						</div>
						<div class="card-footer d-flex align-items-center justify-content-between">
							<a class="small stretched-link" href="exercicies.jsp"> Exercícios </a>
							<div class="small">
								<i class="fas fa-angle-right"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--end cards -->
			<h3 class="pt-5">Videos Health</h3>
			<hr>
			<!--start iframe you tube-->
			<div class="row">
				<div class="col-xl-6 col-md-12 col-sm-12 align-content-center">
					<iframe width="390" height="318" src="https://www.youtube.com/embed/J1lsOrJCW2Y" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
				<div class=" col-xl-6 col-md-12 col-sm-12 align-content-center ">
					<iframe class="col-xl-10 col-md-10 col-sm-12" width="390" height="318" src="https://www.youtube.com/embed/fFsRF8zunsg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
			</div>
			<!--end iframe you tube-->
		</div>
	</div>
	<jsp:include page="javascript.jsp"></jsp:include>
	<script src="./assets/js/dashboard.js"></script>
</body>
</html>