module RequestAnimationFrame where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
-- animatinoFrame takes nothing and performs side-effects
-- animatinoFrame take a list of effects and perform them all
type IO e = Number -> Eff (console :: CONSOLE | e) Unit
foreign import requestAnimationFrame 
  :: forall e. IO e -> Eff (console :: CONSOLE | e) Unit