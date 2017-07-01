<div class="page_warpper">
	<div class="container">
		<div class="bc_wrapper"><?php echo $this->breadcrumbs->show(); ?></div>
	</div>

	<div class="container page_detail">
		<div class="page_news_wrapper">
			<?php foreach ($news as $n): ?>
				<div class="col-lg-12 page_news" style="padding: 0">
					<div class="row">
						<div class="col-md-4 news_img" style="text-align: center;">
							<img class="img-fluid" src="assets/uploads/post/<?php echo $n['img'] ?>" alt="">
						</div>
						<div class="col-md-8  news_header">
							<div class="news_header_wp">
								<div class="name"><?php echo $n["name_$this->language"]; ?></div>
								<div class="sdetail"><?php echo $n["sdetail_$this->language"]; ?></div>
								<div class="read_more" data-href="<?php echo $this->language.'/news-detail/'.$n['post_id'].'-'.$n["slug_$this->language"].'.html'; ?>"></div>
							</div>
						</div>
					</div>
				</div>
			<?php endforeach ?>
		</div>
		<div class="page_pagination">
			<?php echo $pagination; ?>
		</div>
	</div>
</div>

<script>
	$('.li-news').addClass('menu_active');
	$('.page_news:nth-child(2n) .news_img').addClass('push-md-8');
	$('.page_news:nth-child(2n) .news_header').addClass('pull-md-4');

	$(document).on('click','.read_more',function()
	{
		var href = $(this).data('href');
		window.location.href=href;
	});

</script>