# ZygorGuidesViewerRM 3.0.235

- Resolves dead-on-login corpse coordinates to a real zone when the client initially reports map zone `0`.
- Initializes the deferred classic Zygor option panels when Blizzard Interface Options is opened, so they remain available after each login.
- Avoids rendering and immediately rebuilding the embedded Guide Manager options while its frame is still hidden.
- Keeps deeper legacy guide submenus cascading away from earlier menu levels while screen space allows.
- Adds focused regression coverage for all four paths.

The supplied native crash report still identifies no addon function, so the options-render cleanup is a targeted compatibility improvement rather than a claim that every ERROR #132 cause is resolved. Please continue to use the classic options path if the old client still crashes and attach the matching crash report.

Thanks to wazerstar for the detailed videos, corpse-coordinate probe, and repeated compatibility testing.
