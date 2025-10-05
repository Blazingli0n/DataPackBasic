# Money Leaderboard Data Pack

This data pack adds a persistent, floating money leaderboard that updates automatically from a scoreboard-based currency system.

## Currency storage

* Player balances are stored in the `money` scoreboard objective as **cents** (e.g. `$12.34` is stored as `1234`).
* Ranking values are mirrored to the `money_rank` objective for reference/debugging.

## Quick start

1. Copy the `DataPackBasic` folder into your world's `datapacks` directory.
2. Run `/reload` in-game (or disable/enable the datapack) so the load function creates the objectives.
3. Execute `/function money:lb/create` while standing where you want the floating leaderboard to appear.
4. Use the commands below—or `/function money:debug/help` for a clickable list—to award players money and verify the board updates.

### Useful scoreboard commands

| Purpose | Command |
| --- | --- |
| Create the objective manually (if removed) | `/scoreboard objectives add money dummy "Money"` |
| Give a player money | `/scoreboard players add <player> money <cents>` |
| Set a player's balance | `/scoreboard players set <player> money <cents>` |
| Remove money from a player | `/scoreboard players remove <player> money <cents>` |
| Display your current balance | `/scoreboard players get <player> money` |
| Check a player's rank (after an update) | `/scoreboard players get <player> money_rank` |

Replace `<player>` with a name or selector (for example, `@p`). Remember to convert dollars to cents when entering amounts.

## Leaderboard management functions

| Action | Command |
| --- | --- |
| Create (or move) the floating leaderboard two blocks above you | `/function money:lb/create` |
| Force an immediate leaderboard refresh | `/function money:admin/refresh` |
| Destroy the floating leaderboard entity | `/function money:lb/destroy` |
| Reset all balances and rankings | `/function money:admin/reset` |

The leaderboard updates automatically every tick while a `money.leaderboard` text display entity exists.

## Debug and testing helpers

Run `/function money:debug/help` to print a clickable list of the most useful commands (including scoreboard snippets). Key functions:

| Action | Command |
| --- | --- |
| Print diagnostics, preview the board text, and dump storage | `/function money:debug/report` |
| Assign sample balances (in cents) to up to five nearby players | `/function money:debug/seed_demo` |
| Clear the balances created by the demo seeding tool | `/function money:debug/clear_demo` |

### Suggested demo workflow

1. `/function money:debug/seed_demo` – sets staged balances on players currently online (in descending order of proximity).
2. `/function money:debug/report` – shows your balance, current leaderboard status, and the raw storage payload.
3. `/function money:debug/clear_demo` – removes the staged balances and related helper tags when you are done testing.

## Notes

* The leaderboard lists up to the top ten players with the highest balances, formatting values as `$X.XX`.
* Players with identical balances keep their order based on the first one found during the update pass.
* You can relocate the leaderboard by destroying it and running `/function money:lb/create` at the new spot.
