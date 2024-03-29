@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.2.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Tue Jan 17 23:35:22 +0300 2023
REM SW Build 3414424 on Sun Dec 19 10:57:22 MST 2021
REM
REM IP Build 3405791 on Sun Dec 19 15:54:35 MST 2021
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot testcontroller_behav xil_defaultlib.testcontroller xil_defaultlib.glbl -log elaborate.log"
call xelab  --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot testcontroller_behav xil_defaultlib.testcontroller xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
