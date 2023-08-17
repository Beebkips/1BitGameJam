emit = audio_emitter_create();
audioMaxDist = 1000;
audioDropDist = 100;

audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(emit, x, y, 0);
audio_emitter_falloff(emit, audioDropDist, audioMaxDist, 1);
state = 0;