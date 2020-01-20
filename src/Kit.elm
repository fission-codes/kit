module Kit exposing (..)

import Element exposing (Element)
import Element.Background as Background
import Element.Border as Border
import Element.Extra as Element
import Element.Font as Font
import Element.Region as Region



-- 🏔


{-| Most frequently used border-rounding.
-}
defaultBorderRounding =
    scales.spacing 1


{-| See <https://package.elm-lang.org/packages/mdgriffith/elm-ui/1.1.5/Element#paddingEach>

    Element.paddingEach { edges | top = 1 }

-}
edges : { top : Int, right : Int, bottom : Int, left : Int }
edges =
    { top = 0
    , right = 0
    , bottom = 0
    , left = 0
    }


{-| Alias for `edges`.
-}
none =
    edges



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
    Element.rgb255



-- FONTS


fonts =
    { body =
        [ Font.typeface "Karla"
        , Font.sansSerif
        ]

    --
    , display =
        [ Font.typeface "Work Sans"
        , Font.serif
        ]

    --
    , mono =
        [ Font.typeface "Space Mono"
        , Font.monospace
        ]
    }



-- SCALING


base =
    16


scales =
    { spacing = (*) (0.25 * base) >> round
    , typography = Element.modular base 1.125 >> round
    }



-- 🧱  ░░  BUTTONS


buttonAttributes : List (Element.Attribute msg)
buttonAttributes =
    buttonAttributesWithColor primaryColor


buttonAltAttributes : List (Element.Attribute msg)
buttonAltAttributes =
    buttonAttributesWithColor secondaryColor


buttonAttributesWithColor : Element.Color -> List (Element.Attribute msg)
buttonAttributesWithColor color =
    [ Element.paddingXY (scales.spacing 3) (scales.spacing 3)
    , Background.color color
    , Border.rounded defaultBorderRounding
    , Font.color colors.white
    , Font.size (scales.typography 1)
    ]



-- 🧱


caption : List (Element msg) -> Element msg
caption =
    Element.paragraph
        [ Element.paddingEach { edges | top = scales.spacing 4 }
        , Element.spacing (scales.spacing 1.5)
        , Font.color colors.gray_300
        , Font.size (scales.typography -1)
        ]


captionWithText : String -> Element msg
captionWithText text =
    caption [ Element.textWithLineBreaks text ]


codeBlock : { body : String, language : Maybe String } -> Element msg
codeBlock { body, language } =
    -- TODO
    Element.text body


heading : { level : Int } -> List (Element msg) -> Element msg
heading { level } =
    case level of
        1 ->
            Element.paragraph
                [ Element.spacing (scales.spacing 2)
                , Font.family fonts.display
                , Font.letterSpacing -0.625
                , Font.semiBold
                , Font.size (scales.typography 7)
                , Region.heading level
                ]

        _ ->
            -- TODO
            Element.paragraph
                [ Element.paddingXY 0 (scales.spacing 8)
                , Element.spacing (scales.spacing 2)
                , Font.letterSpacing -0.25
                , Font.size (scales.typography 4)
                , Region.heading level
                ]


inlineCode : String -> Element msg
inlineCode =
    -- TODO
    Element.text


link : { label : Element msg, title : String, url : String } -> Element msg
link attributes =
    Element.link
        [ Font.underline
        , Region.description attributes.title
        ]
        { label = attributes.label
        , url = attributes.url
        }


orderedList : Int -> List (List (Element msg)) -> Element msg
orderedList startIndex items =
    -- TODO
    items
        |> List.indexedMap
            (\idx ->
                Element.column
                    []
            )
        |> Element.column
            []


paragraph : List (Element msg) -> Element msg
paragraph =
    Element.paragraph
        [ Element.spacing (scales.spacing 2) ]


subtleParagraph : List (Element msg) -> Element msg
subtleParagraph =
    Element.paragraph
        [ Element.spacing (scales.spacing 2)
        , Font.color colors.gray_300
        , Font.size (scales.typography 2)
        ]


subtleText : String -> Element msg
subtleText str =
    str
        |> Element.text
        |> Element.el [ Font.color colors.gray_300 ]


unorderedList : List (List (Element msg)) -> Element msg
unorderedList items =
    -- TODO
    items
        |> List.map
            (Element.column
                []
            )
        |> Element.column
            []
