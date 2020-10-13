<Cabbage> bounds(0, 0, 0, 0)
//HEADER AND UTILITIES
form caption("Granulera by Caio M. Jiacomini") size(1200,800), colour(0, 0, 0), pluginid("cjb1")
label bounds(450, 4, 344, 45) fontcolour(188, 151, 49, 255) text("G R A N U L E R A")
label bounds(504, 54, 212, 22) text("by Caio M. Jiacomini") colour(255, 255, 255, 0) fontcolour(255, 255, 255, 255)

label bounds(186, 584, 161, 23) text("LOAD SAMPLE") fontcolour(255, 255, 255, 255) visible(0)
filebutton bounds(38, 566, 135, 42) channel("FilePath") fontcolour:0(188, 151, 49, 255) text("LOAD SAMPLE", "")
label bounds(0, 672, 330, 15), , align("left"), , fontcolour(188, 145, 55, 255), identchannel("stringbox") text("(loaded file path)") channel("stringbox")

keyboard bounds(4, 706, 1194, 52)

//OSCILLATORS
label bounds(270, 136, 118, 20) text("Windowing") fontcolour(255, 255, 255, 255)
combobox bounds(402, 134, 125, 28) text("Sync", "Hanning", "Blackman-Harris", "Gaussian", "Kaiser", "Rectangle", "") fontcolour(188, 151, 49, 255) channel("WindowingSelection") value(2)

label bounds(20, 22, 161, 19) text("OSCILLATOR 1") fontcolour(255, 255, 255, 255)
label bounds(22, 46, 78, 16) text("Waveform") fontcolour(255, 255, 255, 255)
combobox bounds(100, 44, 87, 22) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse") fontcolour(188, 151, 49, 255) channel("WaveformSelection1")
hslider bounds(6, 72, 200, 36) range(0, 1, 1, 1, 0.01) text("Volume") channel("Oscillator1Volume") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(6, 108, 200, 36) range(-48, 48, 0, 1, 1) text("Semitone") channel("Oscillator1Semitone") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(4, 144, 200, 36) range(-100, 100, 0, 1, 1) text("Cents") channel("Oscillator1Cents") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(20, 226, 160, 19) fontcolour(255, 255, 255, 255) text("OSCILLATOR 2")
label bounds(22, 252, 78, 16) fontcolour(255, 255, 255, 255) text("Waveform")
combobox bounds(100, 250, 87, 22) channel("WaveformSelection2") fontcolour(188, 151, 49, 255) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse")
hslider bounds(4, 274, 200, 36) channel("Oscillator2Volume") range(0, 1, 0, 1, 0.01) text("Volume") textcolour(255, 255, 255, 255) trackercolour(188, 151, 49, 255)
hslider bounds(4, 310, 200, 36) range(-48, 48, 0, 1, 1) text("Semitone") channel("Oscillator2Semitone") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(4, 344, 200, 36) range(-100, 100, 0, 1, 1) text("Cents") channel("Oscillator2Cents") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(22, 414, 160, 19) fontcolour(255, 255, 255, 255) text("OSCILLATOR 3")
label bounds(8, 434, 94, 18) fontcolour(255, 255, 255, 255) text("Waveform")
combobox bounds(108, 434, 87, 22) fontcolour(188, 151, 49, 255) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse") channel("WaveformSelection3")
hslider bounds(8, 454, 200, 36) range(0, 1, 0, 1, 0.01) text("Volume") channel("Oscillator3Volume") textcolour(255, 255, 255, 255) trackercolour(188, 151, 49, 255)
hslider bounds(8, 490, 200, 36) range(-48, 48, 0, 1, 1) text("Semitone") channel("Oscillator3Semitone") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(8, 524, 200, 36) range(-100, 100, 0, 1, 1) text("Cents") channel ("Oscillator3Cents") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//GRAINS
label bounds(354, 104, 99, 19) fontcolour(255, 255, 255, 255) text("G R A I N S")
label bounds(280, 350, 222, 19) fontcolour(255, 255, 255, 255) text("R A N D O M I Z A T I O N")
//Freq
rslider bounds(232, 376, 100, 70) range(1, 1000, 0, 0.5, 1) channel("FrequencyVariationRange") text("Frequency Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(234, 460, 94, 70) range(0.1, 10, 1, 1, 0.1) channel("FrequencyVariationRate") text("Frequency Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(298, 236, 100, 70) range(0, 1000, 0, 0.3, 0.01) text("Pitch Variation") channel("PitchVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Duration
rslider bounds(250, 160, 100, 70) range(0.01, 1, 0.1, 0.5, 0.01) channel("GrainDuration") text("Grain Duration") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(358, 378, 100, 70) range(0, 1, 0, 0.5, 0.01) channel("DurationVariationRange") text("Duration Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(354, 466, 100, 70) range(0.1, 10, 1, 1, 0.1) channel("DurationVariationRate") text("Duration Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Density
rslider bounds(354, 162, 100, 70) range(0.5, 100, 20, 0.5, 0.1) channel("GrainDensity") text("Grain Density") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(480, 380, 100, 70) range(0, 100, 0, 0.5, 0.1) channel("DensityVariationRange") text("Density Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(472, 458, 100, 70) range(0.1, 10, 1, 1, 0.1) channel("DensityVariationRate") text("Density Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Phase
rslider bounds(464, 164, 100, 70) range(0, 1, 0, 1, 0.01) text("Phase") channel("Phase") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(410, 240, 100, 70) range(0, 1, 0, 1, 0.05) text("Phase Variation") channel("PhaseVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//LFOs
label bounds(722, 362, 70, 19) fontcolour(255, 255, 255, 255) text("L F O")

//FILTERS
label bounds(696, 108, 117, 21) fontcolour(255, 255, 255, 255) text("F I L T E R")
label bounds(638, 134, 115, 18) fontcolour(255, 255, 255, 255) text("Filter Type")
combobox bounds(766, 132, 87, 22) text("Low Pass", "High Pass", "Band Pass") fontcolour(188, 151, 49, 255) channel("FilterSelection")
rslider bounds(614, 158, 100, 70) range(0, 20000, 20000, 0.5, 1) text("Frequency") channel("FilterFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(716, 158, 100, 69) range(0, 20000, 20000, 0.5, 1) text("Envelope Start Freq") channel("FilterRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(842, 162, 100, 70) range(1, 1000, 1, 0.3, 0.1) text("Resonance") channel("FilterReson") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(664, 238, 160, 17) fontcolour(255, 255, 255, 255) text("Filter Envelope")
rslider bounds(572, 260, 100, 70) range(0.01, 10, 0.1, 0.5, 0.01) text("Attack") channel("FilterAttack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(672, 258, 100, 70) range(0.01, 10, 0.01, 0.5, 0.01) text("Decay") channel("FilterDecay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(772, 260, 100, 70) range(0, 1, 1, 1, 0.01) text("Sustain") channel("FilterSustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(870, 260, 100, 70) range(0.01, 10, 10, 0.5, 0.01) text("Release") channel("FilterRelease") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//EFFECTS
label bounds(1028, 8, 100, 19) fontcolour(255, 255, 255, 255) text("R E V E R B")
hslider bounds(978, 32, 200, 36) range(0, 1, 0, 1, 0.01) channel("ReverbSend") text("Wet/Dry") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(978, 70, 200, 36) range(0, 0.9, 0.4, 1, 0.01) channel("ReverbSize") text("Size") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(1024, 142, 100, 19) fontcolour(255, 255, 255, 255) text("D E L A Y ")
hslider bounds(982, 162, 200, 36) range(0, 1, 0, 1, 0.01) channel("DelaySend") text("Wet/Dry") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(982, 198, 200, 36) range(0.05, 10, 0, 0.5, 0.01) channel("DelayTimeLeft") text("Time Left") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(982, 232, 200, 36) range(0.05, 10, 0, 0.5, 0.01) channel("DelayTimeRight") text("Time Right") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(982, 268, 200, 36) range(0, 1, 0, 1, 0.01) channel("DelayFeedback") text("Feedback") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)


//GLOBALS
label bounds(1020, 336, 103, 19) fontcolour(255, 255, 255, 255) text("G L O B A L")
hslider bounds(976, 394, 200, 36) range(0, 1, 0.5, 1, 0.01) text("Stereo Pan") channel("GlobalPan") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(978, 358, 200, 36) range(0, 1, 1, 1, 0.01) text("Volume") channel("GlobalVolume") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255) fontcolour(255, 255, 255, 255)
label bounds(998, 484, 160, 19) fontcolour(255, 255, 255, 255) text("Amp Envelope")
hslider bounds(978, 504, 200, 36) range(0.01, 10, 0.1, 0.5, 0.01) text("Attack") channel("AmpAttack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(978, 538, 200, 36) range(0.01, 10, 0.1, 0.5, 0.01) text("Decay") channel("AmpDecay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 572, 200, 36) range(0.0001, 1, 1, 1, 0.01) text("Sustain") channel("AmpSustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 606, 200, 36) range(0.01, 10, 0.1, 1, 0.01) text("Release") channel("AmpRelease") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 430, 200, 36) range(-1200, 1200, 0, 1, 0.01) channel("GlobalTuning") text("Tuning") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

checkbox bounds(14, 610, 179, 26) channel("FileLoaded") colour:0(255, 255, 255, 255) fontcolour:0(255, 255, 255, 255) text("Click After Loading Sample") radiogroup("0")
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -+rtmidi=NULL -M0 -dm0
</CsOptions>
<CsInstruments>
ksmps = 32
nchnls = 2
0dbfs = 1
//TO DO:
;FIX OSCILLATOR 3
;IMPLEMENT AUDIO FILE PLAYBACK
;FIX FILTER ENVELOPE: RELEASE KEEPS NOTES TRIGGERED AT A VERY LOW VOLUME
;Add delay
;Add LFOs to key parameters 
;Pitch Bend
;CC1 control for filter frequency
;Add range to envelopes and LFOs

//BACKLOG:
;MAKE An EFFECT VARIANT RATHER THAN A SYNTH THAT READS DATA FROM THE AUDIO TRACK IN THE DAW
;Arpegiar os graos: cada grao tem uma nota aleatoria das tocadas/escolhidas pelo usuario

seed 0
massign 0, "Grains"

//Windowing
giWfn9 ftgen 1, 0, 16384, 20, 9 //Sync window
giWfn2 ftgen 2, 0, 16384, 20, 2 //Hanning window
giWfn5 ftgen 3, 0, 16384, 20, 5 //Blackman-Harris window
giWfn5 ftgen 4, 0, 16384, 20, 6, 1, 2 //Gaussian window
giWfn5 ftgen 5, 0, 16384, 20, 7, 1, 3.5 //Kaiser window
giWfn8 ftgen 6, 0, 16384, 20, 8 //Rectangle window

//Waveforms
giSine ftgen 11, 0, 4096, 10, 1
giTriangle ftgen 12,0, 4096, 9, 1, 1, 0, 3, .333, 180, 5, .2, 0, 7, .143, 180, 9, .111, 0
giSaw ftgen 13, 0, 4096, 10, 1, .5, .333, .25, .2, .166, .143, .125, .111, .1, .0909, .0833, .077
giSquare ftgen 14, 0, 4096, 10, 1, 0, .333, 0, .2, 0, .143, 0, .111, 0, .0909, 0, .077, 0, .0666, 0, .0588
giPulse ftgen 15, 0, 4096, 10, 1, 1, 1, 1, 0.7, 0.5, 0.3, 0.1

//Audio
giChannels	init	0
giReady		init	0
gSfilepath	init	""

//UDOs
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

instr 1 ;Check For Audio File
 ;gSfilepath	chnget	"filename"
 kNewFileTrg changed gSfilepath		; if a new file is loaded generate a trigger
 
 /*if kNewFileTrg == 1 then				; if a new file has been loaded...
  event	"i",99,0,0		; call instrument to update sample storage function table 
 endif*/
endin

instr 99 ;Load Audio Into Table
prints gSfilepath
giChannels filenchnls gSfilepath
iFtlen		NextPowerOf2i	filelen:i(gSfilepath)*sr

giAudioL	ftgen	21,0,iFtlen,1,gSfilepath,0,0,1
if giChannels==2 then
  giAudioR	ftgen	22,0,iFtlen,1,gSfilepath,0,0,2
endif
 
giReady = 1					; if no string has yet been loaded giReady will be zero
//Print to sound filer
Smessage sprintfk "file(%s)", gSfilepath			; print sound file to viewer
chnset Smessage, "Filer"
//Print to GUI
Smessage sprintfk "text(%s)",gSfilepath
chnset Smessage, "stringbox"
endin

instr Grains;Grains
//CHNGET:
    //Amp Envelope
    iAttack chnget "AmpAttack"
    iDecay chnget "AmpDecay"
    iSustain chnget "AmpSustain"
    iRelease chnget "AmpRelease"
    //Grain Frequency
    kFreqVarRange chnget "FrequencyVariationRange"
    kFreqVarRate chnget "FrequencyVariationRate"
    //Grain Duration
    kDur chnget "GrainDuration"
    kDurVarRange chnget "DurationVariationRange"
    kDurVarRate chnget "DurationVariationRate"
    //Grain Density
    kDensity chnget "GrainDensity"
    kDensityVarRange chnget "DensityVariationRange"
    kDensityVarRate chnget "DensityVariationRate"
    //Grain Phase/Pitch Variation
    kPhase chnget "Phase"
    kPhaseVar chnget "PhaseVariation"
    kPitchVar chnget "PitchVariation"
    //Oscillators
    kOsc1Vol chnget "Oscillator1Volume"
    kOsc1Semi chnget "Oscillator1Semitone"
    kOsc1Cent chnget "Oscillator1Cents"   
    kOsc2Vol chnget "Oscillator2Volume"
    kOsc2Semi chnget "Oscillator2Semitone"
    kOsc2Cent chnget "Oscillator2Cents"    
    kOsc3Vol chnget "Oscillator3Volume"
    kOsc3Semi chnget "Oscillator3Semitone"
    kOsc3Cent chnget "Oscillator3Cent"
    //Filter
    kFilterFreq chnget "FilterFreq"
    kFilterRange chnget "FilterRange"
    kFilterReson chnget "FilterReson"
    iFilterType chnget "FilterSelection"
    iFilterAttack chnget "FilterAttack"
    iFilterDecay chnget "FilterDecay"
    iFilterSustain chnget "FilterSustain"
    iFilterRelease chnget "FilterRelease"
    //F tables
    iWfn chnget "WindowingSelection"
    kFn1 chnget "WaveformSelection1"
    kFn2 chnget "WaveformSelection2"
    kFn3 chnget "WaveformSelection3"
    //Reverb
    kReverbSend chnget "ReverbSend"
    kReverbSize chnget "ReverbSize"
    //Delay
    kDelayTimeLeft chnget "DelayTimeLeft"
    kDelayTimeRight chnget "DelayTimeRight"
    kDelaySend chnget "DelaySend"
    kDelayFeedback chnget "DelayFeedback"
    //Globals
    kGlobalPan chnget "GlobalPan"
    kGlobalVol chnget "GlobalVolume"
    kGlobalTuning chnget "GlobalTuning"

//OSCILLATORS:
    kFn1 = kFn1 + 10 //Offset for waveform f-table numbers
    kOsc1Semi = semitone(kOsc1Semi)
    kOsc1Cent = cent(kOsc1Cent)
    
    kFn2 = kFn2 + 10 //Offset for waveform f-table numbers
    kOsc2Semi = semitone(kOsc2Semi)
    kOsc2Cent = cent(kOsc2Cent)
    
    kFn3 = kFn3 + 10
    kOsc3Semi = semitone(kOsc3Semi)
    kOsc3Cent = semitone(kOsc3Cent)
    
//MIDI:
    iFreqMIDI cpsmidi
    aAmpEnv mxadsr iAttack, iDecay, iSustain, iRelease
    kcc1 chanctrl 1, 1, 0, 3

//PORTK:
    kOsc1Vol portk kOsc1Vol, 0.02
    kOsc1Cent portk kOsc1Cent, 0.02

    kOsc2Vol portk kOsc2Vol, 0.02
    kOsc2Cent portk kOsc2Cent, 0.02

    kOsc3Vol portk kOsc2Vol, 0.02
    kOsc3Cent portk kOsc2Cent, 0.02

    kFilterFreq portk kFilterFreq, 0.02
    kFilterReson portk kFilterReson, 0.02

    kcc1 portk kcc1, 0.1

    kGlobalPan portk kGlobalPan, 0.02
    kGlobalVol portk kGlobalVol, 0.1

    kReverbSend portk kReverbSend, 0.02
    kReverbSize portk kReverbSize, 0.02
    
    kDelaySend portk kDelaySend, 0.02
    kDelayFeedBack portk kDelayFeedback, 0.02
    
//RANDOMIZATION:
    //Frequency 
    kGlobalTuning = cent(kGlobalTuning)
    kFreqVar jitter kFreqVarRange, .2 * kFreqVarRate, 1 * kFreqVarRate
    kFreqTotal = (iFreqMIDI + kFreqVar) * kGlobalTuning

    //Grain Duration 
    kDurVar jitter kDurVarRange, .2 * kDurVarRate, 1 * kDurVarRate
    kDurTotal limit kDur+kDurVar, 0.01, 1

    //Density 
    kDensityVar jitter kDensityVarRange, .2 * kDensityVarRate, 1 * kDensityVarRate
    kDensityTotal limit kDensity + kDensityVar, 0.5, 80

//GRANULATION:
    kFreqPow = 1
    kPhasePow = 1
    iMaxOverlap = 1000

    aGrain1 grain3 kFreqTotal * kOsc1Semi * kOsc1Cent, kPhase, kPitchVar, kPhaseVar, kDurTotal, kDensityTotal, iMaxOverlap, kFn1, iWfn, \
            kFreqPow, kPhasePow
    aGrain2 grain3 kFreqTotal * kOsc2Semi * kOsc2Cent, kPhase, kPitchVar, kPhaseVar, kDurTotal, kDensityTotal, iMaxOverlap, kFn2, iWfn, \
            kFreqPow, kPhasePow
    aGrain3 grain3 kFreqTotal * kOsc3Semi * kOsc3Cent, kPhase, kPitchVar, kPhaseVar, kDurTotal, kDensityTotal, iMaxOverlap, kFn3, iWfn, \
            kFreqPow, kPhasePow

//AUDIO:
   ; aGrainAudio diskgrain gSfilepath, 1, kDensityTotal, kFreqTotal, kDurTotal, 1, iWfn, 1000

    /*if giReady == 1 then 
        if giChannels == 1 then
            aGrainAudioL grain3 kFreqTotal, kPhase,kPitchVar, kPhaseVar, kDurTotal, kDensityTotal , iMaxOverlap, giAudioL, iWfn, \
                 kFreqPow, kPhasePow
        elseif giChannels == 2 then
            aGrainAudioL grain3 kFreqTotal, kPhase,kPitchVar, kPhaseVar, kDurTotal, kDensityTotal , iMaxOverlap, giAudioL, iWfn, \
                 kFreqPow, kPhasePow
            aGrainAudioR grain3 kFreqTotal, kPhase,kPitchVar, kPhaseVar, kDurTotal, kDensityTotal , iMaxOverlap, giAudioR, iWfn, \
                kFreqPow, kPhasePow
        endif
    elseif giReady == 0 then
        aGrainAudioL = 0
        aGrainAudioR = 0
    endif*/

//GRAIN SUMMING:	
    aGrainSum sum aGrain1 * kOsc1Vol * .05, aGrain2 * kOsc2Vol * .05, aGrain3 * kOsc3Vol * .05
   ; aGrainSum = aGrain3 * kOsc3Vol * .05

//FILTERING: 

    //Envelope:
    aFilterEnv mxadsr iFilterAttack, iFilterDecay, iFilterSustain, iFilterRelease
    
    //Frequency
    kFilterFreqTotal = (kFilterFreq * aFilterEnv) + kFreqTotal
    kFilterFreqTotal limit kFilterFreqTotal, 20, 20000
    
    kFilterRangeTotal = kFilterRange + kFilterFreq
    kFilterRangeTotal limit kFilterRangeTotal, 20, 20000

    //Filter type selection
    if iFilterType == 3 then
        aSigFilter butterbp aGrainSum, kFilterFreqTotal, kFilterReson
    else
        kFilterReson limit kFilterReson, 1, 100
        aSigFilter bqrez aGrainSum, kFilterFreqTotal, kFilterReson, iFilterType -1   
    endif

//PANNING
    aSigL, aSigR pan2 aSigFilter, kGlobalPan

//REVERB 
    aVerbL, aVerbR reverbsc aSigL, aSigR, kReverbSize, 6000  
    aSigReverbL ntrpol aSigL, aVerbL, kReverbSend
    aSigReverbR ntrpol aSigR, aVerbR, kReverbSend
    
//DELAY
    aBufferOutL delayr 10
    aTapL       deltapi kDelayTimeLeft
                delayw aSigL + (aTapL * kDelayFeedback)
    aBufferOutR delayr 10
    aTapR       deltapi kDelayTimeRight
                delayw aSigR + (aTapR * kDelayFeedback)
   ; aSigDelayL ntrpol aSigL, aTapL, kDelaySend
    ;aSigDelayR ntrpol aSigR, aTapR, kDelaySend

//EFFECTS SUM
    aSigWetDryL sum aSigReverbL, aTapL * kDelaySend
    aSigWetDryR sum aSigReverbR, aTapR * kDelaySend
//OUTPUT
    aSigSumL = aSigWetDryL * aAmpEnv * kGlobalVol * kcc1
    aSigSumR = aSigWetDryR * aAmpEnv * kGlobalVol * kcc1
    outs aSigSumL, aSigSumR 
endin
</CsInstruments>
<CsScore>
;i 1 0 [60*60*24*7]
f0 z
</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
