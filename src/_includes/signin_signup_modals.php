<?php
/**
 * INCLUDE FILE FOR SIGNIN & SIGNUP MODAL
 * This file acts as content includer inside page files.
 * DO NOT USE IT ANYWHERE ELSE.
 *
 *
 *
 *
 * @author Akhil Kokani
 * @package Donors
 */
?>
<div class="signin-modal-wrapper modal-wrapper" style="display: none;">
  <div class="signin-modal modal">
    <div class="signin-modal-body modal-body">
      <div class="modal-title">
        <h1>Sign In</h1>
      </div>
      <form method="POST">
        <div class="signin-ip-block">
          <label for="uname">
            Username
          </label>
          <input type="text" class="signin-ip" name="uname" placeholder="Username">
        </div>

        <div class="signin-ip-block">
          <label for="pwd">
            Password
          </label>
          <input type="password" class="signin-ip" name="pwd" placeholder="Password">
        </div>

        <a class="signin-modal-link" title="Sign Up">
          Don't have an account? Create One.
        </a>
      
        <div class="disp-flex" style="margin-top: 4em;">
          <a href="./dashboard/" style="position:absolute; top:-100px;" id="after_signin_success_redirect"></a>
          <input type="button" name="submit" value="Sign In" title="Sign In">
          <button type="button" style="width: 90px; margin-left: auto;" data-secondary title="Cancel">Cancel</button>
        </div>
      </form>
    </div>
  </div>
</div>

<div class="signup-modal-wrapper modal-wrapper" style="display: none;">
  <div class="signup-modal modal">
    <div class="signup-modal-body modal-body">
      <div class="modal-title">
        <h1>Sign Up</h1>
      </div>
      <form method="POST">

        <div class="signup-ip-block">
          <label for="uname">
            Username
          </label>
          <input type="text" class="signup-ip" name="uname" placeholder="Username" autocomplete="off">
        </div>

        <div class="signup-ip-block">
          <label for="pwd">
            Password
          </label>
          <input type="password" class="signup-ip" name="pwd" placeholder="Password">
        </div>

        <div class="signup-ip-block">
          <label for="pwd">
            NGO Name
          </label>
          <input type="text" class="signup-ip" name="ngo_name" placeholder="NGO Name">
        </div>

        <div class="signup-ip-block">
          <label for="pwd">
            NGO Email
          </label>
          <input type="text" class="signup-ip" name="ngo_email" placeholder="NGO Email">
        </div>

        <div class="signup-ip-block">
          <label for="pwd">
            NGO Address
          </label>
          <input type="text" class="signup-ip" name="ngo_name" placeholder="NGO Address">
        </div>

        <div class="signup-ip-block">
          <label for="pwd">
            NGO Contact Number
          </label>
          <input type="text" class="signup-ip" name="ngo_contact_num" placeholder="NGO Contact Number">
        </div>

        <div class="signup-ip-block">
          <label for="pwd">
            NGO Govt. ID
          </label>
          <input type="text" class="signup-ip" name="ngo_govt_id" placeholder="NGO Government ID">
        </div>

        <a class="signup-modal-link" title="Sign In">
          Have an account? Sign In.
        </a>
      
        <div class="disp-flex" style="margin-top: 4em;">
          <input type="button" name="submit" value="Sign Up" title="Sign Up">
          <button type="button" style="width: 90px; margin-left: auto;" data-secondary title="Cancel">Cancel</button>
        </div>
      </form>
    </div>
  </div>
</div>