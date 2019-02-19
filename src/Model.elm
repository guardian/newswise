module Model exposing (..)

import Url exposing (Url)
import Time exposing (Posix)

type alias FrontPage =
  { masthead  : Masthead
  , headlines : List Headline
  , layout    : Layout
  }

type alias Masthead =
  { logo    : ImageData
  , date    : Posix
  , issueNo : Int
  , cost    : Float
  }

type Headline
  = Shorty (Maybe String) String (Maybe Image)
  | Fully (Maybe String) String Byline Content
  | Pictured (Maybe String) String Image

type Image 
  = Raw ImageData
  | Rich 
    { data    : ImageData
    , caption : String
    , credit  : Maybe String
    }

type ImageData
  = Remote Url
  | GuardianLogo
  -- | Local Blob

type alias Byline = List Author

type alias Author =
  { name : String
  , role : Maybe String
  }

type alias Content = List Block

type Block
  = Para String
  | UList (List String)
  | Aside String

type Layout
  = Marlon
  | Greta
  | Jane
  | Audrey
  | Philippe
  | JeanPaul
  | Catherine