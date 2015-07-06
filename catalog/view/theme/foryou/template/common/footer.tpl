<script type="text/javascript">
			
 $(document).ready( function(){	
	$("#btnSend").click(function(){
		var name, email, timestamp, text;
		
		name = $("#nombre").val();
		email = $("#mail_contacto").val();
		text = $("#consulta").val();
		timestamp = $("#timeStamp").val();
		
		var parameters = {
			'name'	: name,
			'email'	: email,
			'text'	: text,
			'timestamp'	: timestamp
		};
		
		sendData("<?php echo $this->url->link('common/contactoGeneric/enviar');?>",parameters,$("#emailSendResponse"), $("#contactForm"));
	});
	
	$("#mail_newsletter").click(function(){
		$(this).val("");
	});
	
	$(".enter").click(function() {
		var email = $("#mail_newsletter").val();
		
		var parameters = {
			'email'	: email
		};
		
		sendData("<?php echo $this->url->link('common/contactoGeneric/newsletter');?>",parameters,$("#newsletterResponse"), $(".newsletter"));
	});
	
});

	function sendData(url,params,responseContainer, blockContainer){
		/*$(blockContainer).block({ message: '<h3><img src="image/busy.gif" />Enviando...</h3>',
									css: { padding: '30px 20px 20px 20px'}}); */
		$.ajax({
			url: url,
			type: "POST",
			data: params,
			success: function(datos) {
				alert('Gracias!\nHemos registrado tu mail con éxito!\nProximamente, recibirás las novedades!');
				//$(responseContainer).html(datos);
				//$(blockContainer).unblock(); 
			}
		});
	}	
</script>
<div style="clear:both"></div>
<div id="footer" style="margin-top:20px; padding: 0 0px;background:rgb(248, 249, 244)">

<div style="border: 1px solid black; margin-bottom: 20px; height: 80px;">
	
	<div class="contact-footer">
		<div class="newsletter left">
			<h3 style="line-height:30px"><img src="image/logo.png" style="margin-top:-8px"/></h3>
			
		</div>
		<div class="contact left">
			<a href="https://www.facebook.com/santiamenjeans" target="_blank" style="text-decoration:none"><h3><img style="margin-bottom: -5px;" src="image/facebook.jpg"/>facebook</h3></a>
		</div>
		<div class="follow left">
			<h3><img style="margin-bottom: -5px;" src="image/message.png"/>newsletter <input type="text" value="Ingres&aacute; tu email aqu&iacute;" name="mail" id="mail_newsletter" class="input-text"/> <div class="enter">&nbsp;></div></h3>
				<div id="newsletterResponse"></div>

			</div>
	</div>
</div>
<div class="fooooter">
	<span class="izq">SANTIAMEN 2015</span>
	<span class="der">
		<a href="http://www.whif.com.ar/" target="_BLANK" style="text-decoration:none">
			WHIF MEDIA GROUP
			<span class="whif-logo"></span>
		</a>
	</span>
	<span class="cen">
		<a href="index.php?route=information/request&path=2">EMPRESA</a> | <a href="index.php?route=product/category&path=53">WOMEN</a> | <a href="index.php?route=product/category&path=54">MEN</a> | <a href="index.php?route=information/request&path=5">LOOKBOOK</a>  | <a href="index.php?route=information/request&path=6">CONTACTO</a>
	</span>
</div>
<div style="clear:both"></div>


</div>

</body>
</html>