/// player_set_angle(value)
// Sets the angle of the player.
angle          = argument0;
angle_relative = wrap_angle(angle - global.gravity_angle);
