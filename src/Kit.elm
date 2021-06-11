module Kit exposing
    ( colors, primaryColor, secondaryColor, hsl, rgb
    , fonts
    )

{-| Fission Kit.


# 🎨

@docs colors, primaryColor, secondaryColor, hsl, rgb


# Fonts

@docs fonts

-}

import Color exposing (Color)



-- 🎨


colors : { pink : Color, pink_tint : Color, pink_shade : Color, purple : Color, purple_tint : Color, purple_shade : Color, yellow : Color, base_25 : Color, base_50 : Color, base_100 : Color, base_200 : Color, base_300 : Color, base_400 : Color, base_500 : Color, base_600 : Color, base_700 : Color, base_800 : Color, base_900 : Color, base_950 : Color, marker_yellow : Color, marker_yellow_tint : Color, marker_yellow_shade : Color, black : Color, green : Color, red : Color, white : Color }
colors =
    { pink = rgb 255 82 116
    , pink_tint = rgb 244 220 225
    , pink_shade = rgb 145 81 94

    --
    , purple = rgb 100 70 250
    , purple_tint = rgb 218 210 254
    , purple_shade = rgb 84 73 140

    --
    , yellow = rgb 255 179 57

    -- Base
    -------
    , base_25 = rgb 246 247 252
    , base_50 = rgb 245 245 251
    , base_100 = rgb 242 242 249
    , base_200 = rgb 235 236 245
    , base_300 = rgb 206 208 224
    , base_400 = rgb 165 167 184
    , base_500 = rgb 120 122 143
    , base_600 = rgb 62 65 92
    , base_700 = rgb 30 35 71
    , base_800 = rgb 37 39 55
    , base_900 = rgb 24 26 37
    , base_950 = rgb 22 24 34

    -- Marker
    ---------
    , marker_yellow = rgb 255 239 143
    , marker_yellow_tint = rgb 255 248 206
    , marker_yellow_shade = rgb 79 74 44

    -- Basic
    --------
    , black = rgb 0 0 0
    , green = rgb 61 191 83
    , red = rgb 191 61 87
    , white = rgb 255 255 255
    }


primaryColor : Color
primaryColor =
    colors.purple


secondaryColor : Color
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
rgb : Int -> Int -> Int -> Color
rgb =
    Color.rgb255



-- FONTS


fonts : { body : String, display : String, mono : String }
fonts =
    { body = "Karla"
    , display = "JetBrains Mono"
    , mono = "Fira Code"
    }
