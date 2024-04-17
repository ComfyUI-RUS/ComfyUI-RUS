@echo off
cls
echo Make sure that GIT is in the PATH
echo Change "python=c:\p31\python.exe" to the actual location of python 3.10 (3.11)in the system.
set python=c:\p31\python.exe
set startDir=%CD%
set comfy=%startDir%\ComfyUI
set venv=%comfy%\venv
set scripts=%venv%\Scripts
echo ======================================
echo Downloading "ComfyUI"
echo ======================================
git clone https://github.com/comfyanonymous/ComfyUI.git
echo ======================================
echo Downloading "NStor-ComfyUI-Translation"
echo ======================================
cd %comfy%\custom_nodes
git clone https://github.com/Nestorchik/NStor-ComfyUI-Translation.git
echo ======================================
echo Installing ComfyUI-Manager custom_node
echo ======================================
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
echo ======================================
echo Downloading "ComfyUI-Crystools"
echo ======================================
git clone https://github.com/crystian/ComfyUI-Crystools.git
echo ======================================
echo Downloading "comfy_mtb"
echo ======================================
git clone https://github.com/melMass/comfy_mtb.git
cd %startDir%
echo ======================================
echo Installing VENV for ComfyUI
echo ======================================
%python% -m venv %venv%
echo ======================================
echo Updating PIP version
%scripts%\python -m pip install --upgrade pip
echo ======================================
echo Installing "ComfyUI" python packages
echo ======================================
%scripts%\python -m pip install -r %comfy%\requirements.txt
echo ======================================
echo Installing "Crystools" python packages
echo ======================================
%scripts%\python -m pip install -r %comfy%\custom_nodes\ComfyUI-Crystools\requirements.txt
echo ======================================
echo Installing "ComfyUI-Manager" python packages
echo ======================================
%scripts%\python -m pip install -r %comfy%\custom_nodes\ComfyUI-Manager\requirements.txt
echo ======================================
echo Installing "comfy_mtb" python packages
echo ======================================
%scripts%\python -m pip install -r %comfy%\custom_nodes\comfy_mtb\requirements.txt
echo ======================================
echo Uninstalling CPU python packages
%scripts%\python -m pip uninstall torch torchvision -y
echo ======================================
echo Installing GPU-cuda TORCH python packages
%scripts%\python -m pip install torch==2.1.2 torchvision==0.16.2 --index-url https://download.pytorch.org/whl/cu121
echo ======================================
echo Installing sucessful
echo ======================================
echo Don't forget to upload or copy the models to the "ComfyUI\models\checkpoints" folder!
echo ==================================
echo Starting ComfyUI
echo ==================================
echo
%scripts%\python %comfy%\main.py --auto-launch
pause
