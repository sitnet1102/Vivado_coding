@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed Apr 29 17:29:05 +0900 2020
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 5270545587e54fb5841931b11a6a2ad6 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot cnt4_tb_behav xil_defaultlib.cnt4_tb -log elaborate.log"
call xelab  -wto 5270545587e54fb5841931b11a6a2ad6 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot cnt4_tb_behav xil_defaultlib.cnt4_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
