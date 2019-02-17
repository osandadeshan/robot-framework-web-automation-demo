# Robot Framework Page Object Model Demo

<br>

## Robot Framework Introduction

[Robot Framework](http://robotframework.org) is a generic open source
automation framework for acceptance testing, acceptance test driven
development (ATDD), and robotic process automation (RPA). It has simple plain
text syntax and it can be extended easily with libraries implemented using
Python or Java.

Robot Framework is operating system and application independent. The core
framework is implemented using [Python](http://python.org), supports both
Python 2 and Python 3, and runs also on [Jython](http://jython.org) (JVM),
[IronPython](http://ironpython.net) (.NET) and [PyPy](http://pypy.org).
The framework has a rich ecosystem around it consisting of various generic
libraries and tools that are developed as separate projects. For more
information about Robot Framework and the ecosystem, see
http://robotframework.org.

Robot Framework project is hosted on GitHub where you can find source code,
an issue tracker, and some further documentation. Downloads are hosted on PyPI, except
for the standalone JAR distribution that is on Maven central.

Robot Framework development is sponsored by [Robot Framework Foundation](http://robotframework.org/foundation).

[GitHub](https://github.com/robotframework/robotframework)

[PyPI](https://pypi.python.org/pypi/robotframework)

[Maven central](http://search.maven.org/#search%7Cga%7C1%7Ca%3Arobotframework)

<br>

## Installation

1. Download and Install [Python 3](https://www.python.org/ftp/python/3.7.0/python-3.7.0.exe "Python 3").
2. Add the Python installation directory to the **PATH** variable.
3. Add **Scripts** folder inside the **Python** installation directory into the **PATH** variable.
4. Install wxPython.

   `pip install wxPython`
    
5. Install Robot Framework.

    `pip install --upgrade robotframework`
    
6. Install Selenium Library.

    `pip install --upgrade robotframework-seleniumlibrary`
    
7. Download [RED](https://github.com/nokia/RED/releases/download/0.8.7/RED_0.8.7.20180807062944-win32.win32.x86_64.zip "RED").
8. Download [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/downloads "chromedriver").
9. Copy and paste the **chromedriver** to the **Scripts** folder inside the **Python** installation directory.

   **\Python\Python37-32\Scripts**

<br>

## Example

Here, I have developed sample test cases for a sample web site [My Store](http://automationpractice.com/index.php).

This project is developed to demontrate robot framework with selenium and page object model.

Here, there are 3 variables `${SMALL_RETRY_SCALE}`, `${MEDIUM_RETRY_SCALE}` and `${LARGE_RETRY_SCALE}` for retrying the keywords when they are failing. Each variable has assigned with the number of retries. Automation engineers are advised to use `${SMALL_RETRY_SCALE}` as the default number of retries for the keywords. If there are big delays in some scenarios, you can use other variables `${MEDIUM_RETRY_SCALE}` and `${LARGE_RETRY_SCALE}`. You can find the examples for this in `objectRepository/pageObjects` directory.

Test cases are in `testCases/smokeSuite` directory and covers, login, navigation and searching functionalities.

<br>

## File organization
```
Robot-Page-Object-Model-Demo/
|- uiTest/                                                        // Home folder for robot selenium UI automation project
  |- configs/ApplicationVariables.robot                           // Application common variables file
  |- configs/BrowserDetails.robot                                 // Test execution browser configurations
  |- configs/EnvDetails.robot                                     // Test execution environment configurations
  |- configs/SeleniumConfigs.robot                                // Selenium configurations
  |- objectRepository/locators/common/CommonLocators.robot        // Common locators for the application
  |- objectRepository/locators/..../*.robot                       // Other locators of the application
  |- objectRepository/pageObjects/common/CommonPo.robot           // Common keywords for the application
  |- objectRepository/pageObjects/..../*.robot                    // Page object keywords of the application
  |- testCases/..../*.robot                                       // Test cases of the application
|- .gitignore                                                     // Excluded the unnecessary files in the repo
|- README.md                                                      // This file
```
<br>

## Usage

Starting from Robot Framework 3.0, tests are executed from the command line
using the ``robot`` script or by executing the ``robot`` module directly
like ``python -m robot`` or ``jython -m robot``.

The basic usage is giving a path to a test (or task) file or directory as an
argument with possible command line options before the path

    robot uiTest/testCases/smokeSuite/userManagement/LoginTest.robot
    robot --variable HOST:example.com --outputdir results path/to/tests/

Additionally there is ``rebot`` tool for combining results and otherwise
post-processing outputs

    rebot --name Example output1.xml output2.xml

Run ``robot --help`` and ``rebot --help`` for more information about the command
line usage. For a complete reference manual see `Robot Framework User Guide`.

<br>

## License
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/License_icon-mit-2.svg/2000px-License_icon-mit-2.svg.png" alt="MIT License" width="100" height="100"/> [MIT License](https://opensource.org/licenses/MIT)

<br />

## Copyright
Copyright 2019 MaxSoft.
