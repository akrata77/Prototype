/// Init
tilesize = 64;															// size of tiles
map = layer_tilemap_get_id("Collisions");								// this will be the layer we use for collisions
hills = layer_get_all_elements("Hills");								// all the hill sprites
stars = layer_get_all_elements("Stars");								// all the star sprites
clouds = layer_get_all_elements("Clouds");								// all the cloud sprites


// on screen controls
button_pressed = false;													// flag to see if any button is being pressed
button_down_left = false;												// if the left button is pressed
button_down_right = false;												// if the up button is pressed
button_down_up = false;													// if the down button is pressed
button_down_down = false;												// if the right button is pressed
button_down_jump = false;												// if the jump button is pressed
button_x_left = 100;													// set the x value for the left button	
button_x_right = 300;													// set the x value for the right button
button_x_jump = view_wport[0]-100;										// set the x value for the jump button
button_y = view_hport[0] - 100;											// set the y value for the buttons
button_r = 80;															// radius of buttons
button_a = 0;															// used to fade in the buttons
button_x1 = view_wport[0]-300-button_r;									// left x value of up and down buttons
button_x2 = view_wport[0]-300+button_r;									// right x value of up and down buttons	
button_y1_up = button_y-button_r;										// top y value of up button
button_y2_up = button_y-(button_r/8);									// bottom y value of up button
button_y1_down = button_y+(button_r/8);									// top y value of down button
button_y2_down = button_y+button_r;										// bottom y value of down button
