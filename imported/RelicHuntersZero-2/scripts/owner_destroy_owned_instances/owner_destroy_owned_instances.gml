for (var i = array_length_1d(owned) - 1; i > -1; i--;)
{
   instance_destroy(owned[i]);
}

owned = 0;