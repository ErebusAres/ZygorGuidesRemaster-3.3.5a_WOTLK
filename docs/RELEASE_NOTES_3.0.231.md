# ZygorGuidesViewerRM 3.0.231

- Supports both arrival (`< distance`) and departure (`> distance`) coordinate conditions in maintained guide syntax.
- Keeps the comparison direction through parsing and goal completion instead of treating `>` as an ordinary arrival radius.
- Includes regression coverage for both forms and the Razaan's Landing flight departure step.

Thanks to Tntdruid for identifying and supplying the parser example that led to this fix.
