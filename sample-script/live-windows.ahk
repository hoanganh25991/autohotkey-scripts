OnExit handle_exit
    
p_w = 200                                    ; thumbnail width
p_h = 150                                    ; height
Left    := A_ScreenWidth - p_w               ; initial position
Height1 := A_ScreenHeight / 4
Height2 := A_ScreenHeight - Height1
Trans :=  "Off"                         ; transparency level

Hotkey, #w, AddWatch
Hotkey, #q, RemoveWatch
Hotkey, #a, ShowHideGui
Hotkey, ^+LButton , define_region

Gui +AlwaysOnTop  +Owner +Resize +ToolWindow ; window for the dock

ypic =0
Loop 10,                                     ; prepare 10 thumbs to be clicked
{
  Gui, Add, Pic , gRestoreWin x0 y%ypic% w%p_w% h100 vPic%a_index%			; add dock-slots to gui
  ypic +=100
}

Gui Show, NoActivate w%p_w% h32 x%Left% y%Height2%, LiveWindows

WinGet LiveWindowsID, id, LiveWindows
WinSet, Transparent, %Trans%, LiveWindows       ; Make Window Transparent for coolness and usability

hdc_frame := DllCall( "GetDC", UInt, LiveWindowsID )
hdc_buffer := DllCall("gdi32.dll\CreateCompatibleDC", UInt,  hdc_frame)  ; buffer
hbm_buffer := DllCall("gdi32.dll\CreateCompatibleBitmap", UInt,hdc_frame, Int,A_ScreenWidth, Int,A_ScreenHeight)
DllCall( "gdi32.dll\SelectObject", UInt,hdc_buffer, UInt,hbm_buffer)

; comment this line for speed but less quality
DllCall( "gdi32.dll\SetStretchBltMode", "uint", hdc_frame, "int", 4 )  ; Halftone better quality with stretch

SetTimer update_dock, 1000                   ; x sec update
                                             ; flow through 1st call (is efficient, but introduces bugs easily!)
update_dock:
  WinGetPos ,,, p_w2, p_h2, LiveWindows       ; get size of LiveWindows Window
  p_w2 := p_w2 -8                             ; adjust sizes (margins, borders ..)

  ypos= 0                                    ; offset for each thumbnail
  nr  = 0                                    ; which thumbnail

  WinGet ids, list,,,Program Manager         ; all active windows-tasks (processes)
  Loop %ids% {
     task_id := ids%a_index%                 ; id of this window
     WinGetPos ,,, w, h, ahk_id %task_id%
     WinGetTitle,title,ahk_id %task_id%

                                             ; try to match mediumsize dialog-boxes like alerts/copy or userdefined with #w
     if ( title <> "LiveWindows" and title <> "" and title <> " "  and (( w > 300 and h < 300 and h > 50 ) or watch_me_%task_id% = 1 ) )
     {              
      
      DllCall("PrintWindow", UInt,task_id, UInt,hdc_buffer, UInt,0)
      
      wx1 := watch_me_x1_%task_id%
      wy1 := watch_me_y1_%task_id%
      ww  := watch_me_w_%task_id%
      wh  := watch_me_h_%task_id%
      nr  += 1
      
      ; ToolTip, %task_id% %current_id% "..." %title% "x" %wx1% "v" %onoff%

       if  wx1 <>
       {
        h1 := wh * ( p_w2 / ww )                  ; autosize (seems not exaclty right?)
      
        DllCall("gdi32.dll\StretchBlt", UInt,hdc_frame, Int,0, Int,ypos, Int,p_w2, Int,h1
              , UInt,hdc_buffer, Int, wx1, Int,wy1, Int,ww, Int,wh ,UInt,0xCC0020) ; SRCCOPY
       }
       else
       {
         h1 := h * ( p_w2 / w )                  ; autosize (seems not exaclty right?)
         DllCall("gdi32.dll\StretchBlt", UInt,hdc_frame, Int,0, Int,ypos, Int,p_w2, Int,h1
              , UInt,hdc_buffer, Int,0, Int,0, Int,w, Int,h ,UInt,0xCC0020) ; SRCCOPY
       }

       watch_me_id_%nr% := task_id    ; store src-window id for later restore
       watch_me_title_%nr% := title

       GuiControl, Move, Pic%nr%, X0 Y%ypos% W%p_w2% H%h1%
       
       ypos += h1                          ; move down to next thumbnail-position
    }
  }
  WinMove LiveWindows,,,,,ypos +32         ; resize to make pseudo-transparent
Return

AddWatch:
    WinGet current_id , id , A         ; get ahk_id of foreground window
   
    watch_me_%current_id% = 1
Return

RemoveWatch:
    WinGet cur