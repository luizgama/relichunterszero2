instance = argument0;
instance.x = argument1;
instance.y = argument2;
layer_add_instance(layer_get_id(argument3), instance);

instance.angular_min = -10 * global.target_fps;
instance.angular_max = 10 * global.target_fps;
instance.angular_speed = irandom_range(instance.angular_min,instance.angular_max);

instance.vertical_speed_start = irandom_range(3,6) * global.target_fps;
instance.vertical_speed = -instance.vertical_speed_start;

instance.timeToBounce = false;
instance.firstBounce = false;
instance.speed_per_second = irandom_range(0.5, 2) * global.target_fps;
instance.dirMin = -30;
instance.dirMax = 30;
instance.direction = 180 + random_range(instance.dirMin,instance.dirMax);

instance.randomizeDir = true;