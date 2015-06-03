

<div id="profile-jot-wrapper" >
	<div id="profile-jot-banner-wrapper">
		<div id="profile-jot-desc" >&nbsp;</div>
		<div id="character-counter" class="grey"></div>
	</div>
	<div id="profile-jot-banner-end"></div>

	<form id="profile-jot-form" action="{{$action}}" method="post" >
		<input type="hidden" name="type" value="{{$ptyp}}" />
		<input type="hidden" name="profile_uid" value="{{$profile_uid}}" />
		<input type="hidden" name="return" value="{{$return_path|escape:'html'}}" />
		<input type="hidden" name="location" id="jot-location" value="{{$defloc|escape:'html'}}" />
		<input type="hidden" name="coord" id="jot-coord" value="" />
		<input type="hidden" name="post_id" value="{{$post_id}}" />
		<input type="hidden" name="preview" id="jot-preview" value="0" />
		<input type="hidden" name="post_id_random" value="{{$rand_num}}" />
		<input type="hidden" id="jot-consensus" name="consensus" value="{{if $consensus}}{{$consensus}}{{else}}0{{/if}}" />
		<div id="jot-title-wrap"><input name="title" id="jot-title" type="text" placeholder="{{$placeholdertitle|escape:'html'}}" value="{{$title|escape:'html'}}" class="jothidden" style="display:none"></div>
		{{if $placeholdercategory}}
		<div id="jot-category-wrap"><input name="category" id="jot-category" type="text" placeholder="{{$placeholdercategory|escape:'html'}}" value="{{$category|escape:'html'}}" class="jothidden" style="display:none" /></div>
		{{/if}}
		<div id="jot-text-wrap">
		<img id="profile-jot-text-loading" src="images/rotator.gif" alt="{{$wait}}" title="{{$wait}}" style="display: none;" />
		<textarea rows="5" cols="64" class="profile-jot-text" id="profile-jot-text" name="body" >{{if $content}}{{$content}}{{else}}{{$share}}{{/if}}</textarea>
		</div>

<div id="profile-jot-submit-wrapper" class="jothidden">
	<input type="submit" id="profile-jot-submit" name="submit" value="{{$share|escape:'html'}}" />

	<div id="profile-upload-wrapper" style="display: {{$visitor}};" >
		<div id="wall-image-upload-div" ><a href="#" onclick="return false;" id="wall-image-upload" class="icon camera" title="{{$upload|escape:'html'}}"></a></div>
	</div> 
	<div id="profile-attach-wrapper" style="display: {{$visitor}};" >
		<div id="wall-file-upload-div" ><a href="#" onclick="return false;" id="wall-file-upload" class="icon attach" title="{{$attach|escape:'html'}}"></a></div>
	</div> 

	<div id="profile-link-wrapper" style="display: {{$visitor}};" ondragenter="linkdropper(event);" ondragover="linkdropper(event);" ondrop="linkdrop(event);" >
		<a id="profile-link" class="icon link" title="{{$weblink}}" ondragenter="return linkdropper(event);" ondragover="return linkdropper(event);" ondrop="linkdrop(event);" onclick="jotGetLink(); return false;"></a>
	</div> 
	<div id="profile-video-wrapper" style="display: {{$visitor}};" >
		<a id="profile-video" class="icon video" title="{{$video|escape:'html'}}" onclick="jotVideoURL();return false;"></a>
	</div> 
	<div id="profile-audio-wrapper" style="display: {{$visitor}};" >
		<a id="profile-audio" class="icon audio" title="{{$audio|escape:'html'}}" onclick="jotAudioURL();return false;"></a>
	</div> 
	<div id="profile-location-wrapper" style="display: {{$visitor}};" >
		<a id="profile-location" class="icon globe" title="{{$setloc|escape:'html'}}" onclick="jotGetLocation();return false;"></a>
	</div> 
	<div id="profile-nolocation-wrapper" style="display: none;" >
		<a id="profile-nolocation" class="icon noglobe" title="{{$noloc|escape:'html'}}" onclick="jotClearLocation();return false;"></a>
	</div> 

	{{if $feature_voting}}
		<div id="profile-voting-wrapper" style="display: {{$visitor}};" >
			<a id="profile-voting" class="icon icon-check-empty" title="{{$voting|escape:'html'}}" onclick="toggleVoting();return false;"></a>
		</div>
	{{/if}}

	<div id="profile-jot-perms" class="profile-jot-perms" style="display: {{$pvisit}};" >
		<a href="#profile-jot-acl-wrapper" id="jot-perms-icon" class="icon {{$lockstate}}"  title="{{$permset|escape:'html'}}" ></a>{{$bang}}
	</div>

	<!-- {{if $preview}}<span onclick="preview_post();" id="jot-preview-link" class="fakelink">{{$preview}}</span>{{/if}} -->
	{{if $preview}}<input type="submit" onclick="preview_post(); return false;" id="jot-preview-link" value="{{$preview|escape:'html'}}" />{{/if}}

	<div id="profile-jot-perms-end"></div>


	<div id="profile-jot-plugin-wrapper">
  	{{$jotplugins}}
	</div>

	<div id="profile-rotator-wrapper" style="display: {{$visitor}};" >
		<img id="profile-rotator" src="images/rotator.gif" alt="{{$wait}}" title="{{$wait|escape:'html'}}" style="display: none;" />
	</div> 
	
	<div id="jot-preview-content" style="display:none;"></div>

	<div style="display: none;">
		<div id="profile-jot-acl-wrapper" style="width:auto;height:auto;overflow:auto;">
			{{$acl}}
			<hr style="clear:both"/>
			<div id="profile-jot-email-label">{{$emailcc}}</div><input type="text" name="emailcc" id="profile-jot-email" title="{{$emtitle|escape:'html'}}" />
			<div id="profile-jot-email-end"></div>
			{{$jotnets}}
		</div>
	</div>


</div>

<div id="profile-jot-end"></div>
</form>
</div>
		{{if $content}}<script>initEditor();</script>{{/if}}
