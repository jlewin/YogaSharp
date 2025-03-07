git apply --ignore-whitespace --check shared-build.patch >nul 2>&1  
if errorlevel 1 (  
   echo Patch already applied.  
) else (  
   git apply --ignore-whitespace shared-build.patch  
)  
cd yoga  
if not exist build (  
   mkdir build  
)  
cd build  
cmake ..  
cmake --build yoga --config %1
