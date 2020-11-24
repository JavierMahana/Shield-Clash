draw_set_color(merge_color(_defaultColor, _hoverColor, _hover));

draw_roundrect(x,y,x+_width, y + _height, 0);

draw_set_font(fnt_blancaMid);
draw_set_color(_textColor);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x + _width/2, y + _height/2, _text);


//RESET
draw_set_font(fnt_blanca);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);