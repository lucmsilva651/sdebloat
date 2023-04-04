try:
    import tkinter as tk
    import os
    import subprocess
    from tkinter import messagebox


    def run_command(command):
        subprocess.call(command, shell=True)


    def print_header():
        print("SDebloat (python beta) - by Lucas Gabriel (lucmsilva)")
        print("Pagina oficial: http://lucmsilva651.github.io/sdebloat")


    def check_device():
        run_command("echo See if the cell phone is connected correctly:")
        run_command("adb devices")


    def uninstall_app(app_name):
        message = f"The package {app_name} will be uninstalled."
        run_command(f"echo {message}")
        run_command(f"pause")
        run_command(f"adb shell pm uninstall --user 0 {app_name}")
        message = f"The script tried to uninstall the package {app_name}. If the app has not been uninstalled, close" \
                  f"this window, and do this command manually."
        run_command(f"echo {message}")
        run_command(f"pause")


    def actions():
        # cmd basic config
        run_command("title SDebloat")
        run_command("cls")

        print_header()
        run_command("pause")
        run_command("cls")

        check_device()
        run_command("pause")
        run_command("cls")

        apps_to_uninstall = [
            "com.samsung.android.app.dtv.sbtvd",
            "com.sec.app.spush",
            "com.sec.android.app.fm",
            "com.samsung.android.game.gos",
            "com.samsung.android.game.gamehome",
            "com.samsung.android.game.gametools",
            "com.enhance.gameservice",
            "com.samsung.android.email.provider",
            "com.microsoft.word",
            "com.microsoft.excel",
            "com.microsoft.powerpoint",
            "com.skype.raider",
            "com.opera.max.oem",
            "com.sec.android.usermanual",
            "com.google.android.apps.tachyon",
            "com.sec.android.app.sbrowser",
            "com.facebook.appmanager",
            "com.facebook.services",
            "com.facebook.system",
            "com.facebook.katana",
            "com.sec.android.app.voicenote",
            "flipboard.boxer.app",
            "com.microsoft.skydrive",
            "com.sec.android.widgetapp.samsungapps",
            "com.samsung.android.app.watchmanagerstub",
            "com.samsung.android.bixby.service",
            "com.samsung.android.voc",
            "com.sec.android.shealth",
            "com.dsi.ant.server",
            "com.dsi.ant.plugins.antplus",
            "com.dsi.ant.service.socket",
            "com.dsi.ant.acquirechannels",
            "com.samsung.android.kidsinstaller",
            "com.sec.android.app.billing",
            "com.samsung.android.app.reminder",
            "com.samsung.android.keyguardmgsupdator",
        ]
        for app in apps_to_uninstall:
            uninstall_app(app)

    def about():
        messagebox.showinfo("About", "SDebloat - by Lucas Gabriel (lucmsilva)")


    root = tk.Tk()
    root.title("SDebloat python beta")

    btn_actions = tk.Button(root, text="Start actions", command=actions)
    btn_actions.pack(padx=10, pady=5)

    btn_about = tk.Button(root, text="About", command=about)
    btn_about.pack(padx=10, pady=5)

    root.mainloop()

finally:
    messagebox.showinfo("Done", "The process\nadb.exe\nwas terminated successfully.")
    os.system("taskkill /im adb.exe /f")