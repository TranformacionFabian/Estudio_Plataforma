<?php  include('header.php'); ?>
<?php  include('session.php'); ?>
    <body>
		<?php include('navbar.php') ?>
        <div class="container-fluid">
            <div class="row-fluid">
					<?php include('sidebar_dashboard.php'); ?>
                <!--/span-->
                <div class="span9" id="content">
						<div class="row-fluid"></div>
						
                    <div class="row-fluid">
            
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Numero de Datos</div>
                            </div>
                            <div class="block-content collapse in">
							        <div class="span12">
						
									<?php 
								$query_reg_teacher = mysqli_query($con,"select * from teacher where teacher_status = 'Registered' ")or die(mysqli_error());
								$count_reg_teacher = mysqli_num_rows($query_reg_teacher);
								?>
								
                                <div class="span3">
                                    <div class="chart" data-percent="<?php echo $count_reg_teacher; ?>"><?php echo $count_reg_teacher; ?></div>
                                    <div class="chart-bottom-heading"><strong>Profesores Registrados</strong>

                                    </div>
                                </div>
								
								<?php 
								$query_teacher = mysqli_query($con,"select * from teacher")or die(mysql_error());
								$count_teacher = mysqli_num_rows($query_teacher);
								?>
								
								
                                <div class="span3">
                                    <div class="chart" data-percent="<?php echo $count_teacher; ?>"><?php echo $count_teacher ?></div>
                                    <div class="chart-bottom-heading"><strong>Profesores</strong>

                                    </div>
                                </div>
								
								<?php 
								$query_student = mysqli_query($con,"select * from student where status='Registered'")or die(mysqli_error());
								$count_student = mysqli_num_rows($query_student);
								?>
								
                                <div class="span3">
                                    <div class="chart" data-percent="<?php echo $count_student ?>"><?php echo $count_student ?></div>
                                    <div class="chart-bottom-heading"><strong>Estudiantes Registrados</strong>

                                    </div>
                                </div>
								
								
										<?php 
								$query_student = mysqli_query($con,"select * from student")or die(mysqli_error());
								$count_student = mysqli_num_rows($query_student);
								?>
								
                                <div class="span3">
                                    <div class="chart" data-percent="<?php echo $count_student ?>"><?php echo $count_student ?></div>
                                    <div class="chart-bottom-heading"><strong>Estudiantes</strong>

                                    </div>
                                </div>
								
								
								
								
							
								
									<?php 
								$query_class = mysqli_query($con,"select * from class")or die(mysqli_error());
								$count_class = mysqli_num_rows($query_class);
								?>
								
                                <div class="span3">
                                    <div class="chart" data-percent="<?php echo $count_class; ?>"><?php echo $count_class; ?></div>
                                    <div class="chart-bottom-heading"><strong>Aulas</strong>

                                    </div>
                                </div>
								
								
										<?php 
								$query_file = mysqli_query($con,"select * from files")or die(mysql_error());
								$count_file = mysqli_num_rows($query_file);
								?>
								
                                <div class="span3">
                                    <div class="chart" data-percent="<?php echo $count_file; ?>"><?php echo $count_file; ?></div>
                                    <div class="chart-bottom-heading"><strong>Archivos Descargables</strong>

                                    </div>
                                </div>
								
								
										<?php 
								$query_subject = mysqli_query($con,"select * from subject")or die(mysql_error());
								$count_subject = mysqli_num_rows($query_subject);
								?>
								
                                <div class="span3">
                                    <div class="chart" data-percent="<?php echo $count_subject; ?>"><?php echo $count_subject; ?></div>
                                    <div class="chart-bottom-heading"><strong>Practicas</strong>

                                    </div>
                                </div>
						
						
                            </div>
                        </div>
                        <!-- /block -->
						
                    </div>
                    </div>
                
                
                 
                 
                </div>
            </div>
    
         <?php include('footer.php'); ?>
        </div>
	<?php include('script.php'); ?>
    </body>

</html>