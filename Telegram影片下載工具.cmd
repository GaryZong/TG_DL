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
echo.�п�ܻݭn���檺�N���G
echo.
echo. 1. �ֳt�n�� Telegram(�즸�ϥνХ��n�J��Ƨ�����Telegram���ε{��)
echo. 2. ²�T�n�� Telegram
echo. 3. ���}�����ε{��
echo.
set Choice=
set /P Choice= �п�ܻݭn���檺�Ʀr�A�ë�Entere�����
echo.
IF /I "%Choice%"=="1" goto num1
IF /I "%Choice%"=="2" goto num2
IF /I "%Choice%"=="3" goto num3
:num1
     cls
     echo.======================================
     echo.          ���n�� Telegram��
     echo.======================================
     echo.
     echo.          Telegram�n�J����
     echo.
     echo. 1.Choose a user id (��ܧA���ϥΪ�ID) ���I�� Enter
     echo. 2.Do you want to logout existing desktop session? (�O�_�ݭn�n�X�A�{�b���ϥΪ�)���I�� N
     echo.
     tdl login -n quickstart -d tdata/
     echo.
     echo.======================================
     echo.            ���n�J���\��
     echo.======================================
     echo.
     echo.�Ы����N���^
     pause>nul
     cls
     :begin1
     echo.======================================
     echo.       ��Telegram²���U���u�㡰
     echo.======================================
     echo.
     echo.���U�����᪺�ɮש�downloads��Ƨ�����
     echo.
     set /p url= �жK�WTelegram�s���G
     echo.
     tdl dl -n quickstart -u %url%
     echo.
     echo.======================================
     echo.           ���U��������
     echo.======================================
     echo.
     echo.�Ы����N���~��
     pause>nul
     cls
     goto :begin1
:num2
     cls
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
     :begin2
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
     goto :begin2
:num3
     cls
     exit
