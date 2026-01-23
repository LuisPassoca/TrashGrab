qtdLixo = 0
lixo = 0

global.lixosprite = 0
global.lixocheck = 0



wait = false

checkTimer = time_source_create(time_source_game, 10, time_source_units_seconds, function() {
	if (global.lixocheck == 1) {global.lixocheck = 0};
})