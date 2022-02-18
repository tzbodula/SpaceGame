// Damage player and destroy enemy
damageObj(obj_playerShip, damage);

// Increment player score
global.points += self.healthPoints;

instance_destroy(self);

