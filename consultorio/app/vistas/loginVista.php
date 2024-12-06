<?php include_once("encabezado.php"); ?>
<h1 class="text-center"><?php print $datos["subtitulo"]; ?></h1>
<div class="card p-4 text-success-emphasis bg-success-subtle border border-success-subtle rounded-3">
	<form action="<?php print RUTA; ?>login/verificar/" method="POST">
		<div class="form-group text-left">
			<label for="usuario">* Usuario:</label>
			<input type="text" name="usuario" class="form-control" placeholder="Escribe tu usuario (tu correo electrónico)"
			value="<?php 
      		print isset($datos['data']['usuario'])?$datos['data']['usuario']:''; 
      		?>">
		</div>
		<div class="form-group text-left">
			<label for="clave">* Clave de acceso:</label>
			<input type="password" name="clave" class="form-control" placeholder="Escribe tu clave de acceso"value="<?php 
      		print isset($datos['data']['clave'])?$datos['data']['clave']:''; 
      		?>">
		</div>
		<div class="form-group text-left">
			<input type="submit" value="Enviar" class="btn btn-success">
			<input type="checkbox" name="recordar"
			<?php
		      if(isset($datos['data']['recordar'])){
		        if($datos['data']['recordar']=="on") print "checked";
		      }
		    ?>
			>
			<label for="recordar">Recordar</label>
		</div>
	</form>
</div>
<?php include_once("piepagina.php"); ?>