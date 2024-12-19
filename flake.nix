{
  description = "Dev shell for Machine Learning and AI in Python";

  inputs = { nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"; };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.x86_64-linux.default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          python312Packages.python
          python312Packages.pip
          python312Packages.numpy
          python312Packages.matplotlib
          python312Packages.scikit-learn
          python312Packages.scikit-learn
          python312Packages.pandas
          python312Packages.seaborn
          python312Packages.ipython
          python312Packages.ipykernel
          python312Packages.kaggle
          python312Packages.transformers
          python312Packages.pytorch
          python312Packages.nltk
          python312Packages.swifter
        ];
      };
    };
}
