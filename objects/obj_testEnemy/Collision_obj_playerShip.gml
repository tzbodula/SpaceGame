// Damage player and destroy enemy
damageObj(obj_playerShip, damage);

// Increment player score
global.cash += self.healthPoints;

instance_destroy(self);

