::===========================================================
::===========================================================
::         Telegram簡易下載工具 By：GZ Information
::    感謝您使用本應用程式，歡迎您的再次的使用
:: Copyright(C) 2023 GZ Information  All rights reserved
::===========================================================
::===========================================================
@echo off
title Telegram簡易下載工具 By：GZ Information
echo.======================================
echo.          ※登錄 Telegram※
echo.======================================
echo.請選擇需要執行的代號：
echo.
echo. 1. 快速登錄 Telegram(初次使用請先登入資料夾內的Telegram應用程式)
echo. 2. 簡訊登錄 Telegram
echo. 3. 離開此應用程式
echo.
set Choice=
set /P Choice= 請選擇需要執行的數字，並按Entere執行→
echo.
IF /I "%Choice%"=="1" goto num1
IF /I "%Choice%"=="2" goto num2
IF /I "%Choice%"=="3" goto num3
:num1
     cls
     echo.======================================
     echo.          ※登錄 Telegram※
     echo.======================================
     echo.
     echo.          Telegram登入說明
     echo.
     echo. 1.Choose a user id (選擇你的使用者ID) 請點擊 Enter
     echo. 2.Do you want to logout existing desktop session? (是否需要登出你現在的使用者)請點擊 N
     echo.
     tdl login -n quickstart -d tdata/
     echo.
     echo.======================================
     echo.            ※登入成功※
     echo.======================================
     echo.
     echo.請按任意鍵返回
     pause>nul
     cls
     :begin1
     echo.======================================
     echo.       ※Telegram簡易下載工具※
     echo.======================================
     echo.
     echo.※下載完後的檔案於downloads資料夾內※
     echo.
     set /p url= 請貼上Telegram連結：
     echo.
     tdl dl -n quickstart -u %url%
     echo.
     echo.======================================
     echo.           ※下載完成※
     echo.======================================
     echo.
     echo.請按任意鍵繼續
     pause>nul
     cls
     goto :begin1
:num2
     cls
     echo.======================================
     echo.          ※登錄 Telegram※
     echo.======================================
     echo.
     echo.          Telegram登入說明
     echo.
     echo. 1.請於下方輸入使用者名稱並請點擊 Enter
     echo. 2.Enter your phone number: (+86 12345678900) 出現此訊息後請於後方輸入手機號碼如(+886123456789)
     echo. 3.Enter Code 出現此訊息後請輸入Telegram中的驗證碼
     echo.
     echo.請輸入Telegram使用者名稱進行登入：
     set /p username=
     tdl login -n %username% --code
     echo.
     echo.======================================
     echo.            ※登入成功※
     echo.======================================
     echo.
     echo.請按任意鍵返回
     pause>nul
     cls
     :begin2
     echo.======================================
     echo.       ※Telegram簡易下載工具※
     echo.======================================
     echo.
     echo.※下載完後的檔案於downloads資料夾內※
     echo.
     set /p url= 請貼上Telegram連結：
     echo.
     tdl dl url -n %username% -u %url%
     echo.
     echo.======================================
     echo.           ※下載完成※
     echo.======================================
     echo.
     echo.請按任意鍵繼續
     pause>nul
     cls
     goto :begin2
:num3
     cls
     exit
