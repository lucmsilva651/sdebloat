import subprocess
import os
os.rename("sdcore", "sdebloat.bat")
subprocess.call("sdebloat.bat")