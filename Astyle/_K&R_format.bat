REM using Astyle to format all .c .cpp .h .hpp files recursively start from this directory
@echo off
REM format files recursively
for /r . %%f in (*.cpp;*.c) do astyle --style=kr -S -Z -xW -f -p -U -c "%%f"
for /r . %%f in (*.hpp;*.h) do astyle --style=kr -S -Z -xW -f -p -U -c "%%f"
REM delete all temp. files
for /r . %%f in (*.orig) do del "%%f"
pause
