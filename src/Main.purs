module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console
-- import RequestAnimationFrame

-- animationFrame :: forall e. Number -> Eff (console :: CONSOLE | e) Unit
-- animationFrame i = do
--   log (show i)
--   requestAnimationFrame animationFrame

-- main :: forall e. Eff (console :: CONSOLE | e) Unit
-- main = do 
-- -- const onAnimationFrame = function(t) {
-- --   console.log('ticking', t)
-- --   window.requestAnimationFrame(onAnimationFrame)
-- -- }
-- -- declare a list of pure computations from t -> x
--   animationFrame 1.0
--   -- call the list of computations and pass them t

mainLoop :: Number -> Eff (console :: CONSOLE) Unit
mainLoop n = log (show n)

-- requestAnimationFrame returns an Effectfull computation of type and return a Unit
foreign import setAnimationFrameBehaviour :: forall f a. f -> (Eff a) Unit

main :: forall a. Eff a Unit
main = setAnimationFrameBehaviour mainLoop