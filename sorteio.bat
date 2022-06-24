@echo off
title SORTEIO
mode 76, 34

:inicio
set /a tent=5
set /a num=(%random% %% 50) + 1

:distr
goto:gerarDistr

:jogo
color 0f
cls
echo ============================================================================
echo      %distr1%^?                     ___________________
echo                %distr2%^?          /                   \         %distr8%^?
echo                            /      ________       \                     %distr9%^?
echo   %distr3%^?                     ^|      /        \       ^|
echo                           ^|     ^|          ^|      ^|     %distr10%^?
echo                           ^|     ^|          ^|      ^|
echo               03^?         ^|______\         ^|      ^|               %distr11%^?
echo                                   ________/       ^|
echo    %distr4%^?                           /               /  %distr12%^?
echo                                 ^|           ___ /
echo                   %distr5%^?           ^|__________^|                        %distr13%^?
echo                                  __________
echo                         %distr6%^?     ^|          ^|         %distr14%^?
echo         %distr7%^?                     ^|__________^|                 07^?
echo.
echo ============================================================================
echo.
echo                    Advinhe o numero sorteado entre 01 e 50                  
echo.
echo                             Tentativas restantes: 0%tent%
echo.
echo ============================================================================
echo.

if %tent% equ 0 (goto:perdeste)

set /p palp=.                           Insira seu palpite: 
echo.

if %palp% lss %num% (goto:palpMaior)
if %palp% gtr %num% (goto:palpMenor)
if %palp% equ %num% (goto:parabens)

:palpMenor
set /a tent=%tent% - 1
echo                            Insira um numero MENOR!                         
echo.
echo ============================================================================
echo.
pause
goto:distr

:palpMaior
set /a tent=%tent% - 1
echo                            Insira um numero MAIOR!
echo.
echo ============================================================================
echo.
pause
goto:distr

:perdeste
color 04
echo                           Acabaram suas tentativas!                        
echo.
echo                           O numero sorteado era %num%                     
echo.
echo ============================================================================
echo.
set /p op=.                       Deseja jogar novamente? [S/N] 
if /i %op% equ s (goto:inicio) else (exit)
goto:inicio

:parabens
color 0a
echo                             Parabens, voce acertou!                        
echo.
echo                             O numero sorteado era %num%                     
echo.
echo ============================================================================
echo.
set /p op=.                       Deseja jogar novamente? [S/N] 
if /i %op% equ s (goto:inicio) else (exit)

:gerarDistr
set /a distr1=(%random% %% 50) + 10
set /a distr2=(%random% %% 50) + 10
set /a distr3=(%random% %% 50) + 10
set /a distr4=(%random% %% 50) + 10
set /a distr5=(%random% %% 50) + 10
set /a distr6=(%random% %% 50) + 10
set /a distr7=(%random% %% 50) + 10
set /a distr8=(%random% %% 50) + 10
set /a distr9=(%random% %% 50) + 10
set /a distr10=(%random% %% 50) + 10
set /a distr11=(%random% %% 50) + 10
set /a distr12=(%random% %% 50) + 10
set /a distr13=(%random% %% 50) + 10
set /a distr14=(%random% %% 50) + 10
goto:jogo