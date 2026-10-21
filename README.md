# Unlocking PS4 consoles running firmware versions below 12.02 

============================================================
       OFFLINE PS4 JAILBREAK  •  FW 11.50  •  GoldHEN
============================================================

WHAT IT IS & HOW IT WORKS
------------------------------------------------------------
This is a COMPLETELY OFFLINE setup. Internet on the PS4 is NOT 
required and is strongly discouraged. How it works:

  • PC hosts a simple web server in your LAN (ps4_offline_host folder)
  • PS4 opens the PC's address in its web browser
  • The webpage automatically detects the firmware (11.50 = Lapse vulnerability)
  • Exploit chain triggers (WebKit + Kernel by TheFloW)
  • GoldHEN payload (payload.bin) is loaded into memory

All files are stored locally on your PC — the console NEVER connects
to the internet; all requests stay strictly within your local network.

IMPORTANT: PREVENTING GAME DEACTIVATION
------------------------------------------------------------
Games installed via offline activation (shared/borrowed accounts)
will ONLY lose their licenses if the console connects to PSN. 
Since this method blocks internet access, PSN is unreachable, and 
your games remain 100% safe. 

Golden Rule: NEVER grant internet access to the console while these 
games are installed.

------------------------------------------------------------
STEP 1: Network Setup (Choose ONE option)
------------------------------------------------------------
OPTION A (Easiest): Router connected to PC via Cable or Wi-Fi. 
  Disconnect the WAN (Internet) cable from your router. Your local 
  network will stay active without internet access. Connect the PS4 
  to this same router.

OPTION B: PC Mobile Hotspot. 
  Enable Windows Mobile Hotspot while the PC itself has no internet 
  connection. Connect the PS4 to this hotspot.

OPTION C: Direct Cable Connection (PC <-> PS4).
  • PC:  IP 192.168.1.10 | Subnet 255.255.255.0 | Gateway: Leave empty
  • PS4: IP 192.168.1.20 | Subnet 255.255.255.0
         (Settings -> Network -> Set Up Internet Connection -> LAN -> Custom -> Manual)

Check: Network settings on PS4 should say "Internet Connection: Failed" 
or "Local Network: Connected". This is normal.

------------------------------------------------------------
STEP 2: PC — Launching the Server
------------------------------------------------------------
1. Double-click "start_host.bat" (or Right-click -> "Run as administrator" 
   to automatically open Port 8080 in Windows Firewall).
2. If Windows Firewall prompts you, check "Private networks" and click 
   "Allow access".
3. Note your PC's IPv4 address shown in the console window (e.g., 192.168.1.50).
4. The line "Serving HTTP on 0.0.0.0 port 8080" indicates the server is active. 
   Keep this window open.

------------------------------------------------------------
STEP 3: PS4 — Running the Jailbreak
------------------------------------------------------------
1. On PS4: Settings -> Network. Ensure you are connected locally with no internet.
2. Open the "Internet Browser" app on your PS4.
3. In the address bar (press R3 / Options button), enter:
   http://YOUR-PC-IP:8080/   (e.g., http://192.168.1.50:8080/)
4. The page will display "firmware 11.50 / bug lapse" and automatically initiate 
   the exploit chain. Do not press anything.
5. Wait 30–90 seconds:
   • Green completion text will appear on screen.
   • A GoldHEN notification will popup on the console.
   • GoldHEN options will appear in Settings / Main Menu.

------------------------------------------------------------
If It Doesn't Work on the First Try (NORMAL)
------------------------------------------------------------
Exploits can be unstable. If it freezes, shows a black screen, or crashes:
  • Close the browser completely (OPTIONS button -> Close Application).
  • Reopen the browser and retry.
  • If it keeps failing, fully turn off the console (NOT Rest Mode), 
    power it back on, and try again.

------------------------------------------------------------
AFTER THE JAILBREAK (Important!)
------------------------------------------------------------
• SEMI-PERMANENT: The jailbreak lasts until the console is completely 
  powered off. Rest Mode preserves it. Re-run Step 3 after full shutdown.
• GoldHEN automatically blocks system updates. Go to Settings -> System -> 
  Automatic Downloads and uncheck auto-updates for extra safety.
• NEVER update system firmware beyond supported exploit versions.
============================================================
