/// @description Create the fairy dust effect

part_emitter_region(fairy_dust, dust_emitter, x, x, y, y+8, ps_shape_ellipse, ps_distr_linear);
part_emitter_burst(fairy_dust, dust_emitter, dust, 10);