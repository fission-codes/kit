# UI Kit

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/fission-suite/blob/master/LICENSE)
[![Built by FISSION](https://img.shields.io/badge/⌘-Built_by_FISSION-purple.svg)](https://fission.codes)
[![Discord](https://img.shields.io/discord/478735028319158273.svg)](https://discord.gg/zAQBDEq)
[![Discourse](https://img.shields.io/discourse/https/talk.fission.codes/topics)](https://talk.fission.codes)

__The Fission UI Kit__,  
_designed to be used with [Tailwind CSS](https://tailwindcss.com)._


## Getting Started

### Step one, install dependencies.

* `npm install fission-kit`  
  _TODO: publish on NPM._  
  _Use library as a Github dependency for now (ie. `fission-suite/kit`)._
* `npm install tailwindcss`
* Copy the font files.  
  `cp -R node_modules/fission-kit/fonts/ ./vendor/fonts/`  
  _TODO: Make a copy-fonts command._


### Step two, configure Tailwind CSS.

We need to configure Tailwind CSS to use the Fission colors and fonts.  

```js
import plugin from "tailwindcss/plugin"
import * as kit from "fission-kit"
// or kit = require("fission-kit")

export default {
  theme: {
    colors: kit.dasherizeObjectKeys(kit.colors),
    fontFamily: kit.fonts
  },
  plugins: [
    plugin(function({ addBase }) {
      kit.fontFaces({ fontsPath: "/fonts/" }).forEach(fontFace => {
        addBase({ "@font-face": fontFace })
      })
    })
  ]
}
```

See the [`guide`](./guide/) for an example configuration,  
and how to use the Elm library.


### Step three, use the component library.

#### React

TODO.

#### Elm

```shell
# TODO: Publish Elm package
# elm install fission-kit
```

Use in an Elm application using either [elm-git-install](https://github.com/Skinney/elm-git-install) or a git submodule.

```elm
import Kit.Components

Kit.Components.signIn [ class "bg-purple text-white text-opacity-90" ]
```
