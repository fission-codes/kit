module Kit.Internal.Components.Classes exposing (..)

import Kit.Internal.Components.Types exposing (..)


buttons : Buttons
buttons =
    { base = "font-medium inline-flex items-center justify-center truncate"
    , generic = "leading-relaxed px-5 py-2 rounded-full tracking-tight"
    , genericSmall = "px-3 py-2 rounded text-tiny tracking-wider uppercase"
    , genericExtraSmall = "leading-relaxed px-2 py-1 rounded text-xs tracking-wider uppercase"
    , genericTag = "leading-none px-1 py-1 rounded text-xs"
    }


appNames : AppNames
appNames =
    { base = "font-medium font-display inline-flex items-center tracking-tighter"
    , normal = "text-2xl"
    , large = "text-3xl"
    }


root : Root
root =
    { buttons = buttons
    , appNames = appNames
    }
