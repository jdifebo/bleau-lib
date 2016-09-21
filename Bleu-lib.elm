import Html exposing (..)
import Html.App as Html
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)


main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }



-- MODEL


type alias Model =
  { harambe : String
  , ayy : String
  , rip : String
  , twitch : String
  , yt : String
  , reddit : String
  , slashdot : String
  , mmos : String
  , ultima : String
  , asheron : String
  }


model : Model
model =
  Model "harambe" "'ayy'" ":rip:" "a twitch.tv chat" "YT" "reddit" "slashdot" "MMO's" "Ultima" "Asheron's Call"



-- UPDATE


type Msg
    = Harambe String
    | Ayy String
    | Rip String
    | Twitch String
    | Yt String
    | Reddit String
    | Slashdot String
    | Mmos String
    | Ultima String
    | Asheron String


update : Msg -> Model -> Model
update msg model =
  case msg of
    Harambe str ->
      { model | harambe = str }
      
    Ayy str ->
      { model | ayy = str }     

    Rip str ->
      { model | rip = str }       

    Twitch str ->
      { model | twitch = str }       

    Yt str ->
      { model | yt = str }       

    Reddit str ->
      { model | reddit = str }       

    Slashdot str ->
      { model | slashdot = str }       

    Mmos str ->
      { model | mmos = str }       

    Ultima str ->
      { model | ultima = str }       

    Asheron str ->
      { model | asheron = str }       



-- VIEW


view : Model -> Html Msg
view model =
  div [ 
    style 
    [ ("margin", "0 auto")
    , ("max-width", "30em")
    , ("line-height", "1.5")
    , ("color", "#222")
    ]
  ] [
    h1 [] [
      text "Bleu-lib"
    ],
    h3 [] [
      text "Easily create great rant memes using this famous template!"
    ],
    div [] [
      text "I hate that. I hate "
      , input [ type' "text", value model.harambe, onInput Harambe ] []
      , text ". I hate "
      , input [ type' "text", value model.ayy, onInput Ayy ] []
      , text ". I hate "
      , input [ type' "text", value model.rip, onInput Rip ] []
      , text ". I hate 99.99% of anything that happens in "
      , input [ type' "text", value model.twitch, onInput Twitch ] []
      , text ". I hate "
      , input [ type' "text", value model.yt, onInput Yt ] []
      , text " and "
      , text model.yt
      , text "-related drama. I hate that "
      , input [ type' "text", value model.reddit, onInput Reddit ] []
      , text " sucks now and "
      , input [ type' "text", value model.slashdot, onInput Slashdot ] []
      , text " is dead. I hate that no "
      , input [ type' "text", value model.mmos, onInput Mmos ] []
      , text " are like the old ones ("
      , input [ type' "text", value model.ultima, onInput Ultima ] []
      , text ", "
      , input [ type' "text", value model.asheron, onInput Asheron ] []
      , text "). It all sucks. We should shut the whole thing down."
    ], 
    br [][], br [][], br [][], br [][], br [][], 
    div [] [
      text "I hate that. I hate "
      , text model.harambe
      , text ". I hate "
      , text model.ayy
      , text ". I hate "
      , text model.rip
      , text ". I hate 99.99% of anything that happens in "
      , text model.twitch
      , text ". I hate "
      , text model.yt
      , text " and "
      , text model.yt
      , text "-related drama. I hate that "
      , text model.reddit
      , text " sucks now and "
      , text model.slashdot
      , text " is dead. I hate that no "
      , text model.mmos
      , text " are like the old ones ("
      , text model.ultima
      , text ", "
      , text model.asheron
      , text "). It all sucks. We should shut the whole thing down."
    ],
    br [][],
    a [href "https://github.com/jdifebo/bleu-lib"] [
      text "View the source in Elm",
      img [src "https://assets-cdn.github.com/images/modules/logos_page/GitHub-Mark.png", height 50, width 50] []
    ]
  ]
