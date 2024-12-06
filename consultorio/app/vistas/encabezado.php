<!DOCTYPE html>
<html data-bs-theme="<?php print TEMA; ?>">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CitApp | <?php print $datos["titulo"]; ?></title>
	<link rel="shortcut icon" href="<?php print RUTA; ?>public/img/favicon.ico">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
	<link real="stylesheet" href="<?php print RUTA; ?>public/css/main.css">
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-success navbar-dark px-3">
		<a href="<?php print RUTA.'tablero/'; ?>" class="navbar-brand">CitApp
		<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-heart-pulse" viewBox="0 0 16 16">
		<path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053.918 3.995.78 5.323 1.508 7H.43c-2.128-5.697 4.165-8.83 7.394-5.857.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17c3.23-2.974 9.522.159 7.394 5.856h-1.078c.728-1.677.59-3.005.108-3.947C13.486.878 10.4.28 8.717 2.01zM2.212 10h1.315C4.593 11.183 6.05 12.458 8 13.795c1.949-1.337 3.407-2.612 4.473-3.795h1.315c-1.265 1.566-3.14 3.25-5.788 5-2.648-1.75-4.523-3.434-5.788-5Z"/>
		<path d="M10.464 3.314a.5.5 0 0 0-.945.049L7.921 8.956 6.464 5.314a.5.5 0 0 0-.88-.091L3.732 8H.5a.5.5 0 0 0 0 1H4a.5.5 0 0 0 .416-.223l1.473-2.209 1.647 4.118a.5.5 0 0 0 .945-.049l1.598-5.593 1.457 3.642A.5.5 0 0 0 12 9h3.5a.5.5 0 0 0 0-1h-3.162z"/>
		</svg>
		</a>
		<?php
		if (isset($datos["menu"]) && $datos["menu"]==true) {
			if (isset($datos["admon"]) && $datos["admon"]==true) {
			  print "<ul class='navbar-nav mr-auto mt-2 mt-lg-0'>";
		      print "<li class='nav-item'>";
		      print "<a href='".RUTA."doctores' class='nav-link ";
		      if(isset($datos["activo"]) && $datos["activo"]=="doctores") print "active";
		      print "'>Doctores</a>";
		      print "</li>";
		      //
		      print "<li class='nav-item'>";
		      print "<a href='".RUTA."pacientes' class='nav-link ";
		      if(isset($datos["activo"]) && $datos["activo"]=="pacientes") print "active";
		      print "'>Pacientes</a>";
		      print "</li>";
		      //
		      print "<li class='nav-item'>";
		      print "<a href='".RUTA."citas' class='nav-link ";
		      if(isset($datos["activo"]) && $datos["activo"]=="citas") print "active";
		      print "'>Citas</a>";
		      print "</li>";
		      //
		      print "<li class='nav-item'>";
		      print "<a href='".RUTA."horarios' class='nav-link ";
		      if(isset($datos["activo"]) && $datos["activo"]=="horarios") print "active";
		      print "'>Horarios</a>";
		      print "</li>";
		      print "</ul>";
		  }
		  if (isset($datos["admon"]) && $datos["admon"]==false) {
			  print "<ul class='navbar-nav mr-auto mt-2 mt-lg-0'>";
		      print "<li class='nav-item'>";
		      print "<a href='".RUTA."historial' class='nav-link ";
		      if(isset($datos["activo"]) && $datos["activo"]=="historial") print "active";
		      print "'>Historial de paciente</a>";
		      print "</li>";
		      print "</ul>";

		  }
	      //
	      print "<ul class='nav navbar-nav ms-auto'>";
	      //
	      print "<li class='nav-item'>";
	      print "<a href='".RUTA."tablero/perfil' class='nav-link'>Perfil    ";
		  print '<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
		  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
		  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
		  </svg>';
		  print "</a>";
	      print "</li>";
	      print "<li class='nav-item'>";
	      print "<a href='".RUTA."tablero/logout' class='nav-link'>Salida    ";
		  print '<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
		  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0z"/>
		  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
		  </svg>';
		  print "</a>";
	      print "</li>";
	      print "</ul>";
	    }  
	?>
	</nav>
	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<?php  
				if (isset($datos["errores"])) {
					if (count($datos["errores"])>0) {
						print "<div class='alert alert-danger mt-3'>";
						foreach ($datos["errores"] as $valor) {
							print "<strong>* ".$valor."</strong><br>";
						}
						print "</div>";
					}
				}

				?>