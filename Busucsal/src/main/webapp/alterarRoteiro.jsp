<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="br.ucsal.admin.model.Admin"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="assetss/img/acai_icon.png">

<title>Busucsal</title>

<link href="assetss/css/bootstrap.css" rel="stylesheet">

<link href="assetss/css/main.css" rel="stylesheet">

</head>

<body>
	<%
		Admin adminLogin = (Admin) session.getAttribute("adminLogin");
	%>
	<div class="navbar navbar-inverse navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="ListarAdminHorarioRoteiroServlet"><img
					src="assetss/img/acai_icon.png" alt="Icone A�a�" height="55"
					width="55"> Busucsal</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right pt navbar-brand">
					<li><a href="ListarAdminHorarioRoteiroServlet"> <%
 	out.print(adminLogin.getNome());
 %>
					</a></li>
					<li><a href="LogarAdminServlet">Sair</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div id="ww">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 centered">
					<div class="table-responsive">
						<h2>Alterar Roteiro</h2>
						<br>
						<form action="AlterarHorarioServlet" method="POST">
							<input type="hidden" name="id" value="${roteiro.id}">
							<div class="form-group">
								<label>Rota</label> <input class="form-control"
									type="text" name="rota" value="${roteiro.rota}" />
							</div>
							<div class="form-group">
								<label>Sa�da</label> <input class="form-control" type="text"
									name="saida" value="${roteiro.saida}" />
							</div>
							<div class="form-group">
								<label>Parada</label> <input class="form-control" type="text"
									name="parada" value="${roteiro.parada}" />
							</div>
							<button type="submit" class="btn btn-dark">Inserir</button>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

	<div id="footer">
		<div class="container">
			<div class="row">

				<div class="col-lg-5">
					<h4>SOBRE O PROJETO:</h4>
					<p>Um site de vendas de a�a� interativo com os usu�rios, de
						forma que os mesmos n�o precisem mais ir at� o local de vendas ou
						pegar filas para comprar o a�a�, j� que os usu�rios receber�o em
						casa.</p>


				</div>
				<div class="col-lg-6 ">
					<h4>
						<a href="https://github.com/guilhermeeng99/Vendas_Acai"
							target="_blank">Reposit�rio</a>
					</h4>
					<p>Atividade realizada atr�ves de conhecimentos adquiridos
						pelas mat�rias: WEB, Eng. Requisitos, Banco de Dados I</p>

				</div>

			</div>

		</div>
	</div>

</body>
</html>