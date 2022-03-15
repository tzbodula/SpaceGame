# SpaceGame
Project for ITCS-4230/5230: Introduction to Game Design & Development

When the galaxy is suddenly attacked by intergalactic mutated space garbage, society plunges into chaos in search of a solution or face total annihilation. Word soon began to spread among the planets of a legend once thought only to be a fairytale. The legend of the Galaxy Defender.

Development Team: Can Ngo, Catlin Petro, Kyle Ward, and Thomas Zbodula of Exodus Studios.

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
The game has 8 rooms:

- `rm_titleScreen`: Title screen where player can choose between the tutorial, game, or credits.
- `rm_introScene`: Text scene preluding the tutorial in which the player can learn about the context and controls of the game.
- `rm_shipInterior`: Inside of player's ship, where they can repair, upgrade, and restart their ship.
- `rm_shipInterior_DuringWave`: Inside of player's ship with specifications that increase user interactability .
- `rm_outerSpace`: Combat area where player will interact with enemies and have their resources displayed.
- `rm_shop`: Interactable interface for the purchasing of item refills and upgrades.
- `rm_shop_Tutorial`: Non-interactable interface for viewing the shop. This is specifically utilized during the tutorial.
- `rm_gameOver`: Player is met with a win/lose screen. Depending on their win status, players are shown different sequences. 
 
##  Sprites

- Player ship (`spr_playerShip`) is 128x128 pixels
- Player character (`spr_playerCharacter`) for the interior ship view is 64x64 pixels
- Enemy ship 1 (`spr_enemy1`) is 64x64 pixels
- Enemy ship 2 (`spr_enemy2`) is 32x32 pixels
- Enemy ship 3 (`spr_enemy3`) is 64x64 pixels
- All sprites have their origin placed at: **Middle Center**

##  Enemies

The game has 3 main enemy types:
- `_enemy1`: A kamikaze enemy that barrels towards the enemy. The player will sustain damage if they make contact with this enemy. Low health.
- `_enemy2`: A sentry enemy that fires bullets at the player, often at a distance. Medium health.
- `_enemy3`: A tank enemy that fires bullets at the player. High health.

##  Game Design Document

Changes between the Game Design Document and game implementation are as follows:
- 3 rounds / 3 waves + boss battle --> 1 round / 3 waves
- Final score configuration based on player performance (see more details below)
- No score board implementation

##  Player Performance

After successfully completing the game, players are given a sustainability score that takes several different variables into account. These variables include the number of space garbage items collected, the amount of total cash earned by the player, and the amount of energy used by the player. High garbage and cash collection and low energy use will lead to the highest score, promoting sustainability. Players are scored on an A-F scale. This is to promote interest in repeated game play.
