<!DOCTYPE html>

<html>

<head>
    <meta charset="utf8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Health Track</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/imc.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"></script>
    <script>

        function calcIMC() {

            if( (document.getElementById('peso').value == '') || (document.getElementById('altura').value == '')){
                alert('Favor inserir peso e altura para realizar o cálculo.');
                return false;
            }

            document.getElementById('resultIMC').style = "display:block;";

            var peso = parseFloat(document.getElementById('peso').value);
            var altura = parseFloat(document.getElementById('altura').value);
            var imc = peso / (altura * altura);


            if (imc < 18.5) {
                document.getElementById('imcCalculado').innerHTML = imc.toFixed(2);
                document.getElementById('classificacao').innerHTML = 'abaixo do peso';
            }
            else if (imc <= 24.9) {
                document.getElementById('imcCalculado').innerHTML =  imc.toFixed(2);
                document.getElementById('classificacao').innerHTML = 'peso normal';
            }
            else if (imc <= 29.9) {
                document.getElementById('imcCalculado').innerHTML =  imc.toFixed(2);
                document.getElementById('classificacao').innerHTML = 'sobrepeso';
            }
            else if (imc <= 39.9) {
                document.getElementById('imcCalculado').innerHTML =  imc.toFixed(2);
                document.getElementById('classificacao').innerHTML = 'obesidade';
            }
            else {
                document.getElementById('imcCalculado').innerHTML =  imc.toFixed(2);
                document.getElementById('classificacao').innerHTML = 'obesidade grave';
            }

        }
    </script>
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
                            <a class="dropdown-item" href="./index.jsp">Sair</a>
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
            <div class="container-fluid">

                <div class="row mt-3 mb-3">
                    <h3 class="col-md-9">Vamos calcular o seu IMC?</h3>
                    <h6 class="col-md-9">Seu gênero cadastrado é <span style="font-weight: 700;">Feminino</span>, e
                        sua
                        idade <span style="font-weight: 700;">25 anos</span>.</h6>
                </div>
                <form action="" class="mb-4">
                    <div class="row mb-3">
                        <div class="col-md-3">
                            <label for="altura">Altura:</label>
                            <input type="number" class="form-control" id="altura" placeholder="1,70 m" step="any">
                        </div>
                        <div class="col-md-3">
                            <label for="peso">Peso:</label>
                            <input id="peso" type="number" class="form-control" placeholder="63,0 Kg" step="any">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2 mt-1"><a class="buttom-seguinte" onclick="calcIMC()">Calcular</a></div>

                    </div>
                    <div class="row mt-4" id="resultIMC" style="display:none;">
                        <h6 class="col-md-9">Seu IMC é <span style="font-weight: 700;" id="imcCalculado">--</span> e sua
                            classificação é, <span style="font-weight: 700;" id="classificacao">--</span>.</h6>
                    </div>
                </form>
                <div class="row">
                    <div class="col-sm-10">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">Data</th>
                                    <th scope="col">IMC</th>
                                    <th scope="col">Classificação</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">17/09/2019</th>
                                    <td>24,2</td>
                                    <td>SOBREPESO</td>
                                </tr>
                                <tr>
                                    <th scope="row">30/09/2019</th>
                                    <td>35,2</td>
                                    <td>PESO NORMAL</td>
                                </tr>
                                <tr>
                                    <th scope="row">11/10/2019</th>
                                    <td>25,6</td>
                                    <td>SOBREPESO</td>
                                </tr>
                                <tr>
                                    <th scope="row">17/11/2019</th>
                                    <td>25,8</td>
                                    <td>PESO NORMAL</td>
                                </tr>
                                <tr>
                                    <th scope="row">30/12/2019</th>
                                    <td>28,0</td>
                                    <td>SOBREPESO</td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    <script src="./assets/js/imc.js"></script>
</body>

</html>