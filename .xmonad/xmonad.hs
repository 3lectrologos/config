import XMonad
import XMonad.Layout.Spacing
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig
import XMonad.Hooks.SetWMName
import XMonad.Layout.NoBorders

main = xmonad $ defaultConfig
        { startupHook = setWMName "LG3D"
        , modMask = mod4Mask
        , terminal = "gnome-terminal"
        , layoutHook = layout
        , borderWidth = 1
        , normalBorderColor = "#000000"
        , focusedBorderColor = "#22CC77"
        }
        `additionalKeysP`
        [ ("M1-S-<Up>", spawn "setxkbmap us")
        , ("M1-S-<Down>", spawn "setxkbmap gr")
        ]
        
layout = (spacing 7 $ Tall 1 (3/100) (1/2)) ||| noBorders Full