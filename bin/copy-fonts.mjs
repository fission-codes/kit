#!/usr/bin/env node

import path from "path"
import meow from "meow"
import { execSync } from "child_process"
import { fileURLToPath } from "url"


const cli = meow(`
  Usage
    $ copy-fission-fonts <destination>

  Options
    --ttf           Copy the .ttf font files
    --woff2         Copy the .woff2 font files

  Examples
    $ copy-fission-fonts ./vendor/fonts/ --woff2
`, {
  importMeta: import.meta,
  flags: {
    ttf: {
      type: "boolean",
      default: false
    },
    woff2: {
      type: "boolean",
      default: false
    }
  }
})


if (!cli.input[0]) {
  cli.showHelp(0)
}


const kitDir = path.dirname(fileURLToPath(import.meta.url))
const fontsDir = path.resolve(kitDir, "../fonts/")
const destDir = path.resolve(path.resolve(), cli.input[0])


if (cli.flags.ttf) {
  execSync(`copyfiles --flat "${path.join(fontsDir, "**/*.ttf")}" "${destDir}"`)
}

if (cli.flags.woff2) {
  execSync(`copyfiles --flat "${path.join(fontsDir, "**/*.woff2")}" "${destDir}"`)
}

if (!cli.flags.ttf && !cli.flags.woff2) {
  console.log("Didn't copy any font files, pass one of the options, such as `--woff2`.")
}
