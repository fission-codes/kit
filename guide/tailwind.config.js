const plugin = require("tailwindcss/plugin")
const kit = require("@fission-suite/kit")


module.exports = {
  mode: "jit",
  darkMode: "media",


  purge: {
    content: [ "dist/*.js" ],
    safelist: [
      "animate-loading-bugfix-placeholder-rotate",
      "animate-loading-bugfix-placeholder-line-1",
      "animate-loading-bugfix-placeholder-line-2",
      "animate-loading-bugfix-placeholder-line-3",
      "animate-loading-bugfix-placeholder-line-4",
    ]
  },


  theme: {

    colors: {
      ...kit.dasherizeObjectKeys(kit.colors),

      current: "currentColor",
      inherit: "inherit",
      transparent: "transparent",
    },

    fontFamily: kit.fonts,

    extend: {
      keyframes: kit.keyframes,
      animation: kit.animations,
      fontSize: kit.fontSizes,
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
