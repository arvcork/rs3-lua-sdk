# RS3 Lua SDK

A starting point for developing RS3 Lua plugins, with Lua type definitions and an example plugin.

## Project structure

- `types/rs3/` — Lua API type definitions (currently placeholders).
- `examples/inventory-example/` — an example inventory plugin.
- `.luarc.json` — Lua Language Server configuration for Lua 5.4.

## Getting started

Open the repository root in an editor with Lua Language Server installed. The included configuration points the language server at `types/rs3/`. The type definition files are currently empty and need API declarations before they can provide completion or type checking.

See `examples/inventory-example/` for the example plugin and its sample `plugin.json`.
