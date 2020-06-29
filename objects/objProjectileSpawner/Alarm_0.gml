/// @description Insert description here
// You can write your code in this editor

	var inst = instance_create_layer(x, y, "Projectiles", objProjectile);
	inst.direction = projectile_dir;
	inst.h_speed = projectile_h_speed;
	inst.v_speed = projectile_v_speed;
	
	alarm[0] = projectile_pause;