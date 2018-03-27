module Lib.Nuclear.Linear.Syntax where

import Data.Text.Strict (Text)

type Name = Text
-- stringly typed lol
type Type = Text

data Expr = Var (Name, Type)
          | Lam Name Expr
          | App Expr Expr
          | MultiAbstraction
          | MultiApplication
          | DataConstruction
          | Case
          | Let Bindings
          deriving (Eq, Show, Ord)
