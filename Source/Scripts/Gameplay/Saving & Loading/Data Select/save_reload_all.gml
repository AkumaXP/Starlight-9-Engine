/// save_reload_all()
// Reloads every save file again. Used when returning to the data select.
var _slot, i;
for (i = 1; i < 9; i += 1)
{
    _slot = save_load(i);
    if (_slot)
    {
        global.save_slot_zone[i]      = global.zone_id;
        global.save_slot_character[i] = global.character[0];
        global.save_slot_cpu[i]       = global.character[1];
        global.save_slot_lives[i]     = global.player_lives;
        global.save_slot_score[i]     = global.player_score;
        global.save_slot_continues[i] = global.player_continues;
        global.save_slot_emeralds[i]  = global.player_emeralds;
        global.save_slot_completed[i] = global.game_completed;
    }
    else
    {
        global.save_slot_zone[i]      = 0;
        global.save_slot_character[i] = 1;
        global.save_slot_cpu[i]       = 2;
        global.save_slot_lives[i]     = 3;
        global.save_slot_score[i]     = 0;
        global.save_slot_continues[i] = 0;
        global.save_slot_emeralds[i]  = 0;
        global.save_slot_completed[i] = 0;
    }
}
