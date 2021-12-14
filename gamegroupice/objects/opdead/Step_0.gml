
if(done == 0 )
{

vsp = vsp + grv ; 



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
   if (vsp > 0 ) 
   {
   done = 1 ;
   image_index = 1 ;
   alarm[0] = 60 ;    
   }
  
  
  while (!place_meeting(x,y+sign(vsp),owall))
  {
	y = y + sign(vsp); 
  }
    vsp = 0 ;
}
y = y + vsp;
}