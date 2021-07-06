#!/usr/bin/env node

import path from "path"
import meow from "meow"
import { execSync } from "child_process"
import { fileURLToPath } from "url"


const cli = meow(`
  Usage
    $ copy-fission-images <destination>

  Examples
    $ copy-fission-images ./vendor/images/
`, {
  importMeta: import.meta,
  flags: {}
})


if (!cli.input[0]) {
  cli.showHelp(0)
}


const kitDir = path.dirname(fileURLToPath(import.meta.url))
const imagesDir = path.resolve(kitDir, "../images/")
const destDir = path.resolve(path.resolve(), cli.input[0])


const execOpts = {
  cwd: kitDir
}


execSync(`npx copyfiles --flat "${path.join(imagesDir, "**/*.*")}" "${destDir}"`, execOpts)
