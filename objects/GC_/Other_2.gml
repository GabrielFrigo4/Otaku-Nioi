randomize();

var _file = file_text_open_read("./datavar.txt");
var jogouTutorial = file_text_read_real(_file);
file_text_close(_file);

global.volume = 0.75;
global.effect = 0.75;
global.music = 0.75;
if(jogouTutorial)
global.jogo = room_fase1;
else
global.jogo = room_filminho;
global.pause = false;
global.moeda = 0;
global.dano = 1;
global.maxHp = 4;
global.hp = global.maxHp;
global.tempoExtra = 0;
global.aprimoramentoOtaku = 0;
global.aprimoramentoBau = 0;