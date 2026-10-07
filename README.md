Datapack for a MC 26.1 manhunt with high power fireballs.

## How the game works

- Hunters receive fireballs that work like bedwars fireballs (right-click to launch).
- Hunters have a separate game start delay (default 30 seconds). The normal fireball cooldown applies after launches and deaths.
- The tablist shows each hunter's countdown by default. `0` means their fireball is ready.
- Fireballs can be deflected. By default, whoever has interacted with a fireball last takes no damage from that specific fireball.
- Other damage, like fire from the explosion, will still apply.
- By default, fireballs gain power as they travel and reach maximum power (default 100) after 6 chunks of travel. Deflection does not reset traveled distance.

When fireball protection is enabled, the datapack adds a protection enchantment to worn equipment. Players without armour receive temporary chainmail boots with no model. These boots provide fireball protection, not normal armour protection. Stopping the game or disabling fireball protection removes the temporary boots and protection enchantments.

## Commands

Run these commands as op:

| Command | Purpose |
| --- | --- |
| `/team join hunters <player>` | Assign a player as a hunter.|
| `/function firebally:config` | Set game options, game start delay, fireball cooldown, speed, maximum power, and distance to reach maximum power. |
| `/function firebally:start` | Start the game and the hunter release countdown. |
| `/function firebally:stop` | Stop the game and remove fireballs. |

The config dialog shows the current settings. Change only the fields you need, then select **Save**.

These settings use sliders:

- **Speed:** 1–200 blocks/second, in whole-number steps (default 20).
- **Max fireball power:** 1–127, in whole-number steps (default 100).
- **Distance before max power (chunks):** 0–10 chunks, in whole-number steps (default 6).
- **Fireball cooldown:** 0–600 seconds, in 10-second steps (default 60).
- **Game start delay:** 0–600 seconds, in 10-second steps (default 30).

The default ramp distance is 6 chunks (96 blocks). Set the distance to 0 to launch fireballs at max power immediately.

### Game options

All three checkboxes default to on. Saved choices will persist across reloads and game restarts.

| Option | Behaviour |
| --- | --- |
| Show hunter cooldown in tablist | Shows or hides the tablist countdown when you save. Hunter timers and actionbar countdowns still run. |
| Apply effects to hunters on game start | Applies blindness and slowness during the configured start delay. Changes apply at the next game start. |
| Protect the last player to interact with a fireball | Protects the launcher initially, then the last player to deflect that fireball. Disabling this option removes the protection enchantments and temporary boots when you save. Enabling during a game restores protection. |
