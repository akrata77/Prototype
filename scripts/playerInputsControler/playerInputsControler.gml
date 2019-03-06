//Player inputs
var keyLeft = keyboard_check(vk_left);
var keyRight = keyboard_check(vk_right);
var keyUp = keyboard_check(vk_up);
var keyDown = keyboard_check(vk_down);
var keyJump = keyboard_check(vk_space);

//Player inputs operation
var horizontalDirMovement = keyRight - keyLeft;

var secondsPassed = delta_time/1000000;
var moveSpeedThisFrame = walkSpeed * secondsPassed;

if(horizontalDirMovement != 0) {
	horizontalMovement = horizontalDirMovement * moveSpeedThisFrame;
} else {
	horizontalMovement = 0;
}
verticalMovement += player_gravity * secondsPassed;
if(place_meeting(x, y + 1, object_floor_ground) && keyJump) {
	verticalMovement = -7;
}

//Horizontal Movement with collision validation
if(place_meeting(x+horizontalMovement, y, object_floor_ground)) {
	while(!place_meeting(x+sign(horizontalMovement), y, object_floor_ground)) {
		x += sign(horizontalMovement);
	}
	horizontalMovement = 0
}
x += horizontalMovement;

//Vertical Movement simulating gravity
if(place_meeting(x, y+verticalMovement, object_floor_ground)) {
	while(!place_meeting(x, y+verticalMovement, object_floor_ground)) {
		y += sign(verticalMovement)
	}
	verticalMovement = 0
}
y += verticalMovement
