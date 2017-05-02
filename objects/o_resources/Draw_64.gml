/// @description Draw resource bars

draw_sprite(s_resource_bars, 0, 71, 9);

draw_sprite_ext(s_health_bar, 0, 71, 12, (o_player_stats.hp/o_player_stats.maxHP) * (200/24), 1, 0, -1, 1);

draw_sprite_ext(s_energy_bar, 0, 71, 39, (o_player_stats.ep/o_player_stats.maxEP) * (200/24), 1, 0, -1, 1);

draw_sprite(sprite_index, 0, 0, 5);