/// @description Insert description here
// You can write your code in this editor


seconds+=time_increment;
minutes=seconds/60;
hours=minutes/60;

darkness=approach(darkness,targetalpha,0.0015);
darkness=clamp(darkness,0,0.8);

if(hours>=12&&hours<24)
{
	targetalpha=1;
}


else if(hours>=24)
{
	show_debug_message("24 hrs passed");
	targetalpha=0;
	day++;
	hours=0;
	minutes=0;
	seconds=0;

	if(day>=4)
	{
		season=season++%4;
		
	}
	
}
