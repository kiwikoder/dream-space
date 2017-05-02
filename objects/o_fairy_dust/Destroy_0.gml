/// @description Destroy the fairy dust particle system
	part_type_destroy(dust);
	part_emitter_destroy(fairy_dust, dust_emitter);
	part_system_destroy(fairy_dust);