# Equivalent to:
# latexmk -pdf -lualatex -interaction=nonstopmode -aux-directory=build -output-directory=build -f main.tex
$pdf_mode = 4;
$lualatex = 'lualatex -interaction=nonstopmode %O %S';
$aux_dir = 'build';
$out_dir = 'build';
$force_mode = 1;
