<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link rel="stylesheet" href="./assets/css/style.css">

<title>Health Track</title>
</head>

<body>
	<div class="menu-index">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand logo" href="/"><img
				src="./assets/images/Logo-complete.png" alt="Logo"></a> <a
				class="navbar-brand logo-responsivo" href="/"><img
				src="./assets/images/logo.png" alt="Logo"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-item nav-link" href="#vamos-comecar"> Vamos
						começar </a> <a class="nav-item nav-link" href="#cards-group">

						Sobre </a> <a class="nav-item nav-link" href="#contact"> Contato </a>
				</div>
			</div>
		</nav>
	</div>
	<div class="row">

		<div id="carouselExampleControls"
			class="carousel slide col-md-12 col-sm-12" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="./assets/images/carrocel00.png"
						alt="Primeiro Slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="./assets/images/carrocel01.png"
						alt="Segundo Slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="./assets/images/carrocel02.png"
						alt="Terceiro Slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleControls"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Anterior</span>
			</a> <a class="carousel-control-next" href="#carouselExampleControls"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Próximo</span>
			</a>
		</div>
	</div>


	<div class="text-div" id="vamos-comecar">
		<div class="col-md-12 col-sm-12 mb-4">
			<h1 class="title-index">Vamos começar?</h1>
			<h5 class="text-index">No Health Track você encontra todo o
				direcionamento para ter uma vida com saúde e mudar para melhor,
				através do monitoramento de treinos, meditação, IMC e muito conteúdo
				exclusivo para transformar sua vida. Pronto para começar? Vamos
				juntos!</h5>
		</div>
		<div class="col-md-12 col-sm-12 sign-in-div">
			<a href="login" id="download-button" class="sign-in">Entre</a>
		</div>
	</div>


	<div id="cards-group" class="row card-complete">
		<div class="col-xl-3 col-md-6 col-sm-12 card00">
			<div class="card text-dark" style="max-width: 18rem;">
				<div class="card-body">Alimentação Saudável</div>

			</div>
		</div>
		<div class="col-xl-3 col-md-6 col-sm-12 card00">
			<div class="card text-dark" style="max-width: 18rem;">
				<div class="card-body">Treinos</div>

			</div>
		</div>
		<div class="col-xl-3 col-md-6 col-sm-12 card00">
			<div class="card text-dark" style="max-width: 18rem;">
				<div class="card-body">Monitore seu peso</div>

			</div>
		</div>
		<div class="col-xl-3 col-md-6 col-sm-12 card00">
			<div class="card text-dark" style="max-width: 18rem;">
				<div class="card-body">Monitore a sua saúde</div>

			</div>
		</div>
	</div>
	<div class="row contact" id="contact">
		<form class="form-message col-xl-4 col-md-4 col-sm-4">
			<div class="form-row">
				<div class="form-group col-md-12 col-sm-12 name">
					<label for="exampleFormControlInput1">Nome Completo:</label> <input
						type="email" class="form-control" id="exampleFormControlInput1"
						required>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-12 col-sm-12 email">
					<label for="exampleFormControlInput1">Email:</label> <input
						type="email" class="form-control" id="exampleFormControlInput1"
						required>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-12 col-sm-12 phone">
					<label for="exampleFormControlInput1">Celular:</label> <input
						type="email" class="form-control" id="exampleFormControlInput1"
						placeholder="Opcional">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-12 col-sm-12 message">
					<label for="exampleFormControlTextarea1">Mensagem:</label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
						rows="3"></textarea>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 sign-in-div">
				<a href="#" id="download-button" class="sign-in">Enviar</a>
			</div>
		</form>
		<div class="image-contact col-xl-7 col-md-7 col-sm-6">
			<img src="./assets/images/image-contact.png" class="img"
				alt="image-contact">
		</div>

	</div>
	<footer class="footer">
		<div class="footer-bar">
			<div class="logos-footer">
				<a href="https://facebook.com/"> <ion-icon name="logo-facebook"></ion-icon>
				</a> &nbsp; <a href="https://twitter.com/"> <ion-icon
						name="logo-twitter"></ion-icon>
				</a> &nbsp; <a href="https://instagram.com/"> <ion-icon
						name="logo-instagram"></ion-icon>
				</a>
			</div>
			<p class="text-footer">HealthTrack 2020 - Todos os direitos
				reservados.</p>
		</div>
	</footer>
	</div>

	<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
	
	<jsp:include page="javascript.jsp"></jsp:include>

	<script src="./assets/js/main.js"></script>

</body>

</html>