# Nixvim config
My personal nixvim configuration as standalone derivation.

## Usage:
[Nivim Standalone Usage](https://nix-community.github.io/nixvim/modules/standalone.html)

**Install**
import the flake in inputs:
```
inputs = {
...
    nixvim-config.url = "."
...
```

install the package on your system or home-manager packages:
```
# system
enviroment.systemPackages = [
    inputs.nixvim-config.packages.${system}.default
];

# home-manager
home-manager.users.<user>.home.packages = [
    inputs.nixvim-config.packages.${system}.default
]
```


## Run
For run without install:

```
nix run .
```
