module Lottie exposing (lottie)
import Html exposing (Html, node)
import Html.Attributes exposing (attribute)

type alias LottieConfig =
  { path: String }

lottie : LottieConfig -> List (Html.Attribute msg) -> Html msg
lottie config attributes = 
  let
    combindedAttributes = attributes ++ [ attribute "data-path" config.path ]
  in
  node "elm-lottie" combindedAttributes []
