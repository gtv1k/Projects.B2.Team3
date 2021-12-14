

if(hascontrol)
{
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D")); 
key_jump = keyboard_check_pressed(vk_space);
}
else
{
	key_right = 0
	key_left = 0
	key_jump = 0 
}
var move = key_right - key_left;

hsp = move * walksp; 
vsp = vsp + grv ; 

 if (place_meeting(x,y+1,owall)) && (key_jump) 
 {
    vsp = -7 ; 
 }

if (place_meeting(x+hsp,y,owall))
{  
   
   while (!place_meeting(x+sign(hsp),y,owall))
  {
	x = x + sign(hsp); 
  }
    hsp = 0 ;
}
x = x + hsp;

if (place_meeting(x,y+vsp,owall))
{  
   
   while (!place_meeting(x,y+sign(vsp),owall))
  {
	y = y + sign(vsp); 
  }
    vsp = 0 ;
}
y = y + vsp;

if (!place_meeting(x,y+1,owall)) 
{
	sprite_index = SplayerA; 
    image_speed = 0 ;
 if ( sign(vsp) > 0 ) image_index = 1 ; else image_index = 0 ;
}

else 
{
   image_speed = 1 ;
   if (hsp == 0)
   { 
     sprite_index = splayer ; 
   }
   else 
   {
     sprite_index = splayerR ;
   } 

}

if (hsp != 0 ) image_xscale = sign(hsp);









