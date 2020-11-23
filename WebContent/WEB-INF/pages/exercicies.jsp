<!DOCTYPE html>

<html>

<head>
    <meta charset="utf8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Health Track</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/exercicies.css">
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
                    <img src="./assets/images/animation.gif" class="img img-responsive rounded-circle" height="60px"
                        width="60px" alt="Foto do usuário logado">
                </div>

                <ul class="list-unstyled components">
                    <p>Menu</p>
                    <li class="active">
                        <a href="add.jsp">
                            <div class="icon">
                                <ion-icon name="add-outline"></ion-icon>
                            </div>
                            <div class="text-colapse">Metas diárias</div>
                        </a>
                    </li>
                    <li>
                        <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                            <div class="icon">
                                <ion-icon name="bar-chart-outline"></ion-icon>
                            </div>
                            </ion-icon>
                            <div class="text-colapse">Gráficos</div>
                        </a>
                        <ul class="collapse list-unstyled" id="pageSubmenu">
                            <li>
                                <a href="grafico.jsp">Pressão Arterial</a>
                            </li>
                            <li>
                                <a href="grafico.jsp">Batimentos Cardíacos</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="imc.jsp">
                            <div class="icon">
                                <ion-icon name="man-outline"></ion-icon>
                            </div>
                            <div class="text-colapse">IMC</div>
                        </a>
                    </li>
                    <li>
                        <a href="aliments.jsp">
                            <div class="icon">
                                <ion-icon name="nutrition-outline"></ion-icon>
                            </div>
                            <div class="text-colapse">Alimentação</div>
                        </a>
                    </li>
                    <li>
                        <a href="exercicies.jsp">
                            <div class="icon">
                                <ion-icon name="bicycle-outline"></ion-icon>
                            </div>
                            <div class="text-colapse">Exercícios</div>
                        </a>
                    </li>
                    <li>
                        <a href="quem-somos.jsp">
                            <div class="icon">
                                <ion-icon name="alert-circle-outline"></ion-icon>
                            </div>
                            <div class="text-colapse">Quem Somos</div>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="col-xl-9 col-md-9 col-sm-9">
            <div class="card-group">
                <div class="card">
                    <img class="card-img-top" src="./assets/images/exe01.gif" alt="Alimento">
                    <div class="card-body">
                        <h5 class="card-title">Foco</h5>

                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="./assets/images/exe02.gif" alt="Alimento">
                    <div class="card-body">
                        <h5 class="card-title">Equilíbrio e força</h5>

                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="./assets/images/exe03.gif" alt="Alimento">
                    <div class="card-body">
                        <h5 class="card-title">Divirta-se</h5>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-8">
                    <div class="form-group col-md-6 col-sm-6 phone">
                        <label for="exampleFormControlInput1">Exercício:</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Corrida">
                    </div>
                </div>
                <div class="col-sm-4 button-imc">
                    <button type="submit" class="buttom-seguinte"><ion-icon name="add-outline" size="large"></ion-icon></button>
                    <button type="submit" class="buttom-seguinte"><ion-icon name="trash-bin-outline" size="large"></ion-icon></button>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-8">
                    <div class="form-group col-md-6 col-sm-6 phone">
                        <label for="exampleFormControlInput1">Calorias perdidas:</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="1000 Kcal">
                    </div>
                </div>
                <div class="col-sm-4 button-imc">
                    <button type="submit" class="buttom-seguinte"><ion-icon name="add-outline" size="large"></ion-icon></button>
                    <button type="submit" class="buttom-seguinte"><ion-icon name="trash-bin-outline" size="large"></ion-icon></button>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-8">
                    <div class="form-group col-md-6 col-sm-6 phone">
                        <label for="exampleFormControlInput1">Horário:</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="06:00">
                    </div>
                </div>
                <div class="col-sm-4 button-imc">
                    <button type="submit" class="buttom-seguinte"><ion-icon name="add-outline" size="large"></ion-icon></button>
                    <button type="submit" class="buttom-seguinte"><ion-icon name="trash-bin-outline" size="large"></ion-icon></button>
                </div>
            </div>



        </div>
    </div>


    <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
	<jsp:include page="javascript.jsp"></jsp:include>
    <script src="./assets/js/exercicies.js"></script>
</body>

</html>