@echo off
set startDir=%CD%
set comfy=%startDir%\ComfyUI
echo ===============================================
echo ****  Updating "ComfyUI"
echo ===============================================
cd %comfy%
git pull
echo ===============================================
echo ****  Updating "ComfyUI-Manager"
echo ===============================================
cd %comfy%\custom_nodes\ComfyUI-Manager
git pull
echo ===============================================
echo ****  Updating "NStor-ComfyUI-Translation"
echo ===============================================
cd %comfy%\custom_nodes\NStor-ComfyUI-Translation
git pull
echo ===============================================
echo ****  Updating "Crystools"
echo ===============================================
cd %comfy%\custom_nodes\ComfyUI-Crystools
git pull
echo ===============================================
echo ****  Updating "comfy_mtb"
echo ===============================================
cd %comfy%\custom_nodes\comfy_mtb
git pull
cd %startDir%
echo ===============================================
echo All done...
echo ===============================================
pause
