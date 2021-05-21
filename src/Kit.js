// 🎨


export const colors =
  { pink: rgb(255, 82, 116)
  , pink_tint: rgb(244, 220, 225)
  , pink_shade: rgb(145, 81, 94)

  //
  , purple: rgb(100, 70, 250)
  , purple_tint: rgb(218, 210, 254)
  , purple_shade: rgb(84, 73, 140)

  //
  , yellow: rgb(255, 179, 57)

  //
  , neutral_1: rgb(30, 35, 71)
  , neutral_2: rgb(62, 65, 92)
  , neutral_3: rgb(120, 122, 143)
  , neutral_4: rgb(165, 167, 184)
  , neutral_5: rgb(206, 208, 224)
  , neutral_6: rgb(235, 236, 245)

  // Older gray tints.
  // NOTE: Might be removed sometime in the future
  , gray_100: rgb(30, 35, 71)
  , gray_200: rgb(62, 65, 92)
  , gray_300: rgb(120, 122, 143)
  , gray_400: rgb(165, 167, 184)
  , gray_500: rgb(206, 208, 224)
  , gray_600: rgb(235, 236, 245)
  , gray_700: rgb(242, 242, 249)
  , gray_800: rgb(245, 245, 251)
  , gray_900: rgb(246, 247, 252)

  // Darkness
  ///////////
  , darkness_below: hsl(232.7, 20.3, 11)
  , darkness: hsl(232.7, 20.3, 12)
  , darkness_above: hsl(232.7, 20.3, 18)

  // Marker
  /////////
  , marker_yellow: rgb(255, 239, 143)
  , marker_yellow_tint: rgb(255, 248, 206)
  , marker_yellow_shade: rgb(79, 74, 44)

  // Basic
  ////////
  , black: rgb(0, 0, 0)
  , green: rgb(61, 191, 83)
  , red: rgb(191, 61, 87)
  , white: rgb(255, 255, 255)
  }


export const primaryColor =
    colors.purple


export const secondaryColor =
    colors.pink


export function hsl(h, s, l) {
  return `hsl(${h}, ${s}%, ${l}%)`
}


export function rgb(r, g, b) {
  return `rgb(${r}, ${g}, ${b})`
}



// FONTS


export const fonts =
    { body: "Karla"
    , display: "Karrik"
    , mono: "Fira Code"
    }


/**
 * @font-face rules as objects so you can use them in,
 * for example, your Tailwind configuration.
 *
 *     plugin(function({ addBase }) {
 *        kit.fontFaces({ fontsPath: "fonts/" }).forEach(fontFace => {
 *          addBase({ "@font-face": fontFace })
 *        })
 *     })
 */
export function fontFaces(fontsPath) {
  const base = fontsPath.replace(/\/+$/, "")

  return [

    // Body

    {
      fontFamily: "Karla",
      fontStyle: "normal",
      fontWeight: "1 999",
      src: `url("${fontsPath}/karla-roman-vf.woff2") format("woff2-variations")`
    },
    {
      fontFamily: "Karla",
      fontStyle: "italic",
      fontWeight: "1 999",
      src: `url("${fontsPath}/karla-italic-vf.woff2") format("woff2-variations")`
    },

    // Display

    {
      fontFamily: "Karrik",
      fontStyle: "normal",
      fontWeight: "400",
      src: `url("${fontsPath}/karrik-regular.woff2") format("woff2")`
    },
    {
      fontFamily: "Karrik",
      fontStyle: "italic",
      fontWeight: "400",
      src: `url("${fontsPath}/karrik-italic.woff2") format("woff2")`
    },

    // Mono

    {
      fontFamily: "Fira Code",
      fontStyle: "normal",
      fontWeight: "1 999",
      src: `url("${fontsPath}/firacode-roman-vf.woff2") format("woff2-variations")`
    }

  ]
}



// MISC


/**
 * Replaces all underscores with a dash in the keys of an object.
 * @param {Object.<string, *>}
 * @returns {Object.<string, *>}
 */
export function dasherizeObjectKeys(object) {
  const entries = Object.entries(object)
  const transformedEntries = entries.map(
    ([k, v]) => [ k.replace(/_/g, "-"), v ]
  )

  return Object.fromEntries(transformedEntries)
}
