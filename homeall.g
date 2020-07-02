; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.1.3 on Fri Jun 19 2020 19:54:19 GMT-0700 (Pacific Daylight Time)

M400			; make sure everything has stopped before we make changes
M913 X25 Y25 		; drop motor currents 
M915 X S6 R0		; set sensitivity to +4 unfiltered
M915 Y S3 R0		; set sensitivity to +4 unfiltered

G91                     ; relative positioning
G1 H2 Z5 F6000          ; lift Z relative to current position

; Home X
G1 H1 X50 F3000
G1 H1 X-315 F6000       ; move quickly to X 
G1 H1 X10                ; Move in 5mm

; Home Y
G1 H1 Y50 F3000
G1 H1 Y-315 F6000       ; move quickly to Y 
G1 H1 Y20               ; Move back 10mm

G90

; Home Z
G30

M400			        ; make sure everything has stopped before we reset the motor currents
M913 X100 Y100          ; motor currents back to 100%
