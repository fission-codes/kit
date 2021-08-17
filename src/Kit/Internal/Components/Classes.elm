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


loadingAnimationLines : LoadingAnimationLines
loadingAnimationLines =
    { all = "absolute h-full opacity-0 w-full"
    , one = "animate-loading-line-1 border-purple"
    , two = "animate-loading-line-2 border-purple-tint dark:border-purple-shade"
    , three = "animate-loading-line-3 border-base-300 dark:border-base-600"
    , four = "animate-loading-line-4 border-base-400 dark:border-base-500"
    }


loadingAnimationInner : LoadingAnimationInner
loadingAnimationInner =
    { all = "absolute border-box border h-full inset-0"
    , one = "animate-loading-left-spin"
    , two = "animate-none"
    , three = "animate-loading-right-spin"
    }


loadingAnimation : LoadingAnimation
loadingAnimation =
    { container = "animate-loading relative"
    , lines = loadingAnimationLines
    , ticker = "absolute box-border h-full overflow-hidden top-0"
    , cog = "h-full inline-block overflow-hidden relative w-1/2"
    , inner = loadingAnimationInner
    }


loadingIndicator : LoadingIndicator
loadingIndicator =
    { container = "flex flex-col items-center"
    , text = "italic mt-4 opacity-60"
    }


loadingScreen : LoadingScreen
loadingScreen =
    { container = "from-base-100 to-base-300 flex flex-col items-center justify-center"
    , nodes = "max-w-sm mb-10"
    }


loading : Loading
loading =
    { animation = loadingAnimation
    , indicator = loadingIndicator
    , screen = loadingScreen
    }


root : Root
root =
    { buttons = buttons
    , appNames = appNames
    , loading = loading
    }
