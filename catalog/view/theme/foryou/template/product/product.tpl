<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right;


 ?>
<script>
  $('#column-left').css('height',551);
  $('#column-left').css('width',194);
  $('#column-left').css('margin-bottom',30);
  $('.box-content').prepend("shop the collection");
</script>


<div id="content" style="padding-top: 0px; margin-left: 0;"><?php echo $content_top; ?>
  <div class="product-info">
    <?php if ($thumb || $images) { ?>
    <div class="left" style="border: none;">
      <?php if ($thumb) { ?>
       <div class="zoom-section"> 
      <div class="zoom-small-image"><a href="<?php echo $popup; ?>" class = 'cloud-zoom' id='zoom1' rel="adjustX: 10, adjustY:-4" title="<?php echo $heading_title; ?>" class="colorbox" rel="colorbox"><img style="border: 1px solid #CCC;" width="380" height="545" src="<?php echo $thumb; ?>" id="image"  /></a></div>
      </div>
      <?php } ?>
      <?php if ($images) { ?>
      <div class="image-additional">
        <?php foreach ($images as $image) { ?>
        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="colorbox"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
        <?php } ?>
      </div>
      <?php } ?>
    </div>
    <?php } ?>
    <div class="left" style="border: none; margin-top: 15px; width: 325px;">
      <div class="title"><?php echo $heading_title; ?></div>
      <div class="detail">
          <?php echo $description; ?>
      </div>
      <div class="description" style="display:none">
        <span class="cod_title">C&oacute;digo de art&iacute;culo</span> <span class="cod"><?php echo $model; ?></span>
      </div>
      <?php if ($price) { ?>
      <div class="price"><!-- <span class="price_text"><?php echo $text_price; ?></span> -->
        <?php if (!$special) { ?>
        <span class="price_span"><?php echo $price; ?></span>
        <?php } else { ?>
        <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
        <?php } ?>
        <br />
      </div>
      <?php } ?>
      <?php if ($colores) { ?>
      <div class="price"><span class="price_text">Colores</span>
        <span class="price_span" style="display:block; border:1px solid #000"><img src="image/<?php echo $colores; ?>"/></span>
      </div>
      <?php } ?>
      <?php if ($options) { ?>
          <input type="hidden" name="quantity" id="cantidadParaAgregar"/>
          <div class="price" style="border: none;"><span class="price_text">Talles</span>
            <table class="TallesYColores">
                <tr>
                  <!-- <td>
                    Color/Talle
                  </td> -->
                  <?php 
                  foreach ($tallesDisponibles["option_value"] as $talles) {
                    ?>
                      <td>
                        <?php
                          echo $talles["name"];
                        ?>
                      </td>
                      
                  <?php 
                  }
                  ?>
                </tr>
                <?php 
                  //foreach ($coloresDisponibles["option_value"] as $colores) {
                  ?>
                    <tr>
                      <!--td style="text-align: center;">
                        <?php
                          if ($colores["image"]){
                            echo ("<img src='image/". $colores["image"] ."' style='width: 20px; height: 20px;'/>");
                          } else {
                            echo ('<div style="width: 20px; height: 20px; background: #' . $colores["name"] .'"></div>');
                          }
                        ?>
                      </td-->
                      <?php 
                        foreach ($tallesDisponibles["option_value"] as $talles) {
                          ?>
                            <td>
                              <div>
                                <input class="input_cantidad" type="text"
                                talle="<?php echo $talles["product_option_value_id"]; ?>" 
                                name="quantity-per-color-talle"
                                color="<?php echo $colores["product_option_value_id"]; ?>" size="2" value="0" style="width: 75%;"/>
                              </div>
                              <?php
                                //echo " Color imagen: " . $colores["name"] . $colores["image"];
                              ?>
                            </td>
                            
                        <?php 
                        }
                      ?>

                    </tr>
                  <?php
                    //}
                  ?>
           </table>
           <?php if($anterior > 0){?>
              <a href="<?php echo $this->url->link('product/product');?>&path=<?php echo $_GET['path']?>&product_id=<?php echo $anterior?>">Anterior</a>
           <?php
            }
            if($siguiente > 0){
            ?>
              <a href="<?php echo $this->url->link('product/product');?>&path=<?php echo $_GET['path']?>&product_id=<?php echo $siguiente?>">Siguiente</a>
           <?php
            }
            ?>
          </div>
        <div class="options" >
          <?php foreach ($options as $option) { 
              // solo imprimo el color
              if($option['name'] != 'Color'){
                continue;
              }
            ?>
          <?php if ($option['type'] == 'select') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <select name="option[<?php echo $option['product_option_id']; ?>]">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
              </option>
              <?php } ?>
            </select>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'radio') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
            </label>
            <br />
            <?php } ?>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'checkbox') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <span class="talle"><?php echo $option['name']; ?>:</span><br />
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
            </label>
            <?php } ?>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'image') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <table class="option-image">
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <tr>
                <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label></td>
              </tr>
              <?php } ?>
            </table>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'text') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'textarea') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'file') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'date') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'datetime') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'time') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
          </div>
          <br />
          <?php } ?>
          <?php } ?>
        </div>
      <?php } ?>
      <?php if ($attribute_groups) { ?>
      <div class="attributes">
        <table class="attribute" cellspacing="2px">
        <?php foreach ($attribute_groups as $attribute_group) { ?>
        <?php if ($attribute_group['attribute_group_id'] == $size_attr_group_id) { ?>
        <thead>
            <tr>
            <td colspan="5"><?php echo $attribute_group['name']; ?></td>
            </tr>
        </thead>
        <tbody>
            <tr>
            <?php foreach ($sizes_attributes as $size_attribute) { ?>
            <?php if (in_array($size_attribute, $attribute_group['attribute'])) { ?>
            <td class="active"><?php echo $size_attribute; ?></td>
            <?php } else { ?>
            <td><?php echo $size_attribute; ?></td>
            <?php } ?>
            <?php } ?>
            </tr>
        </tbody>
        <?php } ?>
        <?php } ?>
        </table>
      </div>
      <?php } ?>
      <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
      <div class="cart">
        <!--<div><span class="cantidad"><?php echo $text_qty; ?></span>
          <input class="input_cantidad" type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
          &nbsp;
        </div>-->
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>
      <div class="comprar_boton">
    <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button" />
      </div>
    <?php if(isset($bannerProductInfo) && count($bannerProductInfo) > 0){ ?>
    <div class="abajodeaceptar">
      <img width="100%" height="100%" href="<?php echo $bannerProductInfo[0]["link"] ?>" src="image/<?php echo $bannerProductInfo[0]["image"] ?>" />
    </div>
    <?php
    } ?>
<div id="tabs" class="htabs">
    <?php if ($products) { ?>
    <a href="#tab-related" style="text-transform:uppercase;display:block;line-height:40px"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</a>
    <?php } ?>
  </div>
  <?php if ($products) { ?>
  <div id="tab-related" class="tab-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><?php echo $button_cart; ?></a></div>
      <?php } ?>
    </div>
  </div>
  <?php } ?>


    <div class="review">
    <div class="share"><!-- AddThis Button BEGIN -->
      <div class="addthis_default_style"><a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
      <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
      <!-- AddThis Button END --> 
      <div class="clear"></div>
      </div>
      </div>
    </div>
  </div>
  
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
  overlayClose: true,
  opacity: 0.5
});
//--></script> 
<script type="text/javascript"><!--

function ValorCheckbox(sNum){
  /*if ($("#quantity-"+sNum).val() == ""){
    $('#checkbox-'+sNum).attr('checked', false);
  }else{
    $('#checkbox-'+sNum).attr('checked', true);
  }*/
  /*if($("#checkbox-"+sNum).is(':checked')) {  
    alert("Está activado");  
  } else {  
    alert("No está activado");  
  } */
}

function TryParseInt(str,defaultValue) {
     var retValue = defaultValue;
     if(str !== null) {
         if(str.length > 0) {
             if (!isNaN(str)) {
                 retValue = parseInt(str);
             }
         }
     }
     return retValue;
}

$('#button-cart').click(function() {

  $.each( $(".input_cantidad"), function(){
    if (TryParseInt($(this).val(), null)) {
        $("#option-value-" + $(this).attr("talle")).attr("checked", true);      
        $("#option-value-" + $(this).attr("color")).attr("checked", true);
        $("#cantidadParaAgregar").val($(this).val());
        $.ajax({
          url: 'index.php?route=checkout/cart/add',
          type: 'post',
          data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
          dataType: 'json',
          error:  function(json) {
            alert(json.responseText);
          },
          success: function(json) {
            $('.success, .warning, .attention, information, .error').remove();
            
            if (json['error']) {
              if (json['error']['option']) {
                for (i in json['error']['option']) {
                  $('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
                }
              }
            } 
            
            if (json['success']) {
              $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
                
              $('.success').fadeIn('slow');
                
              $('#cart-total').html(json['total']);
              
              $('html, body').animate({ scrollTop: 0 }, 'slow'); 
            } 
          }
        });      
      } 
  });
  return;
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
  action: 'index.php?route=product/product/upload',
  name: 'file',
  autoSubmit: true,
  responseType: 'json',
  onSubmit: function(file, extension) {
    $('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
    $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
  },
  onComplete: function(file, json) {
    $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
    
    $('.error').remove();
    
    if (json['success']) {
      alert(json['success']);
      
      $('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
    }
    
    if (json['error']) {
      $('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
    }
    
    $('.loading').remove(); 
  }
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
  $('#review').fadeOut('slow');
    
  $('#review').load(this.href);
  
  $('#review').fadeIn('slow');
  
  return false;
});     

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
  $.ajax({
    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
    type: 'post',
    dataType: 'json',
    data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
    beforeSend: function() {
      $('.success, .warning').remove();
      $('#button-review').attr('disabled', true);
      $('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
    },
    complete: function() {
      $('#button-review').attr('disabled', false);
      $('.attention').remove();
    },
    success: function(data) {
      if (data['error']) {
        $('#review-title').after('<div class="warning">' + data['error'] + '</div>');
      }
      
      if (data['success']) {
        $('#review-title').after('<div class="success">' + data['success'] + '</div>');
                
        $('input[name=\'name\']').val('');
        $('textarea[name=\'text\']').val('');
        $('input[name=\'rating\']:checked').attr('checked', '');
        $('input[name=\'captcha\']').val('');
      }
    }
  });
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
  $('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
  dateFormat: 'yy-mm-dd',
  timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});


//--></script> 
<?php echo $footer; ?>