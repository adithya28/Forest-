///@arg text[]
///@arg width
///@arg font

var text=argument0;
var w=argument1;
var font=argument2;
draw_set_font(s_font);
var array_size=array_length_1d(text);
var last_space=0;

for(var i=0;i<array_size;i++)
{
	var count=0;
	var char=string_char_at(text[i],count);
	while(char!="")
	{
		var str=string_copy(text[i],1,count);
		var str_width=string_width(str);
		// Update the last space
		if(char==" ") 
		last_space=count;
		//check the wodth
		if(str_width>w)
		{
			text[@i]=string_delete(text[i],last_space,1);
			
			
	}
			
	
}
}