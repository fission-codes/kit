# Elm UI Kit

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/fission-suite/blob/master/LICENSE)
[![Built by FISSION](https://img.shields.io/badge/⌘-Built_by_FISSION-purple.svg)](https://fission.codes)
[![Discord](https://img.shields.io/discord/478735028319158273.svg)](https://discord.gg/zAQBDEq)
[![Discourse](https://img.shields.io/discourse/https/talk.fission.codes/topics)](https://talk.fission.codes)

A UI Kit for Fission projects built in Elm.

# QuickStart

Use in an Elm application using either [elm-git-install](https://github.com/Skinney/elm-git-install) or a git submodule.

```elm
import Element
import Element.Font
import Kit

Element.el
  [ Element.Font.color Kit.colors.pink
  , Element.Font.color Kit.colors.purple
  , Element.Font.family Kit.fonts.body
  , Element.Font.family Kit.fonts.display
  , Element.Font.family Kit.fonts.mono
  , Element.Font.size (Kit.scales.typography 1)
  , Element.padding (Kit.scales.spacing 8)
  ]

Kit.link
  { url = "https://github.com/fission-suite/elm-kit"
  , label = "Elm Kit"
  }
```
