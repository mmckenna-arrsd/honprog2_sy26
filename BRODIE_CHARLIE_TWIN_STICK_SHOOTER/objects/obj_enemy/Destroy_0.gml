
// // Creates a new instance of a dead state of the enemy
var _body = instance_create_layer(x + 0, y + 0, "Bodies", obj_enemy_dead);

// // Sets the angle of the dead enemy to match the enemy
with(_body) {
image_angle = other.image_angle;
}
{
	drop_health_kit = floor(random_range(1, 8 + 1)) 
 instance_create_layer(x + 0, y + 0, "Instances", obj_health_kit);
}

// // Sets the angle of the dead enemy to match the enemy

with(_body) {
image_angle = other.image_angle;
}
 drop_bullet_powerup = floor(random_range(1, 8 + 1));
instance_create_layer(x + 0, y + 0, "Instances", obj_bullet_powerup);
