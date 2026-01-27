# shell.nix

let
    pkgs = import <nixpkgs> {
    config = {
      allowUnfree = true;
    };
  };
  
in pkgs.mkShell {
  buildInputs = with pkgs; [
    rustc # Rust
    cargo # Cargo package manager
    rust-analyzer # Rust degbugger
    rustfmt # Rust formating guide
    
    evcxr # Jupyter kernel for rust
    jupyter-all # Jupyter notebook program
  ];
  
  RUST_BACKTRACE = 1;
}
