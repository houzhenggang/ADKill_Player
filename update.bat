
@echo off
color 2E
pushd "%~dp0"
set urlT=noads.aliapp.com/swf/
rem set urlT=noads.mujj.us/swf/
set urlT1=code.taobao.org/svn/noadsplayer/trunk/Adkill_Player_Offline/

:up
echo       Ϊ�������������������updateSWF.bat�ļ�����&&echo.&&del/q updateSWF.bat&&wget -N -c %urlT1%updateSWF.bat
if exist updateSWF.bat (call updateSWF.bat&&exit) else cls&&echo.&&echo ������Ĭ�Ϸ�����ʧ�ܣ��������������ԣ���������롭��&&pause>nul&&cls&&goto menu

:swf

::youku
wget -N -c -P ./swf/ %urlT%loader.swf
wget -N -c -P ./swf/ %urlT%player.swf

::ku6
wget -N -c -P ./swf/ %urlT%ku6.swf
wget -N -c -P ./swf/ %urlT%ku6_out.swf

::iqiyi&pps
wget -N -c -P ./swf/ %urlT%iqiyi_out.swf
wget -N -c -P ./swf/ %urlT%iqiyi5.swf
wget -N -c -P ./swf/ %urlT%iqiyi.swf
wget -N -c -P ./swf/ %urlT%pps.swf

::tudou
wget -N -c -P ./swf/ http://code.taobao.org/svn/noadsplayer/trunk/Player/tudou.swf
rem wget -N -c -P ./swf/ %urlT%tudou.swf
rem wget -N -c -P ./swf/ %urlT%olc_8.swf
rem wget -N -c -P ./swf/ %urlT%sp.swf

::letv
wget -N -c -P ./swf/ %urlT%letv.swf
wget -N -c -P ./swf/ %urlT%letv0225.swf
rem wget -N -c -P ./swf/ http://player.letvcdn.com/p/201403/05/1456/newplayer/1/SLetvPlayer.swf

::pplive
wget -N -c -P ./swf/ %urlT%pplive.swf
wget -N -c -P ./swf/ %urlT%pplive_live.swf

::sohu
wget -N -c -P ./swf/sohu/ %urlT%sohu.swf
wget -N -c -P ./swf/sohu/ %urlT%sohu_live.swf
wget -N -c -P ./swf/sohu/otherCore/ %urlT%otherCore/PLVideoCore.swf
wget -N -c -P ./swf/sohu/panel/ %urlT%panel/SettingPanel.swf

::17173
wget -P ./swf/17173/ -N -c %urlT%17173.in.Vod.swf
wget -P ./swf/17173/ -N -c %urlT%17173.in.Live.swf
wget -P ./swf/17173/ -N -c %urlT%17173.out.Vod.swf
wget -P ./swf/17173/ -N -c %urlT%17173.out.Live.swf
wget -P ./swf/17173/ -N -c %urlT%FilePlayer.swf
wget -P ./swf/17173/ -N -c %urlT%StreamPlayer.swf
wget -P ./swf/17173/ -N -c %urlT%Gifts.swf
wget -P ./swf/17173/ -N -c %urlT%ST.swf
cls
echo       ��ͨ�����ڷ���������ָ��swf�ļ�������������������Ƿ����������⣿&&pause>nul&&exit

:menu
echo.
echo                    ��Ƶ��������������½ű�
echo.
echo   ================================================================
echo.
echo   1������:���´�Ĭ�Ϸ�����������������ļ����и��£�
echo.
echo   2����������:Ĭ�Ϸ���������?ʹ���Ǵ׿��ȵ�����ʱ����swf�ļ��ɣ�������swf����
echo.
echo   e������:���϶�����������������Ҫ����ѡ���������ֱ��X���˳��ɡ�
echo   ================================================================
echo.

set /p id= ������������Ӧ���ѡ�񣬰��س���ִ��:
cls

if "%id%"=="1" goto up
if "%id%"=="2" goto swf
if "%id%"=="e" goto exit

:err
cls
echo.
echo       �Բ���������������밴������������룡
pause>nul

:exit
start "" http://bbs.kafan.cn/thread-1514537-1-1.html &&exit