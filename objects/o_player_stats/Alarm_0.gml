/// @description Calculate energy burn amounts

if (ep > 0) {
	ep = max(0, (ep - energy_burn_rate));
} else {
	hp -= energy_burn_rate * 100;
}

alarm[0] = 30;