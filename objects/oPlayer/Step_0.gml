keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyFlashlight = keyboard_check_pressed(ord("F"));

inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

hSpeed = lengthdir_x(inputMagnitude * pSpeed, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * pSpeed, inputDirection);

x += hSpeed;
y += vSpeed;

if (inputMagnitude != 0)
{
	var _animLength = sprite_get_number(sprite_index) / 8;
	image_index = (((inputDirection / 45) + 1) % 8) + _animLength;
}