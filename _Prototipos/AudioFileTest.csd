<Cabbage>
form caption("Untitled") size(400, 300), colour(58, 110, 182), pluginid("def1")
keyboard bounds(8, 158, 381, 95)
filebutton bounds(40, 22, 80, 40) channel("FilePath")

</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d --midi-key-cps=4 --midi-velocity-amp=5
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
ksmps = 32
nchnls = 2
0dbfs = 1

gichans		init	0
giReady		init	0
gSfilepath	init	""

giwfn1	ftgen	0,  0, 131072,  20,   2, 1 									; HANNING
giAudio ftgen 1, 0, 0, 1, "test.wav", 0, 0, 1

massign 0, 3

opcode	NextPowerOf2i,i,i
 iInVal	xin
 icount	=	1
 LOOP:
 if 2^icount>iInVal then
  goto DONE
 else
  icount	=	icount + 1
  goto LOOP
 endif
 DONE:
 	xout	2^icount
endop

instr 1
 gSfilepath	chnget	"FilePath"
 kNewFileTrg changed gSfilepath
 
 if kNewFileTrg==1 then 
 prints "TRIGGER"	
  event	"i",99,0,2			; call instrument to update sample storage function table 
 endif  
 
endin

instr	99	; load sound file
 gichans	filenchnls	gSfilepath			; derive the number of channels (mono=1,stereo=2) in the sound file
 iFileLen = filelen:i(gSfilepath)*sr
 iFtlen		NextPowerOf2i	iFileLen
 gitableL	ftgen	1,0,0,1,gSfilepath,0,0,1
 if gichans==2 then
  gitableR	ftgen	2,0,0,1,gSfilepath,0,0,2
 endif
 giReady 	=	1					; if no string has yet been loaded giReady will be zero
 print gichans

endin

instr 2 //DISKGRAIN
;"test.wav"
;iAmp ampmidi 1

if giReady == 1 then
a1 diskgrain gSfilepath, 1 , 3, 1, 0.2, 1, giwfn1, 2
outs a1, a1
endif
endin

instr 3//SYNCGRAIN
 icps cpsmidi
 iMidiRef	= 60
 iFrqRatio		=	icps/cpsmidinn(iMidiRef)	; derive playback speed from note played in relation to a reference note (MIDI note 60 / middle C)


if giReady == 1 then
    if gichans == 1 then
        a1	syncgrain	1, 20, iFrqRatio, 0.3, 1, gitableL, giwfn1, 5000
    elseif gichans == 2 then
        a1	syncgrain	1, 20, iFrqRatio, 0.3, 1, gitableL, giwfn1, 5000
        a2	syncgrain	1, 20, iFrqRatio, 0.3, 1, gitableR, giwfn1, 5000
        outs a1 * .5, a2 * .5
    endif
 endif
 
endin

</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
i 1 0 10000
;i 2 0 3
;i 3 3.5 4
f0 z
</CsScore>
</CsoundSynthesizer>
