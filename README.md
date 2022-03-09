# SpaceGame
Project for ITCS-4230/5230

<"When the galaxy is suddenly attacked by intergalactic mutated space garbage, society plunges into chaos in search of a solution or face total annihilation. Word soon began to spread among the planets of a legend once thought only to be a fairytale. The legend of the Galaxy Defender.">

##  Project conventions
These conventions exist across the project:

- Outside of seperating the asset type (sprite,object,etc.) with a "_", variables use camel-case notation (See examples below)
- Room names begin with `rm_`, Ex) `rm_main`
- Sprite names begin with `spr_`, Ex) `spr_playerShip`
- Object names begin with `obj_`, Ex) `obj_enemy1`
- Sound files begin with `snd_`, Ex) `snd_cannonPew1`
- Script names begin with `scr_`, Ex) `scr_playerController`
- Sprites and their corresponding objects have the same name following their respective "_" s. Ex) `spr_playerShip and obj_playerShip`

##  Rooms
The game has 3 rooms:
- `rm_titleScreen` : Title screen where player can choose between starting the tutorial or game.
- `rm_shipInterior` : Inside of player's ship, where they can repair, upgrade, or restart their ship.
- `rm_outerSpace` : Combat area where player will interact with enemies.
 
##  Sprites

- The room(s) is/are 1920x1080 pixels
- Player ship (`spr_playerShip`) is 128x128 pixels
- Player character (`spr_playerCharacter`) for the interior ship view is 64x64 pixels
- Enemy ship 1 (`spr_enemy1`) is 64x64 pixels
- Enemy ship 2 (`spr_enemy2`) is 32x32 pixels
- Enemy ship 3 (`spr_enemy3`) is 64x64 pixels
- Boss enemy (`spr_enemyHugeBoi`) is 512x512px
- All sprites have their origin placed at: **Middle Center**

##  Enemies

The game has 3 main enemy types:
- `_enemy1` : <"info about enemy1">
- `_enemy2` : <"info about enemy2">
- `_enemy3` : <"info about enemy3">
