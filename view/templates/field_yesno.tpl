
	<div class='field yesno'>
		<label for='id_{{$field.0}}'>{{$field.1}}</label>
		<div class='onoff' id="id_{{$field.0}}_onoff">
			<input  type="hidden" name='{{$field.0}}' id='id_{{$field.0}}' value="{{$field.2}}" aria-describedby='{{$field.0}}_tip'>
			<a href="#" class='off'>
				{{if $field.4}}{{$field.4.0}}{{else}}OFF{{/if}}
			</a>
			<a href="#" class='on'>
				{{if $field.4}}{{$field.4.1}}{{else}}ON{{/if}}
			</a>
		</div>
		{{if $field.3}}
		<span class="field_help" role="tooltip" id="{{$field.0}}_tip">{{$field.3 nofilter}}</span>
		{{/if}}
	</div>
