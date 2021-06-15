module State exposing (..)

import Radix exposing (..)



-- 🌳


init : Flags -> ( Model, Cmd Msg )
init flags =
    Tuple.pair
        {}
        Cmd.none



-- 📣


update : Msg -> Radix.Manager
update msg model =
    case msg of
        Bypassed ->
            Tuple.pair model Cmd.none



-- 📰


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
