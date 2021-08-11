module Kit.Components exposing
    ( ButtonSize(..), button
    , appName, fissionIcon, loadingAnimation, loadingIndicator, loadingScreen, signIn
    )

{-|


# Generic

@docs ButtonSize, button


# Specific

@docs appName, fissionIcon, loadingAnimation, loadingIndicator, loadingScreen, signIn

-}

import Html exposing (Html)
import Html.Attributes as A
import Kit
import Kit.Chunky exposing (..)
import Kit.Internal exposing (..)
import Kit.Internal.Components.Classes as Classes exposing (..)
import Svg exposing (Svg)
import Svg.Attributes as S



-- GENERIC


{-| -}
type ButtonSize
    = ExtraSmall
    | Small
    | Normal
    | Tag


{-| -}
button : ButtonSize -> List (Html.Attribute msg) -> List (Html msg) -> Html msg
button btnSize attributes nodes =
    chunk
        Html.button
        [ buttons.base
        , case btnSize of
            ExtraSmall ->
                buttons.genericExtraSmall

            Small ->
                buttons.genericSmall

            Normal ->
                buttons.generic

            Tag ->
                buttons.genericTag
        ]
        attributes
        nodes



-- SPECIFIC  /  LOADING


{-| -}
loadingAnimation attributes =
    let
        inner number =
            chunk
                Html.div
                [ "absolute"
                , "border-box"
                , "border-2"
                , "h-full"
                , "inset-0"

                --
                , if number == 1 then
                    "animate-loading-left-spin"

                  else if number == 3 then
                    "animate-loading-right-spin"

                  else
                    "animate-none"
                ]
                [ A.style "border-color" "inherit"
                , A.style "border-bottom-color" "transparent"
                , A.style "border-radius" "50%"
                , A.style "border-type" "solid"

                --
                , if number == 2 then
                    A.style "width" "1000%"

                  else
                    A.style "width" "200%"

                --
                , if number == 2 then
                    A.style "left" "-450%"

                  else if number == 3 then
                    A.style "left" "-100%"

                  else
                    A.style "left" "0"

                --
                , if number == 1 then
                    A.style "border-right-color" "transparent"

                  else if number == 3 then
                    A.style "border-left-color" "transparent"

                  else
                    A.style "" ""

                --
                , if number == 1 then
                    A.style "transform" "rotate(129deg)"

                  else if number == 3 then
                    A.style "transform" "rotate(-129deg)"

                  else
                    A.style "" ""
                ]
                []

        cog number =
            chunk
                Html.div
                [ "h-full"
                , "inline-block"
                , "overflow-hidden"
                , "relative"
                , "w-1/2"
                ]
                [ A.style "border-color" "inherit" ]
                [ inner number ]

        ticker =
            chunk
                Html.div
                [ "absolute"
                , "box-border"
                , "h-full"
                , "overflow-hidden"
                , "top-0"
                ]
                [ A.style "border-color" "inherit"
                , A.style "left" "45%"
                , A.style "width" "10%"
                ]
                [ inner 2
                ]

        line number =
            chunk
                Html.div
                [ "absolute"
                , "h-full"
                , "opacity-0"
                , "w-full"

                --
                , case number of
                    1 ->
                        "border-purple"

                    2 ->
                        "border-base-300 dark:border-base-600"

                    3 ->
                        "border-pink"

                    4 ->
                        "border-base-300 dark:border-base-600"

                    _ ->
                        ""

                --
                , case number of
                    1 ->
                        "animate-loading-line-1"

                    2 ->
                        "animate-loading-line-2"

                    3 ->
                        "animate-loading-line-3"

                    4 ->
                        "animate-loading-line-4"

                    _ ->
                        ""
                ]
                []
                [ cog 1
                , ticker
                , cog 3
                ]
    in
    chunk
        Html.div
        [ "animate-loading"
        , "relative"
        ]
        (List.append
            [ A.style "font-size" "0"
            , A.style "line-height" "0"
            ]
            attributes
        )
        [ line 1
        , line 2
        , line 3
        , line 4
        ]


{-| -}
loadingIndicator : String -> Html msg
loadingIndicator loadingText =
    chunk
        Html.div
        [ "flex"
        , "flex-col"
        , "items-center"
        ]
        []
        [ loadingAnimation
            [ A.class "h-7 w-7" ]
        , chunk
            Html.div
            [ "italic"
            , "mt-4"
            , "opacity-60"
            ]
            []
            [ Html.text loadingText ]
        ]


{-| -}
loadingScreen : List (Html.Attribute msg) -> { logo : Html msg } -> Html msg
loadingScreen attributes { logo } =
    chunk
        Html.div
        [ "flex"
        , "flex-col"
        , "items-center"
        , "justify-center"
        ]
        attributes
        [ chunk
            Html.div
            [ "max-w-sm"
            , "mb-10"
            ]
            []
            [ logo ]
        , loadingAnimation
            [ A.class "h-7 w-7" ]
        ]



-- SPECIFIC


{-| -}
appName : { large : Bool } -> List (Html.Attribute msg) -> String -> Html msg
appName { large } attributes text =
    chunk
        Html.h1
        [ appNames.base
        , ifThenElse large appNames.large appNames.normal
        ]
        attributes
        [ fissionIcon { size = ifThenElse large 23 18 }
        , chunk
            Html.span
            [ "inline-block", "ml-2" ]
            (if large then
                [ A.style "padding-left" "2px" ]

             else
                []
            )
            [ Html.text text ]
        ]


{-| -}
fissionIcon : { size : Float } -> Svg msg
fissionIcon { size } =
    Svg.svg
        [ S.viewBox "0 0 641.09 640"
        , S.height (String.fromFloat size)
        , S.width (String.fromFloat <| size * (641.09 / 640))
        ]
        [ Svg.path
            [ S.d "m524.87 369.61c-30.59 0-58.73 11-79.53 33-33-17.13-69.74-30.59-108.89-40.38 4.9-13.45 18.35-55 24.47-73.4a493.34 493.34 0 0 0 61.17 7.34c77.08 6.11 135.81-8.57 173.74-42.82 36.7-34.26 45.26-80.75 45.26-112.56 0-77.04-62.39-140.66-140.69-140.66-4.9 0-48.94-3.67-89.32 28.14-25.69 20.8-58.72 106.44-83.19 177.4a374.46 374.46 0 0 1 -97.89-41.6v-7.34c0-62.39-51.37-113.73-113.77-113.73s-113.78 51.34-113.78 113.73 51.38 113.78 113.78 113.78c30.59 0 58.73-11 79.52-33 33 17.13 69.74 30.59 108.89 40.37-4.89 13.46-18.35 55.06-24.47 73.41a492.88 492.88 0 0 0 -61.17-7.37c-77.08-6.12-135.8 8.57-173.73 42.82-36.71 34.26-45.27 80.75-45.27 112.56 0 77.08 62.4 140.7 140.7 140.7h7.3a137.39 137.39 0 0 0 82-28.14c25.69-20.8 58.73-106.44 83.2-177.4a374.54 374.54 0 0 1 97.87 41.6v7.34c0 62.39 51.39 113.78 113.79 113.78s113.79-51.39 113.79-113.78a113.57 113.57 0 0 0 -113.78-113.79zm47.71-179.84c-24.47 25.69-75.85 35.48-154.16 30.58-11-1.22-22-1.22-33-3.67q34.88-97.26 62.4-150.48c20.8-35.48 44-51.39 66.06-47.72 41.6 8.57 71 83.2 74.64 111.34 2.41 25.69-2.52 45.26-15.94 59.95zm-506.51 259.37c19.57-20.8 58.72-31.81 116.23-31.81 12.23 0 24.47 0 37.92 1.22 11 1.23 22 1.23 33 3.67q-34.87 97.27-62.4 150.49-33 53.22-66.07 47.71c-41.59-8.56-71-83.19-74.63-111.33-2.4-25.69 2.49-45.27 15.95-59.95z"
            , S.fill "currentColor"
            ]
            []
        ]


{-| -}
signIn : List (Html.Attribute msg) -> Html msg
signIn attributes =
    chunk
        Html.button
        [ buttons.base, buttons.generic ]
        attributes
        [ chunk
            Html.span
            [ "mr-2" ]
            []
            [ fissionIcon
                { size = 12 }
            ]
        , Html.text "Sign in with Fission"
        ]
