; Configuration file for Duet WiFi (firmware version 2.03)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.3 on Fri Jun 19 2020 19:54:19 GMT-0700 (Pacific Daylight Time)

; General preferences
G90                                       ; send absolute coordinates...
M83                                       ; ...but relative extruder moves
M550 P"skgo"                         ; set printer name
M669 K1                                   ; select CoreXY mode

; Network
M552 S1                                   ; enable network
M586 P0 S1                                ; enable HTTP
M586 P1 S0                                ; disable FTP
M586 P2 S0                                ; disable Telnet

; Drives
M569 P0 S1                                ; physical drive 0 goes forwards (x)
M569 P1 S1                                ; physical drive 1 goes forwards (y) 
M569 P2 S0                                ; physical drive 2 goes backwards (first z)
M569 P3 S0                                ; physical drive 3 goes backwards (extruder)
M569 P4 S0                                ; physical drive 4 goes backwards (second z)
M584 X0 Y1 Z2:4 E3                        ; set drive mapping. Use two steppers for z.
M671 X-50.1:350.2 Y150.0:150.0 P2 S2      ; Setting the lead screw positions of Left (-47.5, 150), Right (355, 150). 2mm Pitch.
M350 X16 Y16 Z16 E16 I1                   ; configure microstepping with interpolation
M92 X200.00 Y200.00 Z1600.00 E415.00      ; set steps per mm


M566 X900.00 Y900.00 Z50.00 E7200.00      ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z1800.00 E600.00   ; set maximum speeds (mm/min)
M201 X1000.00 Y1000.00 Z20.00 E250.00     ; set accelerations (mm/s^2)
M906 X800 Y800 Z1000 E1000 I40            ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                   ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                          ; set axis minima
M208 X300 Y310 Z313 S0                    ; set axis maxima

; Endstops
M574 Z1 S2                                ; set active high endstops
M574 X1 Y1 S3                             ; set endstops controlled by motor stall detection

; Z-Probe
M558 P1 H10 F80 T6000                     ; set Z probe type to switch and the dive height + speeds
;G31 P500 X0 Y25 Z2.85                    ; set Z probe trigger value, offset and trigger height
G31 P513 X0 Y25 Z3.21                     ; set Z probe trigger value, offset and trigger height
M557 X25:280 Y25:280 S40                  ; define mesh grid

; Heaters
M305 P0 T100000 B4725 C7.060000e-8 R4700  ; set thermistor + ADC parameters for heater 0
M143 H0 S120                              ; set temperature limit for heater 0 to 120C
M305 P1 T100000 B4725 C7.060000e-8 R4700  ; set thermistor + ADC parameters for heater 1
M143 H1 S350                              ; set temperature limit for heater 1 to 280C

; Fans
;M106 P0 S0 I0 F25000 H-1                 ; set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P0 S0 I0 F500 H-1 B5                 ; set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S255 I0 F15 H1 T70 B2             ; set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P2 S255 I0 F500 H1 T45               ; set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned on

; Tools
M563 P0 D0 H1 F0                          ; define tool 0
G10 P0 X0 Y0 Z0                           ; set tool 0 axis offsets
G10 P0 R0 S0                              ; set initial tool 0 active and standby temperatures to 0C

; Filament Sensor
M591 D0 P5 C3 R30:120 E3.0 S0             ; Duet3D laser sensor for extruder drive 0, connected to endstop input 3 (E0), tolerance 40 to 120%, 3mm comparison length, disabled

; Custom settings are not defined

; Miscellaneous
M575 P1 S1 B57600                         ; enable support for PanelDue
T0                                        ; select first tool

