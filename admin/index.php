<?php include('header.php'); ?>
  <body id="login">
    <div class="container">

      <form id="login_form" class="form-signin" method="post">
        <h3 class="form-signin-heading"><i class="icon-lock"></i> Identificarse</h3>
        <input type="text" class="input-block-level" id="usernmae" name="username" placeholder="Usuario" required>
        <input type="password" class="input-block-level" id="password" name="password" placeholder="Contraseña" required>
        <button name="login" class="btn btn-info" type="submit"><i class="icon-signin icon-"></i> Iniciar Sesión</button>
		
		      </form>
				<script>
			jQuery(document).ready(function(){
			jQuery("#login_form").submit(function(e){
					e.preventDefault();
					var formData = jQuery(this).serialize();
					$.ajax({
						type: "POST",
						url: "login.php",
						data: formData,
						success: function(html){
						if(html=='true')
						{
						$.jGrowl("Bienvenido al Platea21: Sistema E-Learning", { header: 'Access Granted' });
						var delay = 2000;
							setTimeout(function(){ window.location = 'dashboard.php'  }, delay);  
						}
						else
						{
						$.jGrowl("Por favor verifique su Usuario y Contraseña", { header: 'Login Failed' });
						}
						}
						
					});
					return false;
				});
			});
			</script>

		


    </div> <!-- /container -->
<?php include('script.php'); ?>
  </body>
</html>