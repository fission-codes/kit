module View exposing (view)

import Html
import Html.Attributes as A
import Kit.Chunky exposing (..)
import Kit.Components exposing (ButtonSize(..))
import Radix exposing (..)



-- 🖼


view _ =
    [ chunk
        Html.h1
        [ "font-display"
        , "font-bold"
        , "mb-10"
        , "text-4xl"
        ]
        []
        [ Html.text "Fission Styleguide" ]

    -----------------------------------------
    -- Generic button
    -----------------------------------------
    , component
        "Button"
        [ Kit.Components.button
            ExtraSmall
            [ A.class "bg-pink mr-2 text-xs text-white" ]
            [ Html.text "Button" ]
        , Kit.Components.button
            Small
            [ A.class "bg-pink mr-2 text-sm text-white" ]
            [ Html.text "Button" ]
        , Kit.Components.button
            Normal
            [ A.class "bg-pink text-white" ]
            [ Html.text "Button" ]
        ]
        [ Html.text "A good ol' button." ]

    -----------------------------------------
    -- Sign in button
    -----------------------------------------
    , component
        "Sign in button"
        [ Kit.Components.signIn
            [ A.class "bg-purple text-white" ]
        ]
        [ Html.text "Default \"Sign in with Fission\" button."
        , lineBreak
        , Html.text "Requires you to set the background color and text color."
        ]
    ]
        |> chunk Html.div
            [ "font-body"
            , "max-w-screen-md"
            , "px-8"
            , "py-10"
            , "text-base-800"
            ]
            []
        |> List.singleton


component title pieces notes =
    chunk
        Html.div
        [ "mb-8" ]
        []
        [ chunk
            Html.h2
            [ "mb-3"
            , "text-xl"
            ]
            []
            [ Html.text title ]
        , chunk
            Html.p
            [ "mb-6"
            , "mt-3"
            , "opacity-50"
            , "text-sm"
            ]
            []
            notes
        , chunk
            Html.div
            [ "bg-base-200"
            , "flex"
            , "items-center"
            , "justify-center"
            , "overflow-hidden"
            , "px-4"
            , "py-10"
            , "rounded"
            ]
            []
            pieces
        ]


lineBreak =
    Html.br [] []
