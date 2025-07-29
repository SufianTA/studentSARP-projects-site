@echo off
setlocal enabledelayedexpansion

for %%F in (*.html) do (
    set "filename=%%~nF"
    set "ext=%%~xF"
    set "first=!filename:~0,1!"
    set "rest=!filename:~1!"
    set "lower=!first!"

    REM convert to lowercase
    for %%C in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
        if "!first!"=="%%C" set "lower=%%C"
    )

    set "lowercaseFile=!lower!!rest!!ext!"

    REM Only rename if name is different
    if not "!filename!!ext!"=="!lowercaseFile!" (
        echo Renaming: %%F → !lowercaseFile!
        ren "%%F" "!lowercaseFile!"
    )
)

echo Done.
pause
