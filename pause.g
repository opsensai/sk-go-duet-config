; pause.g
; called when a print from SD card is paused
;
; generated by RepRapFirmware Configuration Tool v3.1.3 on Fri Jun 19 2020 19:54:19 GMT-0700 (Pacific Daylight Time)
M83            ; relative extruder moves
G1 E-10 F3600  ; retract 10mm of filament
G91            ; relative positioning
G1 Z5 F360     ; lift Z by 5mm
G90            ; absolute positioning
G1 X0 Y0 F6000 ; go to X=0 Y=0

