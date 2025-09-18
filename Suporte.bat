@echo off
title MENU DE SUPORTE
color 0A


@echo off
:MENU
cls
echo ==============================================
echo            - MENU DO SUPORTE TECNICO - 
echo             por Wibson Pereira - V1.0
echo ==============================================
echo.

echo  1. Verificar e Reparar Disco (CHKDSK)
echo  2. Reparar Arquivos de Sistema (SFC)
echo  3. Limpar Arquivos Temporarios
echo  4. Verificar Erros de Memoria (Diagnostico)
echo  5. Verificar Conectividade de Rede (Ping/Teste)
echo  6. Gerenciar Processos (Task Manager)
echo  7. Verificar Atualizacoes do Windows
echo  8. Informacoes do Sistema
echo  9. Limpar Cache DNS
echo 10. Reiniciar Servicos de Rede
echo 11. Desfragmentar Disco
echo 12. Ativar/Desativar Firewall do Windows
echo 13. Ver Logs de Eventos
echo 14. Testar Velocidade de Disco
echo 15. Criar Ponto de Restauracao
echo 16. Atualizar Todos os Programas (Winget Update)
echo 17. Forca a aplicacao imediata de todas as politicas de grupo
echo 18. Sair
echo ==============================================
set /p opcao=Escolha uma opcao (1-18): 

if "%opcao%"=="1" chkdsk
if "%opcao%"=="2" sfc /scannow
if "%opcao%"=="3" cleanmgr
if "%opcao%"=="4" mdsched
if "%opcao%"=="5" ping 8.8.8.8 -n 5 & pause
if "%opcao%"=="6" taskmgr
if "%opcao%"=="7" powershell -command "Get-WindowsUpdateLog"
if "%opcao%"=="8" systeminfo | more
if "%opcao%"=="9" ipconfig /flushdns
if "%opcao%"=="10" netsh winsock reset & netsh int ip reset
if "%opcao%"=="11" defrag C:
if "%opcao%"=="12" netsh advfirewall set allprofiles state off
if "%opcao%"=="13" eventvwr
if "%opcao%"=="14" winsat disk
if "%opcao%"=="15" powershell -Command "Checkpoint-Computer -Description 'Ponto de Restauracao Manual'"
if "%opcao%"=="16" winget update --all
if "%opcao%"=="17" gpupdate /force
if "%opcao%"=="18" exit

pause
goto MENU
