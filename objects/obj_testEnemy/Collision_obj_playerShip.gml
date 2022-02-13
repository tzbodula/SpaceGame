// Damage player and destroy enemy
damageObj(obj_playerShip, damage);
instance_destroy(self);

// Check if player object still exists
if(instance_exists(obj_playerShip))
{
	obj_playerShip.points += damage;
}