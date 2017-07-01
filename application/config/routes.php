<?php
defined('BASEPATH') OR exit('No direct script access allowed');

// Set route language
$lang = '(th|en)';

$route['^'.$lang.'$']                      = 'Main/index';
$route['^'.$lang.'/contact-us.html']       = 'Main/contact_us';
$route['^'.$lang.'/product']               = 'Main/product';
$route['^'.$lang.'/product/(:num)-(:any)'] = 'Main/product_detail/$2';
$route['^'.$lang.'/send_contact_msg']      = 'Main/send_contact_msg';

$route['default_controller']   = 'Main';
$route['404_override']         = '';
$route['translate_uri_dashes'] = FALSE;
