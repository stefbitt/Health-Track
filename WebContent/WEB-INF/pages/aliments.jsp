<!DOCTYPE html>

<html>

<head>
    <meta charset="utf8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Health Track</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/aliments.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"></script>
    <script>
        function habilitaAlimento() {
            var disSelectAliment = document.getElementById('selectTipoAlimento');
            disSelectAliment.options[0].disabled = true;

            document.getElementById('selectAlimento').disabled = false;
            document.getElementById('qtdConsumida').disabled = false;       

            var tipoAlimento = document.getElementById('selectTipoAlimento').value;

            if (tipoAlimento == 1) {
                carregaFrutas();
                QtdPorcao();
            }
            else if (tipoAlimento == 2) {
                carregaCarne();
                QtdPorcao();
            }
            else if (tipoAlimento == 3) {
                carregaGraos();
                QtdPorcao();
            }
        }
        function carregaFrutas() {
            var criaFruta = document.getElementById('selectAlimento');
            criaFruta.options[0].text = 'Maça';
            criaFruta.options[1].text = 'Banana';
            criaFruta.options[2].text = 'Morango';
        }
        function carregaCarne() {
            var criaCarne = document.getElementById('selectAlimento');
            criaCarne.options[0].text = 'Patinho';
            criaCarne.options[1].text = 'Alcatra';
            criaCarne.options[2].text = 'Frango';
        }
        function carregaGraos() {
            var criaGraos = document.getElementById('selectAlimento');
            criaGraos.options[0].text = 'Arroz';
            criaGraos.options[1].text = 'Feijão';
            criaGraos.options[2].text = 'Aveia';
        }
        function QtdPorcao(){
            var opAlimento = document.getElementById('selectAlimento');

            if(opAlimento.value == 0){
                document.getElementById('mostraQtdPorcao').innerHTML = "50";
            }
            else if(opAlimento.value == 1){
                document.getElementById('mostraQtdPorcao').innerHTML = "60";
            }
            else if(opAlimento.value == 2){
                document.getElementById('mostraQtdPorcao').innerHTML = "70";
            }
            qtdTotalConsumida();
        }
        function qtdTotalConsumida(){

            var qtdCaloriaConsumida = document.getElementById('mostraQtdPorcao').innerHTML;
            var qtdAlimentoConsumido = document.getElementById('qtdConsumida').value;           
            var calCaloriasTotal = parseFloat(qtdCaloriaConsumida) * parseFloat(qtdAlimentoConsumido);

            if (isNaN(calCaloriasTotal)){
                return false;
            }
            document.getElementById('qtdAlimentoConsumido').innerHTML = calCaloriasTotal;

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
                    <img class="card-img-top" src="./assets/images/ali01.gif" alt="Alimento">
                    <div class="card-body">
                        <h5 class="card-title">Seja saudável</h5>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="./assets/images/ali02.gif" alt="Alimento">
                    <div class="card-body">
                        <h5 class="card-title">Deixe seu carpápio variado</h5>

                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="./assets/images/ali03.gif" alt="Alimento">
                    <div class="card-body">
                        <h5 class="card-title">No horário Certo</h5>

                    </div>
                </div>
            </div>
            <div class="row mt-3 mb-2">
                <h5 class="col-md-9 mt-3">Insira o alimento a ser consumido:</h5>
            </div>
            <form action="">
                <div class="row">
                    <div class="col-md-3">
                        <select name="" id="selectTipoAlimento" class="form-control" onchange="habilitaAlimento()">
                            <option value="">Selecione um tipo ...</option>
                            <option value="1">Frutas</option>
                            <option value="2">Carnes</option>
                            <option value="3">Grãos</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <select name="" id="selectAlimento" class="form-control" disabled onchange="QtdPorcao()">
                            <option value="0">Selecione o alimento ...</option>
                            <option value="1"></option>
                            <option value="2"></option>
                        </select>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-8">
                        <h6 class="">A quantidade de calorias por porção desse alimento é <span
                                style="font-weight: 700;" id="mostraQtdPorcao">0</span> Kcal.</h6>
                        <h6 class="" style="font-size: 12px;">*Uma porção equivale a 100g.</h6>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-4">
                        <label for="qtdConsumida">Quantas porções foram consumidas?</label>
                        <input oninput="qtdTotalConsumida()" type="number" class="form-control" id="qtdConsumida" placeholder="1 porção" disabled>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-8">
                        <h6 class="">Você consumiu um total de <span style="font-weight: 700;" id="qtdAlimentoConsumido">0</span> Kcal.</h6>
                    </div>
                </div>
                <div class="row mt-2 mb-3">
                    <div class="col-md-2"><a type="" class="buttom-seguinte" onclick="">Incluir</a></div>
                </div>
            </form>
            <div class="row">
                <div class="col-sm-10">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Data</th>
                                <th scope="col">Alimento</th>
                                <th scope="col">Tipo</th>
                                <th scope="col">Porção Ingerida</th>
                                <th scope="col">Total Kcal</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">17/09/2019</th>
                                <td>Maça</td>
                                <td>Fruta</td>
                                <td>4</td>
                                <td>25 Kcal</td>
                            </tr>
                            <tr>
                                <th scope="row">30/09/2019</th>
                                <td>Banana</td>
                                <td>Fruta</td>
                                <td>3</td>
                                <td>60 Kcal</td>
                            </tr>
                            <tr>
                                <th scope="row">11/10/2019</th>
                                <td>Arroz</td>
                                <td>Grãos</td>
                                <td>1</td>
                                <td>30 Kcal</td>
                            </tr>
                            <tr>
                                <th scope="row">17/11/2019</th>
                                <td>Feijão</td>
                                <td>Grãos</td>
                                <td>1</td>
                                <td>25 Kcal</td>
                            </tr>
                            <tr>
                                <th scope="row">30/12/2019</th>
                                <td>Patinho</td>
                                <td>Carne</td>
                                <td>2</td>
                                <td>250 Kcal</td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row mt-2 mb-3">
                <div class="col-md-8">
                    <h6 class="" style="color:#a1a1a1;font-size: 13px;">*Tabela de ingestão de calorias diárias.</h6>
                </div>
            </div>
        </div>
    </div>

	<jsp:include page="javascript.jsp"></jsp:include>

    <script src="./assets/js/aliments.js"></script>
</body>

</html>