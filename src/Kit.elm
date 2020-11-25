module Kit exposing (..)

import Color exposing (Color, hsl)



-- 🎨


colors =
    { pink = rgb 255 82 116
    , purple = rgb 100 70 250

    --
    , gray_100 = rgb 30 35 71
    , gray_200 = rgb 62 65 92
    , gray_300 = rgb 120 122 143
    , gray_400 = rgb 165 167 184
    , gray_500 = rgb 206 208 224
    , gray_600 = rgb 235 236 245
    , gray_700 = rgb 242 242 249
    , gray_800 = rgb 245 245 251
    , gray_900 = rgb 246 247 252

    -- Lighter
    ----------
    , pink_tint = rgb 244 220 225
    , purple_tint = rgb 218 210 254
    , yellow_tint = rgb 255 248 206

    -- Darker
    ---------
    , pink_shade = rgb 145 81 94
    , purple_shade = rgb 84 73 140
    , yellow_shade = rgb 79 74 44

    --
    , darkness_below = hsl 232.7 20.3 11
    , darkness = hsl 232.7 20.3 12
    , darkness_above = hsl 232.7 20.3 18

    -- Basic
    --------
    , black = rgb 0 0 0
    , green = rgb 61 191 83
    , red = rgb 191 61 87
    , white = rgb 255 255 255
    , yellow = rgb 255 239 143
    }


primaryColor =
    colors.purple


secondaryColor =
    colors.pink


{-| HSL color function.

Which takes the parameters `h`, `s` and `l`.
Where `h` is max 360 (degrees), `s` max 100 (pct) and `l` max 100 (pct) as well.
So given the CSS statement `hsl(232.7, 20.3%, 12%)`, you'd say:

    hsl 232.7 20.3 12

-}
hsl : Float -> Float -> Float -> Color
hsl h s l =
    Color.hsl (h / 360) (s / 100) (l / 100)


{-| RGB color function.

Which takes the parameters `r`, `g` and `b`.
Each of which have a maximum value of 255.
Equivalent to the standard CSS rgb usage.

    rgb 255 255 255

-}
rgb =
    Color.rgb255



-- FONTS


fonts =
    { body = "Karla"
    , display = "Work Sans"
    , mono = "Space Grotesk"
    }
