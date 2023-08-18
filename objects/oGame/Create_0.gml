surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

global.playerHasItem = [];
global.playerHasItem[ITEM.FLASHLIGHT] = true;
global.playerHasItem[ITEM.WEAPON] = true;

global.playerAmmo = [];
global.playerAmmo[ITEM.FLASHLIGHT] = 1;
global.playerAmmo[ITEM.WEAPON] = 3;

global.playerKeyItems = [];
global.playerKeyItems[0] = KEYITEMS.KEY1;
// global.playerKeyItems[1] = KEYITEMS.KEY2;
global.playerKeyItems[1] = KEYITEMS.KEY3;
u_pos = shader_get_uniform(shLight, "u_pos");

global.textSpeed = 0.75;