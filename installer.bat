@echo off
title OGP REQUIREMENTS - ALL DEPENDENCIES INSTALLER
color 0A

echo.
echo ===============================================================================
echo                    OUTLOOK GENERATOR PRO - REQUIREMENTS INSTALLER
echo                           ALL DEPENDENCIES INSTALLATION
echo ===============================================================================
echo.
echo This batch file will install ALL dependencies required for OGP to function
echo properly. Use this if the built-in wizard fails or you prefer manual setup.
echo.
echo REQUIREMENTS:
echo - Python 3.8+ must be installed and added to PATH
echo - Internet connection required for package downloads
echo - Administrator privileges recommended
echo.
pause

echo.
echo ===============================================================================
echo                              SYSTEM VALIDATION
echo ===============================================================================
echo.

echo [1/3] Checking Python installation...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed or not in PATH!
    echo Please install Python 3.8+ from https://python.org
    echo Make sure to check "Add Python to PATH" during installation
    pause
    exit /b 1
)

python --version
echo [SUCCESS] Python detected!

echo.
echo [2/3] Checking pip installation...
python -m pip --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] pip is not available!
    echo Please reinstall Python with pip included
    pause
    exit /b 1
)

python -m pip --version
echo [SUCCESS] pip detected!

echo.
echo [3/3] Upgrading pip to latest version...
python -m pip install --upgrade pip
echo [SUCCESS] pip upgraded!

echo.
echo ===============================================================================
echo                           CORE FRAMEWORK INSTALLATION
echo ===============================================================================
echo.

echo Installing PySide6 (Advanced UI Framework)...
python -m pip install "PySide6>=6.5.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [WARNING] PySide6 installation failed - this is CRITICAL for OGP!
)

echo.
echo ===============================================================================
echo                          WEB AUTOMATION COMPONENTS
echo ===============================================================================
echo.

echo Installing Selenium (Enterprise Automation Engine)...
python -m pip install "selenium>=4.15.0" --upgrade --no-cache-dir

echo Installing Undetected ChromeDriver (Stealth Browser Engine)...
python -m pip install "undetected-chromedriver>=3.5.0" --upgrade --no-cache-dir

echo Installing WebDriver Manager...
python -m pip install "webdriver-manager>=4.0.0" --upgrade --no-cache-dir

echo.
echo ===============================================================================
echo                      COMPUTER VISION & IMAGE PROCESSING
echo ===============================================================================
echo.

echo Installing OpenCV (Computer Vision Analytics)...
python -m pip install "opencv-python>=4.8.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [INFO] OpenCV installation failed - this is OPTIONAL for basic OGP functionality
)

echo Installing NumPy (Mathematical Computing Engine)...
python -m pip install "numpy>=1.24.0" --upgrade --no-cache-dir

echo Installing Pillow (Image Processing Engine)...
python -m pip install "Pillow>=10.0.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [INFO] Pillow installation failed - this is OPTIONAL for basic OGP functionality
)

echo.
echo ===============================================================================
echo                           GUI AUTOMATION SUITE
echo ===============================================================================
echo.

echo Installing PyAutoGUI (System Automation Interface)...
python -m pip install "pyautogui>=0.9.54" --upgrade --no-cache-dir

echo Installing PyInput (Advanced Input Control)...
python -m pip install "pynput>=1.7.6" --upgrade --no-cache-dir

echo.
echo ===============================================================================
echo                        NETWORKING & COMMUNICATION
echo ===============================================================================
echo.

echo Installing Requests (Network Communication Suite)...
python -m pip install "requests>=2.31.0" --upgrade --no-cache-dir

echo Installing urllib3 (HTTP Protocol Handler)...
python -m pip install "urllib3>=2.0.0" --upgrade --no-cache-dir

echo.
echo ===============================================================================
echo                         DATA PROCESSING & EXPORT
echo ===============================================================================
echo.

echo Installing Pandas (Data Analytics Platform)...
python -m pip install "pandas>=2.0.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [INFO] Pandas installation failed - this is OPTIONAL for advanced features
)

echo Installing OpenPyXL (Excel File Handler)...
python -m pip install "openpyxl>=3.1.0" --upgrade --no-cache-dir

echo.
echo ===============================================================================
echo                          MULTIMEDIA & AUDIO
echo ===============================================================================
echo.

echo Installing Pygame (Multimedia Engine)...
python -m pip install "pygame>=2.5.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [INFO] Pygame installation failed - this is OPTIONAL for audio features
)

echo Installing Playsound (Audio Playback)...
python -m pip install "playsound>=1.3.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [INFO] Playsound installation failed - this is OPTIONAL for audio features
)

echo.
echo ===============================================================================
echo                          SECURITY & ENCRYPTION
echo ===============================================================================
echo.

echo Installing Cryptography (Security Encryption Module)...
python -m pip install "cryptography>=41.0.0" --upgrade --no-cache-dir

echo Installing Keyring (Secure Credential Storage)...
python -m pip install "keyring>=24.0.0" --upgrade --no-cache-dir

echo.
echo ===============================================================================
echo                       SYSTEM MONITORING & PERFORMANCE
echo ===============================================================================
echo.

echo Installing PSUtil (System Performance Monitor)...
python -m pip install "psutil>=5.9.0" --upgrade --no-cache-dir

echo Installing GPUtil (GPU Performance Monitor)...
python -m pip install "GPUtil>=1.4.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [INFO] GPUtil installation failed - this is OPTIONAL for GPU monitoring
)

echo.
echo ===============================================================================
echo                        LOGGING & CONFIGURATION
echo ===============================================================================
echo.

echo Installing ColorLog (Enhanced Logging)...
python -m pip install "colorlog>=6.7.0" --upgrade --no-cache-dir

echo Installing Python-DotEnv (Configuration Management)...
python -m pip install "python-dotenv>=1.0.0" --upgrade --no-cache-dir

echo.
echo ===============================================================================
echo                         OPTIONAL COMPONENTS
echo ===============================================================================
echo.

echo Installing Data Visualization Components (Optional)...
python -m pip install "matplotlib>=3.7.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [INFO] Matplotlib installation failed - this is OPTIONAL
)

python -m pip install "seaborn>=0.12.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [INFO] Seaborn installation failed - this is OPTIONAL
)

echo.
echo Installing Development Tools (Optional)...
python -m pip install "pytest>=7.4.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [INFO] Pytest installation failed - this is OPTIONAL for development
)

python -m pip install "pytest-qt>=4.2.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [INFO] Pytest-qt installation failed - this is OPTIONAL for development
)

python -m pip install "black>=23.0.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [INFO] Black installation failed - this is OPTIONAL for development
)

python -m pip install "flake8>=6.0.0" --upgrade --no-cache-dir
if %errorlevel% neq 0 (
    echo [INFO] Flake8 installation failed - this is OPTIONAL for development
)

echo.
echo ===============================================================================
echo                           UTILITY COMPONENTS
echo ===============================================================================
echo.

echo Installing Progress Bar (TQDM)...
python -m pip install "tqdm>=4.66.0" --upgrade --no-cache-dir

echo Installing Click (Command Line Interface)...
python -m pip install "click>=8.1.0" --upgrade --no-cache-dir

echo Installing Rich (Enhanced Terminal Output)...
python -m pip install "rich>=13.5.0" --upgrade --no-cache-dir

echo.
echo ===============================================================================
echo                           INSTALLATION VERIFICATION
echo ===============================================================================
echo.

echo Verifying critical components...
echo.

echo [1/5] Testing PySide6...
python -c "import PySide6; print('PySide6:', PySide6.__version__)" 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] PySide6 verification failed!
    set CRITICAL_ERROR=1
) else (
    echo [SUCCESS] PySide6 verified!
)

echo [2/5] Testing Selenium...
python -c "import selenium; print('Selenium:', selenium.__version__)" 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Selenium verification failed!
    set CRITICAL_ERROR=1
) else (
    echo [SUCCESS] Selenium verified!
)

echo [3/5] Testing Requests...
python -c "import requests; print('Requests:', requests.__version__)" 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Requests verification failed!
    set CRITICAL_ERROR=1
) else (
    echo [SUCCESS] Requests verified!
)

echo [4/5] Testing Cryptography...
python -c "import cryptography; print('Cryptography:', cryptography.__version__)" 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Cryptography verification failed!
    set CRITICAL_ERROR=1
) else (
    echo [SUCCESS] Cryptography verified!
)

echo [5/5] Testing PyAutoGUI...
python -c "import pyautogui; print('PyAutoGUI:', pyautogui.__version__)" 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] PyAutoGUI verification failed!
    set CRITICAL_ERROR=1
) else (
    echo [SUCCESS] PyAutoGUI verified!
)

echo.
echo ===============================================================================
echo                            INSTALLATION COMPLETE
echo ===============================================================================
echo.

if defined CRITICAL_ERROR (
    echo [WARNING] Some critical components failed to install!
    echo Please check the error messages above and try running this script as Administrator.
    echo You may also need to update Python or check your internet connection.
    echo.
    echo OGP may not function properly without these components.
) else (
    echo [SUCCESS] All critical components installed successfully!
    echo.
    echo OGP is now ready to run! You can start the application by running:
    echo python main.py
)

echo.
echo Optional components that failed to install will not prevent OGP from running.
echo The application will work with reduced functionality for missing optional components.
echo.
echo Installation log has been displayed above. Please save this information if needed.
echo.

pause
echo.
echo Thank you for using Outlook Generator Pro!
echo.
