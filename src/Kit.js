// 🎨


/**
 * Colors dictionary.
 */
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

  // Base
  ///////
  , base_25: rgb(246, 247, 252)
  , base_50: rgb(245, 245, 251)
  , base_100: rgb(242, 242, 249)
  , base_200: rgb(235, 236, 245)
  , base_300: rgb(206, 208, 224)
  , base_400: rgb(165, 167, 184)
  , base_500: rgb(120, 122, 143)
  , base_600: rgb(62, 65, 92)
  , base_700: rgb(30, 35, 71)
  , base_800: rgb(37, 39, 55)
  , base_900: rgb(24, 26, 37)
  , base_950: rgb(22, 24, 34)

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


/**
 * hsl css color function.
 * @param {number} h
 * @param {number} s
 * @param {number} l
 * @returns {string}
 */
export function hsl(h, s, l) {
  return `hsl(${h}, ${s}%, ${l}%)`
}


/**
 * rgb css color function.
 * @param {number} r
 * @param {number} g
 * @param {number} b
 * @returns {string}
 */
export function rgb(r, g, b) {
  return `rgb(${r}, ${g}, ${b})`
}



// FONTS


/**
 * Fonts dictionary.
 */
export const fonts =
  { body: "Karla"
  , display: "JetBrains Mono"
  , mono: "Fira Code"
  }


/**
 * Additional font sizes, on top of the default Tailwind set.
 *
 * Tiny = Between xs & sm (13px based on default 16px)
 * Slight = Just below normal (ie. between sm & base, 15px based on default 16px)
 */
export const fontSizes =
  { tiny: "0.8125rem"
  , slight: "0.9375rem"
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
 *
 * NOTE: The `fontsPath` is the path to your fonts **relative from the stylesheet**
 * you loaded in.
 *
 * For example, say your URL for your index.html file is `domain.io/about/`,
 * your stylesheet lives on the root and the fonts live at `domain.io/fonts/`.
 * That means the HTML will refer to the stylesheet using `../stylesheet.css`
 * and the `fontsPath` will be `fonts/`.
 *
 * That said, you can always use an absolute URL if you're unsure.
 *
 * @param {Object} options
 * @param {string} options[].fontsPath - Relative path to font files.
 * @returns {Object[]}
 */
export function fontFaces({ fontsPath }) {
  const base = fontsPath.replace(/\/+$/, "")

  return [

    // Body

    {
      fontDisplay: "swap",
      fontFamily: "Karla",
      fontStyle: "normal",
      fontWeight: "1 999",
      src: `url("${base}/karla-roman-vf.woff2") format("woff2-variations")`
    },
    {
      fontDisplay: "swap",
      fontFamily: "Karla",
      fontStyle: "italic",
      fontWeight: "1 999",
      src: `url("${base}/karla-italic-vf.woff2") format("woff2-variations")`
    },

    // Display

    {
      fontDisplay: "swap",
      fontFamily: "JetBrains Mono",
      fontStyle: "normal",
      fontWeight: "1 999",
      src: `url("${base}/jetbrainsmono-roman-vf.woff2") format("woff2-variations")`
    },
    {
      fontDisplay: "swap",
      fontFamily: "JetBrains Mono",
      fontStyle: "italic",
      fontWeight: "1 999",
      src: `url("${base}/jetbrainsmono-italic-vf.woff2") format("woff2-variations")`
    },

    // Mono

    {
      fontDisplay: "swap",
      fontFamily: "Fira Code",
      fontStyle: "normal",
      fontWeight: "1 999",
      src: `url("${base}/firacode-roman-vf.woff2") format("woff2-variations")`
    }

  ]
}



// MISC


/**
 * Replaces all underscores with a dash in the keys of an object.
 * @param {Object.<string, *>} object
 * @returns {Object.<string, *>}
 */
export function dasherizeObjectKeys(object) {
  const entries = Object.entries(object)
  const transformedEntries = entries.map(
    ([k, v]) => [ k.replace(/_/g, "-"), v ]
  )

  return Object.fromEntries(transformedEntries)
}


/**
 * To be used in the Tailwind `purge` config property.
 * @param {string} [kitDir=./node_modules/@fission-suite/kit] - Path to NPM module relative from your project's root directory.
 */
export function tailwindPurgeList(kitDir) {
  kitDir = (kitDir || "./node_modules/@fission-suite/kit").replace(/\/+$/, "")

  return [
    kitDir + "/src/Components/Classes.json",
    kitDir + "/src/Components/React/**/*.jsx"
  ]
}
