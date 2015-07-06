<?php echo $header; ?>
<!--<img class="category-header-image" alt="Mimpi" src="image/coleccion/banner.jpg" width="100%" />-->
<?php echo $column_left; ?><?php echo $column_right; ?>
<script>
	$('#column-left').css('height',551);
	$('#column-left').css('width',194);
	$('#column-left').css('margin-bottom',30);
	$('.box-content').prepend("shop the collection<br/>");
	$('#column-left').css('font-family',"TravelingTypewriter");
</script>
<div id="content" style="min-height: 590px;"><?php echo $content_top; ?>
	
    <?php 
	
	{

		if (isset($this->request->get['path']) && !empty($this->request->get['path'])) {
			$parts = explode('_', (string) $this->request->get['path']);
			if (count($parts) == 1)
			{
				$showProducts = true;
				switch ($parts[0])
				{
					case 1:
						header("Location:index.php?route=product/category&path=1_36");
					break;
					case 2:
						header("Location:index.php?route=product/category&path=2_46");
					break;
					case 3:
						header("Location:index.php?route=product/category&path=3_49");
					break;
					case 4:
						header("Location:index.php?route=product/category&path=4_41");
					break;
					case 57:
						header("Location:index.php?route=product/category&path=57_30");
					break;
				}

			}
			else
			{
				$showProducts = true;
			}
		}
		else
		{
			?>

			<?php foreach ($banners as $banner) { ?>

				<a href="<?php echo $banner['link']; ?>">
					<img  width='382' src="image/<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
				</a>

			<?php
			}
			
			$showProducts = false;
		}


		if ($products && $showProducts) { ?>
	    <div class="product-list">
	        <?php foreach ($products as $product) { ?>
	        <div>
	            <?php if ($product['thumb']) { ?>
	            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
	            <?php } ?>
	            <div class="name"><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" ><?php echo $product['name']; ?></a></div>
	            <?php if ($product['price']) { ?>
	            <div class="price">
	                <?php if (!$product['special']) { ?>
	                <?php echo $product['price']; ?>
	                <?php } else { ?>
	                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
	                <?php } ?>
	            </div>
	            <div class="detail"><a href="<?php echo $product['href']; ?>"><?php echo $text_view_detail; ?></a></div>
	            <?php } ?>
	            <div class="cart">
	                <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button add-to-cart" />
	            </div>
	        </div>
	        <?php } ?>
	    </div>
	    <div class="pagination"><?php echo $pagination; ?></div>
	    <?php } 
	}?>
    <?php if (!$categories && !$products) { ?>
    <div class="content"><?php echo $text_empty; ?></div>
    <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
    </div>
    <?php } ?>
    <?php echo $content_bottom; ?></div>
	<div class="category_slider" style="display: none !important;">
		<div id="simple-slider">
			<?php foreach ($banners_slider as $banner) { ?>
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
	<div class="productBox first">

	</div>
	<div class="productBox">

	</div>
	<div class="productBox">

	</div>
	<div class="productBox">

	</div>
<script type="text/javascript">
 $(document).ready( function(){	
	$('#simple-slider div:gt(0)').hide();
    setInterval(function(){
      $('#simple-slider div:first-child').fadeOut(0)
         .next('div').fadeIn(2000)
         .end().appendTo('#simple-slider');}, 4000);
		 
	$("#column-left").append($(".category_slider"));
	//$(".category_slider").show();
});
</script>
<script type="text/javascript">
function display(view) {
    $('.product-list').attr('class', 'product-grid <?php echo $grid_class; ?>');
	$('.product-grid > div').each(function(index, element) { 
	
        html = '';

        var image = $(element).find('.image').html();
	console.log(image);
		
        if (image != null) {
			var imgParts = image.split(">");
			
			var CadenaGris = imgParts[1].split("data/");
			
			var idGris = CadenaGris[1].split("-");
			
			var ImageName = imgParts[0] +">"+imgParts[1]+">"+imgParts[2]+">";
			var StatusDisplayOver = "$('#detail"+idGris[0]+"').show()";
			var StatusDisplayOut = "$('#detail"+idGris[0]+"').hide()";
			
			html += "<div class='detail' onmouseover="+StatusDisplayOver+"; onmouseout="+StatusDisplayOut+" style='z-index:1500; opacity:.7;' id='detail"+idGris[0]+"'>" + $(element).find('.detail').html() + '</div>';
			html += "<div class='image' onmouseover="+StatusDisplayOver+"; onmouseout="+StatusDisplayOut+">"+ ImageName + '</div>';
			
        }
        html += '<div class="name" style="text-align:center;">' + $(element).find('.name').html() + '</div>';
        //html += '<div class="description">' + $(element).find('.description').html() + '</div>';

        var price = $(element).find('.price').html();

        if (price != null) {
            html += '<div class="price">' + price  + '</div>';
        }

        var rating = $(element).find('.rating').html();
        if (rating != null) {
            //html += '<div class="rating">' + rating + '</div>';
        }

        //html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
        //html += '<div class="product-shadow"></div>';
		$(element).html(html);
    });
    $('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
}

display('grid');

</script> 
<?php echo $footer; ?>