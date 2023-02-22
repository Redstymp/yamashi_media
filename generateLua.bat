@echo off
echo This script will now prepare the files for using SharedMedia_SpitfireMedia

echo Creating the TOC...
echo ## Interface: 100002 > SharedMedia_SpitfireMedia.toc
echo ## Title: SharedMedia_SpitfireMedia >> SharedMedia_SpitfireMedia.toc
echo ## Dependencies: SharedMedia >> SharedMedia_SpitfireMedia.toc
echo SpitfireMedia.lua >> SharedMedia_SpitfireMedia.toc
echo Creating the file...
echo local LSM = LibStub("LibSharedMedia-3.0") > SpitfireMedia.lua

echo    BACKGROUND
echo.>> SpitfireMedia.lua
echo -- ----- >> SpitfireMedia.lua
echo -- BACKGROUND >> SpitfireMedia.lua
echo -- ----- >> SpitfireMedia.lua
for %%F in (background\*.*) do (
echo       %%~nF
echo LSM:Register("background", "%%~nF", [[Interface\Addons\SharedMedia_SpitfireMedia\background\%%~nxF]]^) >> SpitfireMedia.lua
)

echo    BORDER
echo.>> SpitfireMedia.lua
echo -- ----- >> SpitfireMedia.lua
echo --  BORDER >> SpitfireMedia.lua
echo -- ---- >> SpitfireMedia.lua
for %%F in (border\*.*) do (
echo       %%~nF
echo LSM:Register("border", "%%~nF", [[Interface\Addons\SharedMedia_SpitfireMedia\border\%%~nxF]]^) >> SpitfireMedia.lua
)

echo    FONT
echo.>> SpitfireMedia.lua
echo -- ----->> SpitfireMedia.lua
echo --   FONT>> SpitfireMedia.lua
echo -- ----->> SpitfireMedia.lua
for %%F in (font\*.ttf) do (
echo       %%~nF
echo LSM:Register("font", "%%~nF", [[Interface\Addons\SharedMedia_SpitfireMedia\font\%%~nxF]]^) >> SpitfireMedia.lua
)

echo    SOUND
echo.>> SpitfireMedia.lua
echo -- ----->> SpitfireMedia.lua
echo --   SOUND>> SpitfireMedia.lua
echo -- ----->> SpitfireMedia.lua
for %%F in (sound\*.*) do (
echo       %%~nF
echo LSM:Register("sound", "%%~nF", [[Interface\Addons\SharedMedia_SpitfireMedia\sound\%%~nxF]]^) >> SpitfireMedia.lua
)

echo    STATUSBAR
echo.>> SpitfireMedia.lua
echo -- ----->> SpitfireMedia.lua
echo --   STATUSBAR>> SpitfireMedia.lua
echo -- ----->> SpitfireMedia.lua
for %%F in (statusbar\*.*) do (
echo       %%~nF
echo LSM:Register("statusbar", "%%~nF", [[Interface\Addons\SharedMedia_SpitfireMedia\statusbar\%%~nxF]]^) >> SpitfireMedia.lua
)

:end_of_file
pause