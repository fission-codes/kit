module Kit exposing (..)

import Color



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

    -- Generated
    ------------
    , darkPink = rgb 191 61 87
    , green = rgb 61 191 83

    -- Basic
    --------
    , black = rgb 0 0 0
    , white = rgb 255 255 255
    }


primaryColor =
    colors.purple


secondaryColor =
    colors.pink


rgb =
    Color.rgb255



-- FONTS


fonts =
    { body = "Karla"
    , display = "Work Sans"
    , mono = "Space Mono"
    }
