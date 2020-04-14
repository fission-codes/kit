// 🎨


export const colors =
  { pink: rgb(255, 82, 116)
  , purple: rgb(100, 70, 250)

  //
  , gray_100: rgb(30, 35, 71)
  , gray_200: rgb(62, 65, 92)
  , gray_300: rgb(120, 122, 143)
  , gray_400: rgb(165, 167, 184)
  , gray_500: rgb(206, 208, 224)
  , gray_600: rgb(235, 236, 245)
  , gray_700: rgb(242, 242, 249)
  , gray_800: rgb(245, 245, 251)
  , gray_900: rgb(246, 247, 252)

  // Lighter
  // -------
  , pink_tint: rgb(244, 220, 225)
  , purple_tint: rgb(218, 210, 254)

  // Darker
  // ------
  , pink_shade: rgb(145, 81, 94)
  , purple_shade: rgb(84, 73, 140)

  //
  , darkness_below: hsl(232.7, 20.3, 11)
  , darkness: hsl(232.7, 20.3, 12)
  , darkness_above: hsl(232.7, 20.3, 18)

  // Basic
  // -----
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
    , display: "Work Sans"
    , mono: "Space Mono"
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
