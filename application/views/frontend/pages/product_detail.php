<div class="page_warpper">
	<div class="container">
		<div class="bc_wrapper"><?php echo $this->breadcrumbs->show(); ?></div>
	</div>

	<div class="container page_detail">
		<div class="page_news_wrapper">
			<div class="row">
				<div class="col-lg-7">
					<div class="row" style="padding-top: 0">
						<div class="col-lg-12">
							<div class="step_border step_wrap">
								<img class="step" src="assets/img/s1.png" alt="">
								<select name="" class="product_cate_select ">
									<?php foreach ($cate as $c): ?>
										 <option <?php echo ($c['product_cate_id'] == $id)? 'selected' : ''; ?> value="<?php echo $c['product_cate_id'].'-'.$c["slug_$this->language"] ?>"><?php echo $c["name_$this->language"] ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="step_border step_wrap">
								<div class="step_header">
									<img class="step" src="assets/img/s2.png" alt="">
									BASIC
									<i class="fa fa-angle-double-down tg_navi" aria-hidden="true"></i>
								</div>
								<div class="row product_area">
									<?php foreach ($product as $r): ?>
										<div class="col-md-2 col-sm-3 col-4">
											<img class="img-fluid" src="assets/uploads/product/<?php echo $r['img'] ?>" alt="" data-id="<?php echo $r['product_id']; ?>" data-type="product">
										</div>
									<?php endforeach ?>	
								</div>
							</div>
						</div>
					</div>
					<?php if ($product_sub_count > 0): ?>
						<div class="row">
							<div class="col-lg-12">
								<div class="step_wrap" style="padding-bottom: 30px;">
									<div class="step_header">
										<img class="step" src="assets/img/s3.png" alt="">
										SCHEIBE 
										<i class="fa fa-angle-double-down tg_navi" aria-hidden="true"></i>
									</div>
									<div class="row product_area">
										<?php foreach ($product_sub as $r): ?>
											<div class="col-md-2 col-sm-3 col-4">
												<img class="img-fluid" src="assets/uploads/product/<?php echo $r['img'] ?>" alt="" data-id="<?php echo $r['product_sub_id']; ?>" data-type="product_sub">
											</div>
										<?php endforeach ?>	
									</div>
								</div>
							</div>
						</div>
					<?php endif ?>
				</div>
				<div class="col-lg-5 preview_result" style="display: none;">
					<div class="row">
						<div class="col-lg-12">
							<!-- <div class="product_preview d-flex justify-content-center"> -->
							<div class="product_preview">
								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="row product_review_detail basic" style="padding-top: 30px;">
								<div class="col-md-3 col-sm-3 header">Basic :</div>
								<div class="col-md-9 col-sm-9 detail"></div>
							</div>
						</div>
					</div>
					<?php if ($product_sub_count > 0): ?>
						<div class="row">
							<div class="col-lg-12">
								<div class="row product_review_detail scheibe" style="padding-top: 15px;">
									<div class="col-md-3 col-sm-3 header">scheibe :</div>
									<div class="col-md-9 col-sm-9 detail"></div>
								</div>
							</div>
						</div>
					<?php endif ?>
					<div class="row">
						<div class="col-lg-12">
							<div class="product_contact">
								contact us
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	$('.li-product').addClass('menu_active');

	$(document).ready( function() {
		$('.product_cate_select').on('change', function(){

			var lang = '<?php echo $this->language ?>';
		 	var link = $(this).val();
		 	window.location.href=lang+'/product/'+link;
		});

		var lang = '<?php echo $this->language; ?>';

		function get_product_data(type,id){
			$.post(lang+'/get_product_data', {type: type, id: id}, function(data) {

				$('.product_area img[data-id="'+id+'"][data-type="'+type+'"]').addClass('product_active');

				if (data.result == 'true') {
					$('.product_preview img[data-type="'+data.type+'"]').remove();
					$('.preview_result').show();

					var z_index = 0;

					var detail = data.detail+'*<br>Item No. '+data.code;

					if (data.type != 'product') {
						z_index = 500;
						$('.scheibe .detail').html(detail);
						
					}
					else {
						$('.basic .detail').html(detail);
					}

					var preview = '<img src="assets/uploads/product/'+data.cover_img+'" data-id="'+data.id+'" data-type="'+data.type+'" style="z-index:'+z_index+';">';
					$('.product_preview').append(preview);
					// console.log(data);
				}
				
			},'json');
		}

		var product_one = '<?php echo $product_one; ?>';
		get_product_data('product',product_one);

		$('.product_area img').on('click', function() {

			var type = $(this).data('type');
			var id   = $(this).data('id');

			$('.product_area img[data-type="'+type+'"]').removeClass('product_active');

			get_product_data(type,id);

		})
	});


	$('.step_header').on('click', function() {
		$(this).parent('div').find('.product_area').slideToggle(200);
		$(this).parent('div').find('.tg_navi').toggleClass('fa-angle-double-down fa-angle-double-up');
	});

	$('.product_contact').on('click', function() {

		var lang = '<?php echo $this->language; ?>';
		window.location.href=lang+'/contact-us.html';
		
	});
</script>