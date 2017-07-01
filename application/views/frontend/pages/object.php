<div class="page_warpper">
	<div class="container">
		<div class="bc_wrapper"><?php echo $this->breadcrumbs->show(); ?></div>
	</div>

	<div class="container page_detail">
		<div class="page_news_wrapper">

			<div class="ob_header">
				<h1>Object</h1>
				<h2><?php echo $cate; ?></h2>
			</div>
			
			<?php if ($object_des != ''): ?>
				<div class="ob_des">
					<?php echo $object_des; ?>
				</div>
			<?php endif ?>

			<div class="row">
				<?php foreach ($object as $n): ?>
					<div class="col-lg-3 col-md-4 col-sm-6 page_object" data-href="<?php echo $this->language.'/'.$link_path.'/'.$n[$pk].'-'.$n["slug_$this->language"].$link_suffix; ?>">
						<img class="img-fluid" src="assets/uploads/<?php echo $img_path; ?>/<?php echo $n['img'] ?>" alt="">
						<div class="object_name"><?php echo $n["name_$this->language"]; ?></div>
					</div>
				<?php endforeach ?>
			</div>

		</div>
	</div>
</div>

<script>
	$('.li-object').addClass('menu_active');

	$(document).on('click','.page_object',function()
	{
		var href = $(this).data('href');
		window.location.href=href;
	});

</script>