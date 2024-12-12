// Inizializza la variabile triggered nell'evento Create (non qui).
// Controlla se il giocatore è sotto
if (!triggered && place_meeting(x, y + sprite_height, obj_player)) {
    triggered = true; // Attiva la caduta
}

// Se il trigger è attivo, abilita la caduta
if (triggered) {
    vspeed += 0.5; // Gravità semplice
    y += vspeed;   // Movimento verticale

    // Controlla la collisione con il terreno o altri tile
    if (place_meeting(x, y, obj_player)) {
        // Interagisci con il giocatore (danno o morte)
        with (obj_player) {
            health -= 1;
            if (health <= 0) {
                game_restart();
            }
        }
        instance_destroy(); // Distruggi lo spike
    } else if (place_meeting(x, y, my_tilemap)) {
        vspeed = 0;  // Ferma la caduta
        instance_destroy(); // Distruggi l'oggetto spike
    }
}
