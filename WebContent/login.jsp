<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/login.css">
    <title>Login</title>
</head>

<body>
    <div class="container">
        <div class="row main">
            <div class="row col-md-12 col-sm-12 ">
                <div class="col-md-12 col-sm-12 image-login">
                    <img src="./assets/images/image06.png" class="img-fluid" alt="Gif">
                </div>

            </div>
            <div class="row login col-md-12 col-sm-12">
                <div class="col-md-12 col-sm-12 sign-up"><a type="submit" class="btn" id="botao_cadastro1"
                        data-toggle="modal" data-target="#exampleModalLong">Cadastre-se</a>
                        
                    <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">Cadastro</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form class="info-form2">
                                        <div class="titulo">
                                            <img src="./assets/images/Logo-complete.png" alt="logo">
                                        </div>
                                        <div class="form-group col-md-6 col-sm-6">
                                            <div class="subtitulo">
                                                <div class="subtitulo-text">
                                                    <h4>Dados Pessoais</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-12 col-sm-12">
                                                <label for="inputname01">Nome completo</label>
                                                <input type="text" class="form-control" id="inputname01"
                                                    placeholder="nome completo" required>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-12 col-sm-12">
                                                <label for="dataNasc">Data de Nascimento</label>
                                                <input type="text" class="form-control" id="DataNasc"
                                                    placeholder="01/01/2001" required>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-12 col-sm-12">
                                                <label for="inputsexo01">Sexo</label>
                                                <select class="form-control" name="" id="inputsexo01" required>
                                                    <option value="0">Masculino</option>
                                                    <option value="1">Femino</option>
                                                    <option value="2">Outros</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6 col-sm-6">
                                            <div class="subtitulo">
                                                <div class="subtitulo-text">
                                                    <h4>Dados de acesso</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-12 col-sm-12">
                                                <label for="inputemail01">Email</label>
                                                <input type="email" class="form-control" id="inputemail01"
                                                    placeholder="usuario@dominio.com" required>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-12 col-sm-12">
                                                <label for="inputpassword01">Senha</label>
                                                <input type="password" class="form-control" id="inputpassword01"
                                                    required>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-12 col-sm-12">
                                                <label for="inputpassword01">Confirmação de Senha</label>
                                                <input type="password" class="form-control" id="inputpassword01"
                                                    required>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6 col-sm-6">
                                            <div class="subtitulo">
                                                <div class="subtitulo-text">
                                                    <h4>Contato</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-12 col-sm-12">
                                                <label for="inputcel01">Telefone</label>
                                                <input type="text" class="form-control" id="inputcel01"
                                                    placeholder="(00) 00000-0000" required>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" id="buttom-seguinte" data-dismiss="modal">Concluir</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-sm-12 sign-in"><a type="submit" class="btn" data-toggle="modal"
                        data-target="#exampleModal" data-whatever="@getbootstrap" id="link-login02">Entre</a>
                        
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Login </h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form action="sucesso.jsp" method="GET">
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label for="recipient-name" class="col-form-label">Email:</label>
                                            <input type="email" class="form-control" id="recipient-name" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="col-form-label">Senha:</label>
                                            <input type="password" class="form-control" id="recipient-name" required>
                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <a type="button" class="btn" id="Botao-dash-forgot"
                                            href="#">Esqueceu sua senha?</a>
                                        <a type="button" class="btn" id="Botao-dash"
                                            href="dashboard.jsp">Entrar</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    <script src="./assets/js/login.js"></script>
</body>

</html>