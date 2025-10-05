# Money Leaderboard Data Pack

This data pack adds a persistent, floating money leaderboard that updates automatically from a scoreboard-based currency system.

## Currency storage

* Player balances are stored in the `money` scoreboard objective as **cents** (e.g. `$12.34` is stored as `1234`).
* Ranking values are mirrored to the `money_rank` objective for reference/debugging.

### Useful scoreboard commands

| Purpose | Command |
| --- | --- |
| Create the objective manually (if removed) | `/scoreboard objectives add money dummy "Money"` |
| Give a player money | `/scoreboard players add <player> money <cents>` |
| Set a player's balance | `/scoreboard players set <player> money <cents>` |
| Remove money from a player | `/scoreboard players remove <player> money <cents>` |
| Display your current balance | `/scoreboard players get <player> money` |

Replace `<player>` with a name or selector (for example, `@p`). Remember to convert dollars to cents when entering amounts.

## Leaderboard management functions

| Action | Command |
| --- | --- |
| Create (or move) the floating leaderboard two blocks above you | `/function money:lb/create` |
| Force an immediate leaderboard refresh | `/function money:admin/refresh` |
| Destroy the floating leaderboard entity | `/function money:lb/destroy` |
| Reset all balances and rankings | `/function money:admin/reset` |

The leaderboard updates automatically every tick while a `money.leaderboard` text display entity exists.

## Notes

* The leaderboard lists up to the top ten players with the highest balances, formatting values as `$X.XX`.
* Players with identical balances keep their order based on the first one found during the update pass.
* You can relocate the leaderboard by destroying it and running `/function money:lb/create` at the new spot.
