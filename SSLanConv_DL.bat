@echo off
echo SS-LANコンバータ　ファームウェア・ダウンロード中
SSLanConv_DL.exe
rem 戻り値：
rem  0 = アップデートが成功した
rem  1 = アップデートに失敗した
rem  2 = 更新すべきアップデートモジュールが無い
rem  3 = IPアドレスが未設定
rem echo (%errorlevel%)
rem pause > NUL
if %errorlevel%==0 (
	echo ファームウェアのアップデートに成功しました！
	pause > NUL
)
if %errorlevel%==1 (
	echo ファームウェアのアップデートは失敗しました！
	pause > NUL
)
