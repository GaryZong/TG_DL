::===========================================================
::===========================================================
::         Telegram²���U���u�� By�GGZ Information
::    �P�±z�ϥΥ����ε{���A�w��z���A�����ϥ�
:: Copyright(C) 2023 GZ Information  All rights reserved
::===========================================================
::===========================================================
@echo off
title Telegram²���U���u�� By�GGZ Information
echo.======================================
echo.          ���n�� Telegram��
echo.======================================
echo.
echo.          Telegram�n�J����
echo.
echo. 1.�Щ�U���J�ϥΪ̦W�٨ý��I�� Enter
echo. 2.Enter your phone number: (+86 12345678900) �X�{���T����Щ����J������X�p(+886123456789)
echo. 3.Enter Code �X�{���T����п�JTelegram�������ҽX
echo.
echo.�п�JTelegram�ϥΪ̦W�ٶi��n�J�G
set /p username=
tdl login -n %username% --code
echo.
echo.======================================
echo.            ���n�J���\��
echo.======================================
echo.
echo.�Ы����N���^
pause>nul
cls
:begin
echo.======================================
echo.       ��Telegram²���U���u�㡰
echo.======================================
echo.
echo.���U�����᪺�ɮש�downloads��Ƨ�����
echo.
set /p url= �жK�WTelegram�s���G
echo.
tdl dl url -n %username% -u %url%
echo.
echo.======================================
echo.           ���U��������
echo.======================================
echo.
echo.�Ы����N���~��
pause>nul
cls
goto :begin
