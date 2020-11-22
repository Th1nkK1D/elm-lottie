module Lottie exposing (lottie)
import Html exposing (Html, node)

lottie : List (Html.Attribute msg) -> List (Html msg) -> Html msg
lottie = node "elm-lottie"
