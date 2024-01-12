@echo off
echo This script will now prepare the files for using SharedMedia_YamashiMedia

echo Creating the TOC...
echo ## Interface: 100002 > SharedMedia_YamashiMedia.toc
echo ## Title: SharedMedia_YamashiMedia >> SharedMedia_YamashiMedia.toc
echo ## Dependencies: SharedMedia >> SharedMedia_YamashiMedia.toc
echo YamashiMedia.lua >> SharedMedia_YamashiMedia.toc
echo Creating the file...
echo local LSM = LibStub("LibSharedMedia-3.0") > YamashiMedia.lua

echo    BACKGROUND
echo.>> YamashiMedia.lua
echo -- ----- >> YamashiMedia.lua
echo -- BACKGROUND >> YamashiMedia.lua
echo -- ----- >> YamashiMedia.lua
for %%F in (background\*.*) do (
echo       %%~nF
echo LSM:Register("background", "%%~nF", [[Interface\Addons\SharedMedia_YamashiMedia\background\%%~nxF]]^) >> YamashiMedia.lua
)

echo    BORDER
echo.>> YamashiMedia.lua
echo -- ----- >> YamashiMedia.lua
echo --  BORDER >> YamashiMedia.lua
echo -- ---- >> YamashiMedia.lua
for %%F in (border\*.*) do (
echo       %%~nF
echo LSM:Register("border", "%%~nF", [[Interface\Addons\SharedMedia_YamashiMedia\border\%%~nxF]]^) >> YamashiMedia.lua
)

echo    FONT
echo.>> YamashiMedia.lua
echo -- ----->> YamashiMedia.lua
echo --   FONT>> YamashiMedia.lua
echo -- ----->> YamashiMedia.lua
for %%F in (font\*.ttf) do (
echo       %%~nF
echo LSM:Register("font", "%%~nF", [[Interface\Addons\SharedMedia_YamashiMedia\font\%%~nxF]]^) >> YamashiMedia.lua
)

echo    SOUND
echo.>> YamashiMedia.lua
echo -- ----->> YamashiMedia.lua
echo --   SOUND>> YamashiMedia.lua
echo -- ----->> YamashiMedia.lua
for %%F in (sound\*.*) do (
echo       %%~nF
echo LSM:Register("sound", "%%~nF", [[Interface\Addons\SharedMedia_YamashiMedia\sound\%%~nxF]]^) >> YamashiMedia.lua
)

echo    STATUSBAR
echo.>> YamashiMedia.lua
echo -- ----->> YamashiMedia.lua
echo --   STATUSBAR>> YamashiMedia.lua
echo -- ----->> YamashiMedia.lua
for %%F in (statusbar\*.*) do (
echo       %%~nF
echo LSM:Register("statusbar", "%%~nF", [[Interface\Addons\SharedMedia_YamashiMedia\statusbar\%%~nxF]]^) >> YamashiMedia.lua
)

:end_of_file
pause