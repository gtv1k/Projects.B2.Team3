
vsp = vsp + grv ; 


if (place_meeting(x+hsp,y,owall))
{  
   
   while (!place_meeting(x+sign(hsp),y,owall))
  {
	x = x + sign(hsp); 
  }
    hsp = -hsp ;
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
	sprite_index = senemyA; 
    image_speed = 0 ;
 if ( sign(vsp) > 0 ) image_index = 1 ; else image_index = 0 ;
}

else 
{
   image_speed = 1 ;
   if (hsp == 0)
   { 
     sprite_index = Senemy ; 
   }
   else 
   {
     sprite_index = SenemyR ;
   } 

}

if (hsp != 0 ) image_xscale = sign(hsp) * size ;
image_yscale = size ; 








