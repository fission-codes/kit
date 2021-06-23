module Kit.Chunky exposing (chunk)

{-|

@docs chunk

-}

import Html exposing (Html)
import Html.Attributes as A


{-| Function for easier styling using classes.

    chunk
        Html.a
        [ "underline", "text-blue" ]
        [ href "" ]
        [ Html.text "" ]

Is the same as:

    Html.a
        [ class "underline text-blue", href "" ]
        [ Html.text "" ]

-}
chunk : (List (Html.Attribute msg) -> List (Html msg) -> Html msg) -> List String -> List (Html.Attribute msg) -> List (Html msg) -> Html msg
chunk node classes a =
    node
        (A.class (String.join " " classes) :: a)
