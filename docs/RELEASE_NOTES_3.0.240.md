# ZygorGuidesViewerRM 3.0.240

- Fixes the movable Auction House launcher disappearing after `/reload` because its saved position and restored anchor used different frame corners.
- Keeps the Zygor launcher attached normally when another addon moves the Blizzard Auction House frame.
- Restricts cursor tracking to deliberate drags that begin on the Zygor launcher itself.
- Adds a default-on `Show Zygor Auction House button` setting that hides only the launcher and applies immediately.
- Adds focused regression coverage for position migration, drag isolation, and visibility behavior.

Thanks to Scrooge's Honey Bin for describing the frame-mover interaction and the reload behavior precisely enough to trace both faults.
