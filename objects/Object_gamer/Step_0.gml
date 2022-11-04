/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

var A = keyboard_check(ord("A"));
var D = keyboard_check(ord("D"));
var W = keyboard_check(ord("W"));
var S = keyboard_check(ord("S"));

var hspd = D - A;
var vspd = S - W;

if (hspd !=0 or vspd !=0)
{
  spd = 4;
  dir  = point_direction(0, 0, hspd, vspd);
}
spd*=0.9;

var xadd = lengthdir_x(spd, dir);
var yadd = lengthdir_y(spd, dir);

if !place_meeting(x + xadd, y, _static)
  x = x + xadd
else 
{
  while(!place_meeting(x + sign(xadd), y, _static))
    x = x + sign(xadd)
}
if !place_meeting(x, y + yadd, _static)
  y = y + yadd
else
{
  while(!place_meeting(x, y + sign(yadd), _static))
    y = y + sign(yadd)
}

x = round(x)
y = round(y)

if (A = 1)
  sprite_index = sp_left
if (D = 1)
  sprite_index = sp_right
if (W = 1)
  sprite_index = sp_up
if (S = 1)
  sprite_index = sp_dpwn
  
if (x != xprevious or y != yprevious)
  image_speed = 0.2
else
  image_speed = 0





