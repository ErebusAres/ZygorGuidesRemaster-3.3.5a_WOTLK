# Zygor Guides Viewer Remaster 3.0.228

This release improves corpse-arrow reliability and the legacy guide picker's submenu behavior.

- Corpse coordinates are retried every 0.5 seconds when they are not available during the initial death event.
- An existing corpse arrow is restored if a normal guide waypoint replaces it while the player remains dead.
- Corpse-arrow retry remains disabled in battlegrounds and arenas, matching the existing behavior.
- Expandable legacy guide-picker rows now require a 0.4-second sustained hover before switching submenus.
- Quick settings and other dropdown menus retain their immediate response.
