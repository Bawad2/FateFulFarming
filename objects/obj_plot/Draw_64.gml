//Draw the texts
draw_set_font(fnt_Pixel)
draw_set_halign(fa_center)


if selected and !planted and !harvestable{ draw_text_transformed( 540, 640, "Press 'E' to plant seeds" + "(" + string(global.potato) + ")", 1, 1, 0 )  }
	
if selected and !watered and planted  { draw_text_transformed( 540, 640, "Press 'E' to water seeds" , 1, 1, 0 )  };

if selected and harvestable { draw_text_transformed( 540, 640, "Press 'E' to harvest crop" , 1, 1, 0 )  }