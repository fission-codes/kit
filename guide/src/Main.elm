module Main exposing (..)

import Browser
import Radix exposing (..)
import State
import View



-- ⛩


main : Program Flags Model Msg
main =
    Browser.document
        { init = State.init
        , subscriptions = State.subscriptions
        , update = State.update
        , view = view
        }



-- 🖼


view : Model -> Browser.Document Msg
view model =
    { title = "Contacts"
    , body = View.view model
    }
