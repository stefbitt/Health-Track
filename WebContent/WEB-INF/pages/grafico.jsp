<!DOCTYPE html>

<html>

<head>
    <meta charset="utf8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Health Track</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/grafico.css">
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
                        <button class="btn btn-secondary dropdown-toggle " type="button" id="dropdownMenuButton"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-user mt-2" aria-hidden="true"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton"
                            id="dropbtn">
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
        <div style="margin-left: 0;padding-left: 0;" class="col-xl-9 col-md-9 col-sm-9">
            <div class="row mt-3 mb-2 mt-4">
                <h3 class="col-md-9">Confira os seus resultados</h3>
            </div>
            <div class="row mt-3 mb-2 mt-4">
                <h6 class="col-md-9">Pressão Arterial</h6>
            </div>
            <div class="row">
                <div class="col-sm-10">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">SIS-DIA</th>
                                <th scope="col">Data</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">123-79 mmHG</th>
                                <td>25/05/2020</td>
                            </tr>
                            <tr>
                                <th scope="row">121-85 mmHG</th>
                                <td>24/05/2020</td>
                            </tr>
                            <tr>
                                <th scope="row">123-78 mmHG</th>
                                <td>23/05/2020</td>
                            </tr>
                            <tr>
                                <th scope="row">122-81 mmHG</th>
                                <td>22/05/2020</td>
                            </tr>
                            <tr>
                                <th scope="row">120-82 mmHG</th>
                                <td>21/05/2020</td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row mt-3 mb-2 mt-4">
                <h6 class="col-md-9">Batimentos Cardíacos</h6>
            </div>
            <div class="row">
                <div class="col-sm-10">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Batimentos Cardiacos</th>
                                <th scope="col">Data</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">55-99</th>
                                <td>25/05/2020</td>
                            </tr>
                            <tr>
                                <th scope="row">61-100</th>
                                <td>24/05/2020</td>
                            </tr>
                            <tr>
                                <th scope="row">69-97</th>
                                <td>23/05/2020</td>
                            </tr>
                            <tr>
                                <th scope="row">70-98</th>
                                <td>22/05/2020</td>
                            </tr>
                            <tr>
                                <th scope="row">68-100</th>
                                <td>21/05/2020</td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row mt-4 mb-4">
                <div class="col-md-4"><a type="" class="buttom-seguinte" onclick="">Desconectar celular</a></div>
                <div class="col-md-2"></div>
                <div class="col-md-4"><a style="font-size: 12px;color: #0000FF;text-decoration: underline;" type="">Gerenciar conexões com relógio inteligente.</a></div>
            </div>
        </div>
    </div>
    </div>


    <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
	<jsp:include page="javascript.jsp"></jsp:include>
    <script src="./assets/js/grafico.js"></script>
</body>

</html>