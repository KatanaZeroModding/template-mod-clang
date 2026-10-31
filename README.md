# KZM mod template (Lua + C), MIT

Single repo: **`lua/`**, native C in **`src/`**, **`i18n/`** UI + dialogue catalogs, **`./build.sh`** → **`dist/<id>.dll`**.

```bash
kzm init my-mod --clang
./build.sh
kzm build
```

Same i18n layout and Lua hooks as the Rust template ([mod](../mod/)). Default Rust template: **`kzm init`** ([mod](../mod/)).

**Katana ZERO** assets remain **Askiisoft's property** — [community & game IP](docs/COMMUNITY_AND_GAME_IP.md). List bundled third-party files in [THIRD_PARTY.md](THIRD_PARTY.md).
