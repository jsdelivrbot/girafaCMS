<div  id="%%NAME%%" class="field image %%COLUMNS%% %%REQUIRED%%">

  <label class="legend">%%LEGEND%%</label>

  <div class="img" style="background-image:url(%%IMG%%);">%%LINK_ZOOM%%
    <img style="%%ISBLANK%%" class="delete" src="%%ADMIN_IMAGES_URL%%icon_form_image_delete.png" title="Limpar este campo">
  </div>

  <div class="painel">
    <span class="status">%%TXT_STATUS%%</span>
    <img class="btn_upload" src="%%ADMIN_IMAGES_URL%%form_image_upload.gif">
    <input %%READONLY%% type="file" name="%%NAME%%" id="%%NAME%%">
    <input %%READONLY%% class="_status %%REQUIRED%%" %%REQUIRED%% type="hidden" name="%%NAME%%_status" id="%%NAME%%_status" value="%%ISBLANK_VALUE%%" >
  </div>

</div>