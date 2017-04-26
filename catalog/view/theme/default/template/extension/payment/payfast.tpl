<?php
/**
 * catalog/view/theme/default/template/extension/payment/payfast.tpl
 *
 * Copyright (c) 2009-2012 PayFast (Pty) Ltd
 * 
 * LICENSE:
 * 
 * This payment module is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation; either version 3 of the License, or (at
 * your option) any later version.
 * 
 * This payment module is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 * 
 * @author     Ron Darby
 * @copyright  2009-2012 PayFast (Pty) Ltd
 * @license    http://www.opensource.org/licenses/lgpl-license.php LGPL
 * @version    1.1.1
 */

?>

<?php if ($sandbox) { ?>
<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $text_sandbox; ?></div>
<?php } ?>
<form action="<?php echo $action; ?>" method="post">
  <input type="hidden" name="merchant_id" value="<?php echo $merchant_id; ?>" />
  <input type="hidden" name="merchant_key" value="<?php echo $merchant_key; ?>" />
  <input type="hidden" name="amount" value="<?php echo $amount; ?>" />
  <input type="hidden" name="item_name" value="<?php echo $item_name; ?>" />
  <input type="hidden" name="item_description" value="<?php echo $item_description; ?>" />
  <input type="hidden" name="name_first" value="<?php echo $name_first; ?>" />
  <input type="hidden" name="name_last" value="<?php echo $name_last; ?>" />
  <input type="hidden" name="email_address" value="<?php echo $email_address; ?>" />
  <input type="hidden" name="return_url" value="<?php echo $return_url; ?>" />
  <input type="hidden" name="notify_url" value="<?php echo $notify_url; ?>" />
  <input type="hidden" name="cancel_url" value="<?php echo $cancel_url; ?>" />
  <input type="hidden" name="custom_str1" value="<?php echo $custom_str1; ?>" />

  <?php if ($recurring) { ?>
  <input type="hidden" name="custom_str2" value="<?php echo $custom_str2; ?>" />
  <input type="hidden" name="custom_str3" value="<?php echo $custom_str3; ?>" />
  <input type="hidden" name="custom_str4" value="<?php echo $custom_str4; ?>" />
  <input type="hidden" name="custom_str5" value="<?php echo $custom_str5; ?>" />
  <input type="hidden" name="subscription_type" value="1" />
  <input type="hidden" name="billing_date" value="<?php echo date('Y-m-d'); ?>" />
  <input type="hidden" name="recurring_amount" value="<?php echo $recurring_amount; ?>" />
  <input type="hidden" name="frequency" value="<?php echo $frequency; ?>" />
  <input type="hidden" name="cycles" value="<?php echo $cycles; ?>" />
  <?php } ?>


  <input type="hidden" name="m_payment_id" value="<?php echo $m_payment_id; ?>" />
  <input type="hidden" name="signature" value="<?php echo $signature; ?>" />
  <input type="hidden" name="user_agent" value="<?php echo $user_agent; ?>" />
<div class="buttons">
   <div class="pull-right">
     <input type="submit" value="<?php echo $button_confirm; ?>" class="btn btn-primary" />
   </div>
 </div>

</form>
