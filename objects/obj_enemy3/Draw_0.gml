/// @description Insert description here
// You can write your code in this editor
// Had to know why my enemies were dissapearing. Had to use draw_self()
// References:
// https://www.reddit.com/r/gamemaker/comments/5pg7pp/using_the_draw_event_makes_my_player_sprite/
// https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Drawing/Basic_Forms/draw_healthbar.htm
draw_self()
draw_healthbar(x - 20, y - 50, x + 20, y - 45, (healthPoints/maxHP) * 100, c_black, c_red, c_lime, 0, true, true)