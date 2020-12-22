draw_set_color(merge_color(_defaultColor, _hoverColor, _hover));
draw_roundrect(x,y, x+width, y + height/2, 0);

draw_set_font(fnt_blancaMid);
draw_set_color(_textColor);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(x +  10 , y + 10 , _text, 40, 700);


//RESET
draw_set_font(fnt_blanca);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);



