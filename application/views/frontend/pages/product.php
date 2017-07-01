<div class="page_warpper">
	<div class="container">
		<div class="bc_wrapper"><?php echo $this->breadcrumbs->show(); ?></div>
	</div>

	<div class="container page_detail">
		<div class="page_news_wrapper">
			<div class="row">
				<?php foreach ($product as $n): ?>
					<div class="col-lg-3 col-md-4 col-sm-6 col-6 page_product" data-href="<?php echo $this->language.'/product/'.$n['product_cate_id'].'-'.$n["slug_$this->language"]; ?>">
						<img class="img-fluid" src="assets/uploads/product_category/<?php echo $n['img'] ?>" alt="">
						<div class="product_name d-flex align-items-center justify-content-center">
								<?php echo $n["name_$this->language"]; ?>
						</div>
					</div>
				<?php endforeach ?>
			</div>
		</div>
	</div>
</div>

<script>
	$('.li-product').addClass('menu_active');

	$(document).on('click','.page_product',function()
	{
		var href = $(this).data('href');
		window.location.href=href;
	});

</script>