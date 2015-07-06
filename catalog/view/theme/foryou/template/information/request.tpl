<?php 
if(!empty($_GET["path"])){
	switch ($_GET["path"]){
		case "2": ?>
		
		<?php echo $header; ?>
		<div class="sucursales" id="content" style="padding: 0;"><?php echo $content_top; ?>
			<style>
				div.left-empresa{
					float:left;
					width:300px;
					height: 200px
				}
				div.left-empresa-datos{
					float:left;
					width:300px;
					height: 320px
				}
			</style>

			<div class="mapa" style="background:url('image/empresa-detalle.png') no-repeat; padding:40px 145px 5px 145px;  height: 480px;background-size: cover;background-repeat: no-repeat;background-position: center center;">
				<div style="background:white;float:right">
					<span style="margin: auto;display: block;width: 36px;border: 1px solid #333;padding: 5px 28px;margin-top: 37px;background: #fff;">MAPA</span>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26263.77989871596!2d-58.475122804437625!3d-34.63013554813824!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcc98e64df50c5%3A0x1e5737daa1f65cfb!2sArgerich+265%2C+Buenos+Aires%2C+Ciudad+Aut%C3%B3noma+de+Buenos+Aires!5e0!3m2!1ses-419!2sar!4v1431922485817" width="350" height="350" frameborder="0" style="border:1px solid #333;display:block;margin:20px 20px 0 20px"></iframe>
					<span style="line-height: 21px;margin: auto;display: block;width: 198px;">ARGERICH 265 / FLORES. CABA.</span>
				</div>
				<div style="clear:both"></div>
			</div>
			<br/>
			<div style="width: 607px;margin:auto">
				<div class="left-empresa">
					<span>SANTIAMEN / WINTER 2015</span>
					<br/>
					<br/>
					<br/>
					<br/>
					<img style="width:280px" src="image/santiamen-logo-empresa-interno.png"/>
				</div>
				<div class="left-empresa-datos">
					<br/>
					<span><b style="font-size:17px">SANTIAMEN</b><span>&nbsp;&nbsp;&nbsp;&nbsp;CONTACT US!</span></span>
					<br/>
					<br/>
					<br/>
					<p style="color:000;font-size:10px;line-height:18px">
						A LA YA EXISTENTE LÍNEA DE HOMBRE SE LE SUMA UNA DE MUJER. PARA UNA MUJER AUDAZ, MODERNA Y CON SENTIDO DE LA MODA. MANEJAMOS AMPLIA GAMA DE HILADOS Y COLORES.
					</p>
					<hr/>
					<br/>
					<span class="seccion">TELEFONO:</span>
					<span>4613-7645 INT .2</span><br/>
					<span class="seccion">DIRECCIÓN:</span>
					<span>ARGERICH 265. FLORES. CABA.</span><br/>
					<span class="seccion">HORARIO:</span>
					<span>LUNES A VIERNES 8:30 - 17:30</span><br/>
					<span class="seccion">EMAIL:</span>
					<span>VENTAS@SANTIAMEN.COM.AR</span><br/><br/>
					<hr/>
					<br/>
					<span class="seccion">FACEBOOK:</span>
					<span>/santiamenjeans</span><br/>
					<div style="clear:both"></div>
				</div>
				<style type="text/css">
				span.seccion{
					display:inline-block;
					width:100px;
					line-height: 23px;
				}
				</style>
			</div>
			<div style="clear:both"></div>
			
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $footer;

		break;
		case "3": ?>
		
		<?php echo $header; ?>
		<div id="content" style="padding: 0;"><?php echo $content_top; ?>
			<div id="contact-top" style="border: none; height: auto;">
				<img src="image/como_comprar/banner.jpg"/>
			</div>
			<div id="como-comprar">
				<div class="how-to-buy">
					<div>
						<h3>Paso 1:</h3>
						<h4>Elige tus productos</h4>
						<p>Accede a nuestros productos a través del link de colección, deberás ingresar la cantidad que deseas comprar de cada producto, en cada color y en cada uno de los talles.  En la sección superior de nuestra página podrás ver los productos acumulados en tu carrito de compras.</p>
						<p>Puedes agregar o eliminar productos de tu carrito en cualquier momento antes de la confirmación definitiva de tu compra.</p>
					</div>
					<div>
						<h3>Paso 2:</h3>
						<h4>Revisa tu pedido</h4>
						<p>Cuando hayas terminado tu selección, debes ir al resumen del carrito, haciendo un click en la imagen del carrito de compras ubicado en el margen superior izquierdo. </p>
					</div>
					<div>
						<h3>Paso 3:</h3>
						<h4>REGISTRATE/ INICIA SESION.</h4>
						<p>En el caso que ya tengas usuario y contraseña, puedes ingresar con tus datos.  Si no estás registrado, deberás ingresar tus datos haciendo click en el botón REGISTRATE en el margen inferior izquierdo del recuadro.  </p>
					</div>
					<div>
						<h3>Paso 4:</h3>
						<h4>REVISIÓN Y CONFIRMACIÓN DEL PEDIDO.</h4>
						<p>Finalmente, el sistema emitirá un informe con los detalles de tu compra, cantidades y precios de los productos seleccionados, medio de pago y forma de envío seleccionada. Si estás de acuerdo con la información , confirma tu pedido y el sistema te enviará  por mail los detalles de tu compra.</p>
					</div>
				</div>
				<div class="left">
					<div class="guiones-flor-center"></div>
					<div class="img">
						<!--<a href="<?php echo $this->url->link('product/category');?>"><img src="image/nueva_coleccion.jpg" /></a>-->
					</div>
					<div class="img">
						<a href="https://www.facebook.com/Santiamen" target="_BLANK"><img src="image/followus.jpg" /></a>
					</div>
					<div class="separador-triangulos"></div>
					<div class="separador-corazon"></div>
					<div class="separador-triangulos"></div>
					<div class="separador-dibujitos"></div>
				</div>
				<div class="clear"></div>
			</div>
			<?php echo $content_bottom; ?>
		</div>
		<div id="content" class="faq" style="padding-top: 0;">
			<!--<div id="contact-top" style="border: none; height: auto;">
				<img src="image/preguntas_frecuentes/banner.jpg"/>
			</div>-->
			<div class="preguntas-frecuentes">
				<div class="consultas">
					<div class="faq_top"></div>
					<!-- <div class="consulta">
						<h3>Detalle de compra</h3>
						<p>Para comprar por mayor Ud. puede acercarse a nuestro showroom de la calle Neuquén 2788 (Flores). Tel.: 46376203 o 46114762. o bien realizar el pedido a través de nuestro sitio <a href="http://www.mimpi.com.ar" target="_blank">www.mimpi.com.ar</a></p>
						<p>COMPRA MINIMA $4000. A partir de $8000 desc. 20%</p>
					</div> -->
					<div class="consulta">
						<h3>Env&iacute;o de mercader&iacute;a</h3>
						<p>Las prendas compradas se pueden enviar a través del expreso / transporte que desee</p>
					</div>
					<div class="consulta">
						<h3>HORARIO DE ATENCIÓN</h3>
						<p>LUNES a VIERNES DE 9:00 a 18:00hs.</p>
					</div>
					<div class="consulta">
						<h3>INFO Y VENTAS</h3>
						<!-- <p>(011) 4611-4762 o 4637-6203</p> -->
						<p>ventas@santiamen.com.ar</p>
					</div>
					<div class="faq_bottom"></div>
					<div class="talles">
						<div>
							<h3 class="titulo">TABLA DE TALLES</h3>
							<div class="separador-flor-derecha"></div>
							<div class="separador-lineas"></div>
							<div class="clear"></div>
						</div>
						<div class="left-col">
							<p>Tabla referencial de recién nacido:</p>
							<ul>
								<li>Talle 1 de 3 a 6 meses</li>
								<li>Talle 2 de 6 a 9 meses</li>
								<li>Talle 3 de 9 a 12 meses</li>
								<li>Talle 4 de 12 a 18 meses</li>
							</ul>
							<p>Tabla referencial para bebé y beba</p>
							<ul>
								<li>Talle 3 : 1 a 2 años</li>
								<li>Talle 4: 2 a 3 años</li>
								<li>Talle 5: 3 a 4 años</li>
							</ul>
						</div>
						<div class="left-col">
							<p>Tabla referencial para niño y niña</p>
							<ul>
								<li>Talle 6: 4-5 años</li>
								<li>Talle 8: 6-7 años</li>
								<li>Talle 10: 8-9 años</li>
								<li>Talle 12: 10-11 años</li>
								<li>Talle 14: 12 años</li>
							</ul>
							<p>Tabla referencial de sweaters de niño y niña</p>
							<ul>
								<li>Talle S (Small): 4-6 años</li>
								<li>Talle M (Medium): 7-9 años</li>
								<li>Talle L (Large): 10-12</li>
							</ul>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="left">
					<!--<div class="img">
						<!--<a href="<?php echo $this->url->link('product/category');?>"><img src="image/nueva_coleccion.jpg" /></a>-->
					<!--</div>
					<div class="img">
						<a href="https://www.facebook.com/Mimpikids" target="_BLANK"><img src="image/followus.jpg" /></a>
					</div>
					<div class="separador-triangulos"></div>
					<div class="separador-corazon"></div>
					<div class="separador-triangulos"></div>-->
				</div>
				<div class="clear"></div>
			</div>
			<?php echo $content_top; ?>
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $footer;
		break;
		case "4":?>

			<?php echo $header; ?>
			<link rel="stylesheet" href="http://www.jacklmoore.com/colorbox/example1/colorbox.css">
			<script src="http://www.jacklmoore.com/colorbox/jquery.colorbox.js"></script>

			<div class="comoComprar">
				<div class="bannerlookbook">
					<div class="elementos">
						<div class="item" style="width:100px;"> <a href="index.php?route=information/request&path=5">WOMEN</a></div>
						<div class="item" style="font-weight:bold;">LOOKBOOK</div>
						<div class="item" style="float:right;"><a href="index.php?route=information/request&path=7">MEN</a>
						</div>
					</div>
					<div style="clear:both"></div>
				</div>
				<img src="image/lookbok3.jpg" style="width:100%" />

		<?php 	echo $footer; 
		break;
		case "7":
		case "5": ?>
			
		<?php echo $header; ?>

		<?php
			$banner0 = array();
			$banner1 = array();
			$banner2 = array();
			$banner3 = array();
			for ($i=1; $i < count($banner); $i++) { 
				eval('array_push($banner' . ($i % 4).',$banner['.$i.']);');
			}
		?>
		<link rel="stylesheet" href="http://www.jacklmoore.com/colorbox/example1/colorbox.css">
		<script src="http://www.jacklmoore.com/colorbox/jquery.colorbox.js"></script>

		<div class="comoComprar">
			<div class="bannerlookbook">
				<div class="elementos">
					<div class="item" style="width:100px;"> <a href="index.php?route=information/request&path=5">WOMEN</a></div>
					<div class="item" style="font-weight:bold;">LOOKBOOK</div>
					<div class="item" style="float:right;"><a href="index.php?route=information/request&path=7">MEN</a>
					</div>
				</div>
				<div style="clear:both"></div>
			</div>
			<img src="image/lookbok3.jpg" style="width:100%" />
			<br/>
			<script>
				$(function(){
					$('.blogItem img').colorbox();
				});
			</script>

			<div class="blog">
				<div class="column">
					<div class="blogItem" style="border:0px">
						<span class="description" style="display:block;margin-top:200px;font-family:MyriadProCond">
							<?php
							if($_GET["path"] == "7"){
								echo "MEN";
							}else{
								echo "WOMEN";
							}
							?>
						</span>
					</div>
					<?php
					for ($i=0; $i < count($banner0); $i++) { 
						?>
						<div class="blogItem">
							<img href="image/<?php echo $banner0[$i]["image"] ?>" width="210" src="image/<?php echo $banner0[$i]["image"] ?>"/>
							<span class="description" style="display:none"><?php echo $banner0[$i]["title"] ?></span>
						</div>
						<?php
					}
					?>
				</div>
				<div class="column">
					<?php
					for ($i=0; $i < count($banner1); $i++) { 
						?>
						<div class="blogItem">
							<img href="image/<?php echo $banner1[$i]["image"] ?>" width="210" src="image/<?php echo $banner1[$i]["image"] ?>"/>
							<span class="description" style="display:none"><?php echo $banner1[$i]["title"] ?></span>
						</div>
						<?php
					}
					?>
				</div>
				<div class="column">
					<?php
					for ($i=0; $i < count($banner2); $i++) { 
						?>
						<div class="blogItem">
							<img href="image/<?php echo $banner2[$i]["image"] ?>" width="210" src="image/<?php echo $banner2[$i]["image"] ?>"/>
							<span class="description" style="display:none"><?php echo $banner2[$i]["title"] ?></span>
						</div>
						<?php
					}
					?>
				</div>
				<div class="column">
					<?php
					for ($i=0; $i < count($banner3); $i++) { 
						?>
						<div class="blogItem">
							<img href="image/<?php echo $banner3[$i]["image"] ?>" width="210" src="image/<?php echo $banner3[$i]["image"] ?>"/>
							<span class="description" style="display:none"><?php echo $banner3[$i]["title"] ?></span>
						</div>
						<?php
					}
					?>
				</div>
				<div style="clear:both"></div>
			</div>
			<div id="footer_line" style="margin:10px 20px 0 20px; height:0px"></div>
			
			<div id="footer_line" style="margin:10px 20px 0 20px; height:0px"></div>
			<script type="text/javascript">
			  $("#mail_newsletter").click(function(){
			    $(this).val("");
			  });
			  
			  $(".enter").click(function() {
			    var email = $("#mail_newsletter").val();
			    
			    var parameters = {
			      'email' : email
			    };
			    
			    sendData("<?php echo $this->url->link('common/contactoGeneric/newsletter');?>",parameters,$("#newsletterResponse"), $(".newsletter"));
			  });
			</script>
		</div>
		<?php echo $footer; 
		break;
		case "8": ?>
		
		<?php echo $header; ?>
		<div id="content" class="faq" style="padding-top: 0;">
			<div id="contact-top" style="border: none; height: auto;">
				<img src="image/preguntas_frecuentes/banner.jpg"/>
			</div>
			<div class="preguntas-frecuentes">
				<div class="consultas">
					<div class="faq_top"></div>
					<!-- <div class="consulta">
						<h3>Detalle de compra</h3>
						<p>Para comprar por mayor Ud. puede acercarse a nuestro showroom de la calle Neuquén 2788 (Flores). Tel.: 46376203 o 46114762. o bien realizar el pedido a través de nuestro sitio <a href="http://www.mimpi.com.ar" target="_blank">www.mimpi.com.ar</a></p>
						<p>COMPRA MINIMA $4000. A partir de $8000 desc. 20%</p>
					</div> -->
					<div class="consulta">
						<h3>Env&iacute;o de mercader&iacute;a</h3>
						<p>Las prendas compradas se pueden enviar a través del expreso / transporte que desee</p>
					</div>
					<div class="consulta">
						<h3>HORARIO DE ATENCIÓN</h3>
						<p>LUNES a VIERNES DE 9:00 a 18:00hs.</p>
					</div>
					<div class="consulta">
						<h3>INFO Y VENTAS</h3>
						<p>(011) 4611-4762 o 4637-6203</p>
						<p>ventas@santiamen.com.ar</p>
					</div>
					<div class="faq_bottom"></div>
					<div class="talles">
						<div>
							<h3 class="titulo">TABLA DE TALLES</h3>
							<div class="separador-flor-derecha"></div>
							<div class="separador-lineas"></div>
							<div class="clear"></div>
						</div>
						<div class="left-col">
							<p>Tabla referencial de recién nacido:</p>
							<ul>
								<li>Talle 1 de 3 a 6 meses</li>
								<li>Talle 2 de 6 a 9 meses</li>
								<li>Talle 3 de 9 a 12 meses</li>
								<li>Talle 4 de 12 a 18 meses</li>
							</ul>
							<p>Tabla referencial para bebé y beba</p>
							<ul>
								<li>Talle 3 : 1 a 2 años</li>
								<li>Talle 4: 2 a 3 años</li>
								<li>Talle 5: 3 a 4 años</li>
							</ul>
						</div>
						<div class="left-col">
							<p>Tabla referencial para niño y niña</p>
							<ul>
								<li>Talle 6: 4-5 años</li>
								<li>Talle 8: 6-7 años</li>
								<li>Talle 10: 8-9 años</li>
								<li>Talle 12: 10-11 años</li>
								<li>Talle 14: 12 años</li>
							</ul>
							<p>Tabla referencial de sweaters de niño y niña</p>
							<ul>
								<li>Talle S (Small): 4-6 años</li>
								<li>Talle M (Medium): 7-9 años</li>
								<li>Talle L (Large): 10-12</li>
							</ul>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="left">
					<div class="img">
						<!--<a href="<?php echo $this->url->link('product/category');?>"><img src="image/nueva_coleccion.jpg" /></a>-->
					</div>
					<div class="img">
						<a href="https://www.facebook.com/Santiamen" target="_BLANK"><img src="image/followus.jpg" /></a>
					</div>
					<div class="separador-triangulos"></div>
					<div class="separador-corazon"></div>
					<div class="separador-triangulos"></div>
				</div>
				<div class="clear"></div>
			</div>
			<?php echo $content_top; ?>
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $footer; 
		break;
		case "6": ?>
		
		<?php echo $header; ?>
		
		<script type="text/javascript">
					
		 $(document).ready( function(){	
			$("#btnEnviar").click(function(){
				var name, email, tel, timestamp, text;
				
				name = $("#nombre").val();
				email = $("#email").val();
				tel = $("#tel").val();
				text = $("#mensaje").val();
				timestamp = $("#timeStamp").val();
				
				var parameters = {
					'name'	: name,
					'email'	: email,
					'tel'	: tel,
					'text'	: text,
					'timestamp'	: timestamp
				};
				
				sendData("<?php echo $this->url->link('common/contactoGeneric/enviar');?>",parameters,$("#emailSendResponse"), $("#contactForm"));
			});
		});

			function sendData(url,params,responseContainer, blockContainer){
				$(blockContainer).block({ message: '<h3><img src="image/busy.gif" />Enviando...</h3>',
											css: { padding: '30px 20px 20px 20px'}}); 
				$.ajax({
					url: url,
					type: "POST",
					data: params,
					success: function(datos) {
						$(responseContainer).html(datos);
						$(blockContainer).unblock(); 
					}
				});
			}	
		</script>
		
		<div id="content" class="faq" style="padding-top: 0;">
			<div id="contact-top" style="border: none; height: auto;display:none">
				<img src="image/contacto/banner.jpg"/>
			</div>
			<div id="contacto">
				
				<div class="left formulario">
					<h3 style=" border-bottom:1px solid #ccc; float:left;font-size:16px">¡CONTACTATE CON NOSOTROS!</h3>
					<br style="clear:both"/>
					<br/>
					<p style="color:#000; font-family:MyriadProCond;font-size:16px">
						Por consultas relacionadas con nuestra TIENDA ONLINE, <br/>ventas@santiamen.com.ar o llamanos al 4613-7645 / 7547.<br/>
						Pasá por nuestro local en Argerich 265. - Flores - Capital Federal.
					</p>
					<form class="contact-form" id="contactForm">
						<div id="emailSendResponse"></div>
						<input type="hidden" name="timeStamp" id="timeStamp" value="<?php echo time();?>"/>
						<div class="contact-field textarea">
							<label for="mensaje">Mensaje</label>
							<textarea id="mensaje"></textarea>
						</div>
						<div class="contact-field">
							<label for="nombre">Nombre</label>
							<input type="text" name="nombre" id="nombre" />
						</div>

						<div class="contact-field">
							<label for="email">E-mail</label>
							<input type="text" name="email" id="email"/>
						</div>
						<div class="contact-field">
							<label for="tel">Tel + cod. &aacute;rea</label>
							<input type="text" name="tel" id="tel"/>
						</div>
						<br/>
						<hr/>
						<br/>
						<div class="contact-buttons">
							<input class="send-input" id="btnEnviar" type="button" value="ENVIAR" style="background:black; color:#f2f2f2; cursor:pointer;width:200px" />
							<div class="clear"></div>
						</div>
					</form>
				</div>
				<div class="clear"></div>
			</div>
			<?php echo $content_top; ?>
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $footer;
		break;
		case "9":
		?>
		<?php echo $header; ?>
		<br/>
		<div class="lookbook">
			<?php
			for ($i=0; $i < count($banner); $i++) { 
				?>
				<div class="elemento">
					<img src="image/<?php echo $banner[$i]["image"]?>"/>
				</div>
				<?php
			}
			?>
			<div style="clear:both"></div>
		</div>

		<?php
		echo $footer;
		break;
	}
}else{ ?>

	<?php echo $header; ?>
  
	<?php echo $footer;


 } ?>
 </div>
 
 
 
 
 