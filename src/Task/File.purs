module Task.File where

import MasonPrelude
import Effect.Exception (Error)
import Node.Encoding (Encoding(..))
import Node.FS.Async as Fs
import Task (Task, makeTask)

read :: String -> Task Error String
read path =
  makeTask \aC xC -> do
    Fs.readTextFile UTF8 path case _ of
      Right str -> aC str
      Left error -> xC error
    pure $ pure unit

type Path
  = String

write :: Path -> String -> Task Error Unit
write path contents =
  makeTask \aC xC -> do
    Fs.writeTextFile UTF8 path contents case _ of
      Right _ -> aC unit
      Left error -> xC error
    pure $ pure unit
