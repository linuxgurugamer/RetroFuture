Delete old RetroFuture
Extract RetroFuture to GamaData

Requires 
Firespitter DLL @ http://snjo.github.io/ 
PreceduralWings http://forum.kerbalspaceprogram.com/threads/29862 v9.1+

Recommended Plugins
FAR http://forum.kerbalspaceprogram.com/threads/20451 v0.14.3.2+
RasterPropMonitor http://forum.kerbalspaceprogram.com/threads/57603 v18.3+

Suggested Plugins
SmokeScreen http://forum.kerbalspaceprogram.com/threads/71630 v2.5.x+
TweakScale http://forum.kerbalspaceprogram.com/threads/80234 v1.44+
NavUtilities http://forum.kerbalspaceprogram.com/threads/85353 v0.4.3+

Plugin Integration with
ActiveTextureManagement
BDArmory
Deadly Reentry
FerramAerospaceResearch
RPM
Kerbal Engineer
Modular Fuel Tanks
RasterPropMonitor
TweakScale
ProbeControlRoom

Retro-Future v1.72a
0.625 radial probe core. works with ProbeControlRoom w/ Universal IVA.
fixed syntax errors in  several  config files, BIG Thanks to Aivoh for tracking them down!
removed stray MechJeb part, YF21 should load properly if you don't have MJ installed 
changed config for 4x 50cal noze cone part, P61-x should load without BDArmory isntalled.

Retro-Future v1.72
Configs for Probe Control Room support
0.625 SAS/RCS unit; no Monopropellant
new 2.1m Command Module optimized for landing
2.1m Rect to 2.5m Cylinder adapter
3m drop bay section with extra wide opening.
optional config for TransparentPod where possible (change extension from TXT to CFG to apply)

Tweaked VTOL example craft files 
Tweaks to VTOL engines maxThrust and ISP under FAR
Reduced mass for landing gears


Retro-Future v1.71f
proper ATM config

3 config files are provided for the vtol* engines.

Basic install defaults to basic models.

*Basic config has simple switch between Horizontal and VTOL
*FSVTOL config utilizes Firespitter VTOL controls
*IR config utilizes Infernal Robotic controls

to change the version you prefer place appropriate config file in the respective engine folder

vtolKento* in RetroFuture/Engines/vtolKento
vtolKodachi* in RetroFuture/Engines/vtolKodachi
vtolShoto* in RetroFuture/Engines/vtolShoto
vtolTanto* in RetroFuture/Engines/vtolTanto

You should have on one config in each part folder. 



Alternate Color scheme
extract to GameData; replace PNG texture files in GameData/RetroFuture/Textures


Customizing Installation
Extract RetroFuture to GameData then remove parts you don't need or want by deleting it's part folder within part type folder
e.g. deleting RetroFuture/Fuel/1mBicouplerSmall will remove small bicoupler part from install.

To remove pWings
delete RetroFuture/Aero/pWings

do not delete
RetroFuture/Textures
RetroFuture/Sounds
RetroFuture/FX