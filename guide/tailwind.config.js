const plugin = require("tailwindcss/plugin")
const kit = require("@fission-suite/kit")


module.exports = {
  mode: "jit",
  darkMode: "media",


  purge: [
    "dist/**/*.js"
  ],


  theme: {

    colors: {
      ...kit.dasherizeObjectKeys(kit.colors),

      current: "currentColor",
      inherit: "inherit",
      transparent: "transparent",
    },

    fontFamily: kit.fonts,

    extend: {
      fontSize: kit.fontSizes
    }

  },


  plugins: [

    // Add custom font
    plugin(function({ addBase }) {
      kit.fontFaces({ fontsPath: "/fonts/" }).forEach(fontFace => {
        addBase({ "@font-face": fontFace })
      })
    })

  ]

}
