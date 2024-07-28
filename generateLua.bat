@echo off
echo This script will now prepare the files for using SharedMedia_YamashiMedia

if exist ..\SharedMedia_YamashiMedia goto has_folder
echo Creating the folders...
mkdir ..\SharedMedia_YamashiMedia
mkdir ..\SharedMedia_YamashiMedia\background
mkdir ..\SharedMedia_YamashiMedia\border
mkdir ..\SharedMedia_YamashiMedia\font
mkdir ..\SharedMedia_YamashiMedia\sound
mkdir ..\SharedMedia_YamashiMedia\statusbar
echo You can now put your media files into the subfolders found at World of Warcraft\Interface\Addons\SharedMedia_YamashiMedia
goto end_of_file

:has_folder
echo Creating the TOC...
echo ## Interface: 11503, 40400, 110000, 110002 > ..\SharedMedia_YamashiMedia\SharedMedia_YamashiMedia.toc
echo ## Title: SharedMedia_YamashiMedia >> ..\SharedMedia_YamashiMedia\SharedMedia_YamashiMedia.toc
echo ## Dependencies: SharedMedia >> ..\SharedMedia_YamashiMedia\SharedMedia_YamashiMedia.toc
echo YamashiMedia.lua >> ..\SharedMedia_YamashiMedia\SharedMedia_YamashiMedia.toc
echo Creating the file...
echo local LSM = LibStub("LibSharedMedia-3.0") > ..\SharedMedia_YamashiMedia\YamashiMedia.lua

echo    BACKGROUND
echo.>> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo -- ----- >> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo -- BACKGROUND >> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo -- ----- >> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
for %%F in (..\SharedMedia_YamashiMedia\background\*.*) do (
echo       %%~nF
echo LSM:Register("background", "%%~nF", [[Interface\Addons\SharedMedia_YamashiMedia\background\%%~nxF]]^) >> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
)

echo    BORDER
echo.>> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo -- ----- >> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo --  BORDER >> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo -- ---- >> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
for %%F in (..\SharedMedia_YamashiMedia\border\*.*) do (
echo       %%~nF
echo LSM:Register("border", "%%~nF", [[Interface\Addons\SharedMedia_YamashiMedia\border\%%~nxF]]^) >> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
)

echo    FONT
echo.>> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo -- ----->> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo --   FONT>> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo -- ----->> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
for %%F in (..\SharedMedia_YamashiMedia\font\*.ttf) do (
echo       %%~nF
echo LSM:Register("font", "%%~nF", [[Interface\Addons\SharedMedia_YamashiMedia\font\%%~nxF]]^) >> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
)

echo    SOUND
echo.>> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo -- ----->> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo --   SOUND>> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo -- ----->> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
for %%F in (..\SharedMedia_YamashiMedia\sound\*.*) do (
echo       %%~nF
echo LSM:Register("sound", "%%~nF", [[Interface\Addons\SharedMedia_YamashiMedia\sound\%%~nxF]]^) >> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
)

echo    STATUSBAR
echo.>> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo -- ----->> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo --   STATUSBAR>> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
echo -- ----->> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
for %%F in (..\SharedMedia_YamashiMedia\statusbar\*.*) do (
echo       %%~nF
echo LSM:Register("statusbar", "%%~nF", [[Interface\Addons\SharedMedia_YamashiMedia\statusbar\%%~nxF]]^) >> ..\SharedMedia_YamashiMedia\YamashiMedia.lua
)

:end_of_file
pause