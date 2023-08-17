// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NewTextBox(_message){
	var _obj = oText;
	
	with (instance_create_layer(0, 0, "Instances", _obj))
	{
		message = _message;
		originInstance = instace_exists(other) ? other.id : noone;
	}
}