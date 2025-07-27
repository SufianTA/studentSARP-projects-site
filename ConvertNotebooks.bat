@echo off
mkdir html

for %%f in (scripts\*.ipynb) do (
    echo Converting %%f...
    jupyter nbconvert --to html --no-input --output-dir=html "%%f"
)

echo Done!
pause
