module Kit.Internal.Components.Types exposing (..)


type alias Buttons =
    { base : String
    , generic : String
    , genericSmall : String
    , genericExtraSmall : String
    , genericTag : String
    }


type alias AppNames =
    { base : String
    , normal : String
    , large : String
    }


type alias LoadingAnimationLines =
    { all : String
    , one : String
    , two : String
    , three : String
    , four : String
    }


type alias LoadingAnimationInner =
    { all : String
    , one : String
    , two : String
    , three : String
    }


type alias LoadingAnimation =
    { container : String
    , lines : LoadingAnimationLines
    , ticker : String
    , cog : String
    , inner : LoadingAnimationInner
    }


type alias LoadingIndicator =
    { container : String
    , text : String
    }


type alias LoadingScreen =
    { container : String
    , nodes : String
    }


type alias Loading =
    { animation : LoadingAnimation
    , indicator : LoadingIndicator
    , screen : LoadingScreen
    }


type alias Root =
    { buttons : Buttons
    , appNames : AppNames
    , loading : Loading
    }
