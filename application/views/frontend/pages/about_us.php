<div class="page_warpper">
	<div class="container">
		<div class="bc_wrapper"><?php echo $this->breadcrumbs->show(); ?></div>
		<?php if ($cover_img != ''): ?>
			<img class="img-fluid" src="assets/uploads/pages/<?php echo $cover_img ?>" alt="">
		<?php endif ?>
		<h1 class="h1_header"><?php echo 'All about oleest' ?></h1>
		<div class="page_detail"><?php echo $data; ?></div>
	</div>
</div>



<script>
	$('.li-aboutus').addClass('menu_active');
</script>