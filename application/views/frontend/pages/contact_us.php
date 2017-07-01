<div class="page_warpper">
	<div class="container">
		<div class="bc_wrapper"><?php echo $this->breadcrumbs->show(); ?></div>
		<div class="row">
			<div class="col-md-5">
				<h1 class="h1_header mt0" style="font-size: 1.5em;"><?php echo 'Contact us at' ?></h1>
				<div class="page_detail" style="padding: 0;"><?php echo $data; ?></div>
				<div class="gmap_wrap">
					<a href="#gmap" class="gmap" data-toggle="modal">GET DIRECTIONS</a>
				</div>
			</div>
			<div class="col-md-7">
				<h1 class="h1_header mt0" style="font-size: 1.5em;"><?php echo 'message us' ?></h1>
				<?php echo form_open($this->language.'/send_contact_msg',[ 'id' => 'contact_msg', 'class' => '' ]); ?>
					<div class="ct_wrapper">
						<div class="col-md-12 ct_form" style="padding: 0;"> 
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="fname"><?php echo lang('fname') ?></label>
										<input type="text" class="form-control" id="fname" name="fname"  required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="fname"><?php echo lang('lname') ?></label>
										<input type="text" class="form-control" id="lname" name="lname"  required>
									</div>
								</div>
								<div class="col-md-6 form_email">
									<div class="form-group">
										<label for="fname"><?php echo lang('email') ?></label>
										<input type="email" class="form-control" id="email" name="email"  required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="fname"><?php echo lang('phone') ?></label>
										<input type="text" class="form-control" id="phone" name="phone"  required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="fname"><?php echo lang('subject') ?></label>
										<input type="text" class="form-control" id="subject" name="subject" required>
									</div>
								</div>  
						     </div>
							<div class="form-group">
								<div class="form-group">
									<label for="fname"><?php echo lang('message') ?></label>
								    <textarea  class="form-control" rows="3" id="message" name="message"  required></textarea>
							    </div>
							</div>
							<div class="form-group  d-flex justify-content-center" style="margin-top: 30px;">
							   <input class="send_btn btn btn-secondary" id='submit' type="button" value="<?php echo lang('v_captha'); ?>" onClick="validate();">
							   <input class="send_btn btn btn-secondary" type="reset" value="<?php echo lang('cancel'); ?>">
							   <div id='recaptcha'  class="g-recaptcha" data-sitekey="6LdCZBkUAAAAAKw_GvXmhCcg7kslk4aKz8x46Q9L" data-callback="onSubmit"  data-size="invisible"></div>
							</div>
							<div class="row d-flex justify-content-center">
								<div class="captcha_result"></div>
							</div>
						</div>
					</div>
				<?php echo form_close(); ?> 
			</div>
		</div>
		
	</div>
</div>

<div class="modal fade" id="gmap">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" style="color: rgb(175,161,135);">MAP DIRECTIONS</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="row">
                        <div id="map-canvas" class=""></div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="send_btn btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script>

	$('.li-contactus').addClass('menu_active');

  function onSubmit() {
    var result = '<i class="fa fa-check-circle"></i> Verified by reCAPTCHA';
    $('.captcha_result').html(result).fadeIn(400);
    $('#submit').val('<?php echo lang('submit'); ?>');
  }

  function validate(event)
  {

  	if (grecaptcha.getResponse().length == 0)
  	{
  		grecaptcha.execute();
  	}
  	else
  	{
  		if($('form').isValid())
	   {
		   	send_form();
	   } 
  		
  	}	 
	
  }

  function send_form()
  {
  		var data = $('form').serializeArray();
  		$.post('<?php echo $this->language; ?>/send_contact_msg', data, function(result)
  		{
  			if (result.result == 'true')
  			{
  				$('form').get(0).reset();
  				grecaptcha.reset();
  				$('.captcha_result').html('');
  				$('#submit').val('<?php echo lang('v_captha') ?>');
  				$('.contact_msg_sent').modal('show');
  				$('.contact_msg_sent').on('hide.bs.modal', function (e) {
				  	// window.location='';
				})
  			}
  			
  		},'json');
  }

  $.validate({
	  form : '#contact_msg',
	  modules : 'html5',
	  scrollToTopOnError : false,
	  focusInvalid: false,
	   
  	});


</script>

<style>
	html, body {
	    width: 100%;
	    height: 100%;
	}

	#map-canvas{
		width: 100%;
	    height: 450px;
	    position: relative;
	}
</style>

<script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAH80DMehNoaHGVyj7Mm2vpQNyhnj7Cbag"></script>
<script>

    var la = '<?php echo $this->baseModel->getWhere('tb_setting', [ 'slug' => 'map_la' ], 'setting_id asc')->row()->value; ?>';
    var lo = '<?php echo $this->baseModel->getWhere('tb_setting', [ 'slug' => 'map_lo' ], 'setting_id asc')->row()->value; ?>';

	var map;        
    var myCenter=new google.maps.LatLng(la, lo);
	var marker=new google.maps.Marker({
	    position:myCenter
	});



	function initialize() {
	  var mapProp = {
	      center:myCenter,
	      zoom: 16,
	      draggable: true,
	      scrollwheel: true,
	      mapTypeId:google.maps.MapTypeId.ROADMAP
	  };
	  
	  map=new google.maps.Map(document.getElementById("map-canvas"),mapProp);
	  marker.setMap(map);
	    
	  google.maps.event.addListener(marker, 'click', function() {
	      
	    infowindow.setContent(contentString);
	    infowindow.open(map, marker);
	    
	  }); 
	};
	google.maps.event.addDomListener(window, 'load', initialize);

	google.maps.event.addDomListener(window, "resize", resizingMap());

	$('#gmap').on('show.bs.modal', function() {
	   //Must wait until the render of the modal appear, thats why we use the resizeMap and NOT resizingMap!! ;-)
	   resizeMap();
	})

	function resizeMap() {
	   if(typeof map =="undefined") return;
	   setTimeout( function(){resizingMap();} , 400);
	}

	function resizingMap() {
	   if(typeof map =="undefined") return;
	   var center = map.getCenter();
	   google.maps.event.trigger(map, "resize");
	   map.setCenter(center); 
	}
</script>
