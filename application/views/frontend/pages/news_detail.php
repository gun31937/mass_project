<div class="page_warpper">
	<div class="container">
		<div class="bc_wrapper"><?php echo $this->breadcrumbs->show(); ?></div>
		<?php if ($data->cover_img != ''): ?>
			<img class="img-fluid" src="assets/uploads/post/<?php echo $data->cover_img ?>" alt="">
		<?php endif ?>
		<h1 class="h1_header"><?php echo $name ?></h1>
		<div class="page_detail"><?php echo $detail; ?></div>
	</div>
</div>



<script>
	$('.li-news').addClass('menu_active');
</script>