///Main Draw
draw_self();

draw_sprite_ext(casing,casing_subimage,x,y+casing_height,1,1,casing_angle,c_white,1);
reflection_add_sprite_update(casing,casing_subimage,x,y-casing_height,1,1,casing_angle,c_white,1);

if (!vertical_speed_start)
{
    draw_persistent(casing,casing_subimage,x,y+casing_height,1,1,casing_angle,c_white,1);
    instance_destroy();
}