## Cabal

https://cabal.readthedocs.io/en/3.6/getting-started.html

Build and run app with Cabal

```haskell
cabal build myfirstapp
cabal run myfirstapp
```

Build with Stack

```
stack ghci
stack ghc FILE.hs
stack ghc -- -dynamic FILE.hs
```

### HDBC

https://github.com/hdbc/hdbc

```
ghc --make -o setup Setup.lhs
./setup configure
./setup build
sudo ./setup install
```

x `f` y == f x y
