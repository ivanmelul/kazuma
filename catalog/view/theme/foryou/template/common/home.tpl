<?php echo $header; ?>
<script type="text/javascript">
 /*$(document).ready( function(){	
	$('#simple-slider div:gt(0)').hide();
    setInterval(function(){
      $('#simple-slider div:first-child').fadeOut(0)
         .next('div').fadeIn(2000)
         .end().appendTo('#simple-slider');}, 4000);
});*/
</script>
<script>
  $(function() {
    $(".rslides").responsiveSlides({
	  auto: true,
	  timeout: 4000,
	  speed: 500,
	  nav: true,
	  pager: false,
	  namespace: "centered-btns"
	});
  });
</script>
<div id="content">
    <h1 style="display: none;"><?php echo $heading_title; ?></h1>
    <table width="100%" cellspacing="0px" id="home-table">
        <tbody>
            <tr>
                <td style="padding-bottom: 15px;">
                	<ul class="rslides centered-btns">
                		<?php foreach ($bannerPrincipal as $banner) { ?>
                			<li>
		                		<a href="<?php echo $banner['link']; ?>" alt="<?php echo $banner['title']; ?>">
									<img src="image/<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>">
								</a>
		                	</li>
                		<?php } ?>
					</ul>
					<a href="#" style="display:none" class="centered-btns_nav centered-btns1_nav prev">Previous</a>
					<a href="#" style="display:none" class="centered-btns_nav centered-btns1_nav next">Next</a>
                </td>
            </tr>
        </tbody>
    </table>
	<div class="home-images">
		<div class="left visualizador">
			<div id="simple-slider">
				<?php foreach ($banners as $banner) { ?>
				<div>
					<?php if ($banner['link']) { ?>
						<a href="<?php echo $banner['link']; ?>" alt="<?php echo $banner['title']; ?>">
							<img src="image/<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>">
						</a>
					<?php } else { ?>
							<img src="image/<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>">
					<?php } ?>
				</div>
				<?php } ?>
			</div>
		</div>
		<div class="left images">
			<div class="left varones">
				<?php 
				if(count($bannerHome1) > 0){
				?>
            		<a href="<?php echo $bannerHome1[0]['link']; ?>" alt="<?php echo $bannerHome1[0]['title']; ?>">
						<img src="image/<?php echo $bannerHome1[0]['image']; ?>" alt="<?php echo $bannerHome1[0]['title']; ?>">
					</a>
    			<?php 
        		}
        		?>
			</div>
			<div class="clear"></div>
			<div class="bebe">
				<?php 
				if(count($bannerHome2) > 0){
				?>
            		<a href="<?php echo $bannerHome2[0]['link']; ?>" alt="<?php echo $bannerHome2[0]['title']; ?>">
						<img src="image/<?php echo $bannerHome2[0]['image']; ?>" alt="<?php echo $bannerHome2[0]['title']; ?>">
					</a>
    			<?php 
        		}
        		?>
			</div>
			<div class="bebe">
				<?php 
				if(count($bannerHome3) > 0){
				?>
            		<a href="<?php echo $bannerHome3[0]['link']; ?>" alt="<?php echo $bannerHome3[0]['title']; ?>">
						<img src="image/<?php echo $bannerHome3[0]['image']; ?>" alt="<?php echo $bannerHome3[0]['title']; ?>">
					</a>
    			<?php 
        		}
        		?>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>
    <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>