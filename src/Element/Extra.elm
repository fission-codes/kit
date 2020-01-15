module Element.Extra exposing (..)

import Element
import Html
import Html.Attributes
import Html.Events



-- ELEMENTS


{-| `Element.text` ignores line breaks, this does not.
-}
textWithLineBreaks : String -> Element.Element msg
textWithLineBreaks text =
    Element.el
        [ customStyle "white-space" "break-spaces" ]
        (Element.html <| Html.text text)



-- ATTRIBUTES


{-| CSS styling for Elements.
-}
customStyle : String -> String -> Element.Attribute msg
customStyle k v =
    Element.htmlAttribute (Html.Attributes.style k v)


{-| `id` attribute.
-}
id : String -> Element.Attribute msg
id =
    Html.Attributes.id >> Element.htmlAttribute
