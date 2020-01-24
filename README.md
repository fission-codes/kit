# UI Kit

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/fission-suite/blob/master/LICENSE)
[![Built by FISSION](https://img.shields.io/badge/⌘-Built_by_FISSION-purple.svg)](https://fission.codes)
[![Discord](https://img.shields.io/discord/478735028319158273.svg)](https://discord.gg/zAQBDEq)
[![Discourse](https://img.shields.io/discourse/https/talk.fission.codes/topics)](https://talk.fission.codes)

A UI Kit for Fission projects.


## Tailwind CSS

[Website](https://tailwindcss.com)

_package.json_

```json
{
  "devDependencies": {
    "fission-kit": "fission-suite/kit"
  }
}
```

_tailwind.config.js_

```js
import * as kit from "fission-kit"

export default {
  theme: {
    // Use Fission color palette instead of Tailwind's
    colors: kit.colors
  }
}
```


## Elm

[Website](https://elm-lang.org)

Use in an Elm application using either [elm-git-install](https://github.com/Skinney/elm-git-install) or a git submodule.

```elm
import Kit

Kit.colors.purple
```
