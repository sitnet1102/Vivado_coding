@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed May 13 16:51:40 +0900 2020
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto a4ad540de0954a83b12ca953e8b7956b --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot counter4_tb_behav xil_defaultlib.counter4_tb -log elaborate.log"
call xelab  -wto a4ad540de0954a83b12ca953e8b7956b --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot counter4_tb_behav xil_defaultlib.counter4_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
