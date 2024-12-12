/*function move_with_tile_collision(_xinput, _yinput, speed, tilemap_layer) {
    var collision_layer = layer_tilemap_get_id(tilemap_layer);

    // Controllo asse X
    if (_xinput != 0) {
        var new_x = x + _xinput * speed;
        if (!tilemap_get_at_pixel(collision_layer, new_x, y)) {
            x = new_x;
        } else {
            // Allinea al bordo del tile
            if (_xinput > 0) {
                x = tilemap_snap_to_cell(collision_layer, new_x) + tile_width - 1;
            } else {
                x = tilemap_snap_to_cell(collision_layer, new_x);
            }
        }
    }

    // Controllo asse Y
    if (_yinput != 0) {
        var new_y = y + _yinput * speed;
        if (!tilemap_get_at_pixel(collision_layer, x, new_y)) {
            y = new_y;
        } else {
            // Allinea al bordo del tile
            if (_yinput > 0) {
                y = tilemap_snap_to_cell(collision_layer, new_y) + tile_height - 1;
            } else {
                y = tilemap_snap_to_cell(collision_layer, new_y);
            }
        }
    }
}
