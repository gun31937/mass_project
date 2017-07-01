<div class="page_warpper">
	<div class="container">
		<div class="bc_wrapper"><?php echo $this->breadcrumbs->show(); ?></div>
		<div class="page_detail object_detail row">
			<?php if ($data->cover_img != ''): ?>
				<div class="d-flex justify-content-sm-center justify-content-lg-start col-lg-4">
					<img class="img-fluid" src="assets/uploads/post/<?php echo $data->cover_img; ?>" alt="">
				</div>
			<?php endif ?>

			<div class="page_detail_name col-lg-7 offset-lg-1">
				<p class="ob_detail_name"><?php echo $name ?></p>
				<?php echo $detail; ?>
			</div>
		</div>
	</div>
</div>



<script>
	$('.li-object').addClass('menu_active');
</script>