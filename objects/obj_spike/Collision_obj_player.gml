obj_player.health -= 1;
if (obj_player.health <= 0) {
    game_restart(); 
}

instance_destroy();
