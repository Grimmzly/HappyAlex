if !(variable_global_exists("musicon")) global.musicon = true; 
if !(audio_is_playing(sound0)) && (global.musicon) audio_play_sound(sound0,1,true);