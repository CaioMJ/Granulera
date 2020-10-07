<Cabbage> bounds(0, 0, 0, 0)
//HEADER AND UTILITIES
form caption("Granulera by Caio M. Jiacomini") size(1200,600), colour(0, 0, 0), pluginid("cjb1")
label bounds(450, 4, 344, 45) fontcolour(188, 151, 49, 255) text("G R A N U L E R A")
label bounds(504, 54, 212, 22) text("by Caio M. Jiacomini") colour(255, 255, 255, 0) fontcolour(255, 255, 255, 255)
filebutton bounds(10, 408, 103, 40) channel("FilePath")

keyboard bounds(0, 548, 1194, 52)

//OSCILLATORS
label bounds(274, 118, 118, 20) text("Windowing") fontcolour(255, 255, 255, 255)
combobox bounds(406, 116, 125, 28) text("Sync", "Hanning", "Blackman-Harris", "Gaussian", "Kaiser", "Rectangle", "") fontcolour(188, 151, 49, 255) channel("WindowingSelection") value(2)

label bounds(30, 6, 161, 19) text("OSCILLATOR 1") fontcolour(255, 255, 255, 255)
label bounds(30, 30, 78, 16) text("Waveform") fontcolour(255, 255, 255, 255)
combobox bounds(110, 28, 87, 22) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse") fontcolour(188, 151, 49, 255) channel("WaveformSelection1")
hslider bounds(14, 56, 200, 36) range(0, 1, 1, 1, 0.01) text("Volume") channel("Oscillator1Volume") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(14, 92, 200, 36) range(-48, 48, 0, 1, 1) text("Semitone") channel("Oscillator1Semitone") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(14, 128, 200, 36) range(-100, 100, 0, 1, 1) text("Cents") channel("Oscillator1Cents") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(30, 208, 160, 19) fontcolour(255, 255, 255, 255) text("OSCILLATOR 2")
label bounds(30, 234, 78, 16) fontcolour(255, 255, 255, 255) text("Waveform")
combobox bounds(110, 232, 87, 22) channel("WaveformSelection2") fontcolour(188, 151, 49, 255) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse")
hslider bounds(14, 256, 200, 36) channel("Oscillator2Volume") range(0, 1, 0, 1, 0.01) text("Volume") textcolour(255, 255, 255, 255) trackercolour(188, 151, 49, 255)

hslider bounds(14, 292, 200, 36) range(-48, 48, 0, 1, 1) text("Semitone") channel("Oscillator2Semitone") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(14, 326, 200, 36) range(-100, 100, 0, 1, 1) text("Cents") channel("Oscillator2Cents") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//GRAINS
label bounds(358, 86, 99, 19) fontcolour(255, 255, 255, 255) text("G R A I N S")
label bounds(290, 314, 222, 19) fontcolour(255, 255, 255, 255) text("R A N D O M I Z A T I O N")
//Freq
rslider bounds(242, 340, 100, 70) range(1, 1000, 0, 0.5, 1) channel("FrequencyVariationRange") text("Frequency Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(244, 424, 94, 70) range(0.1, 10, 1, 1, 0.1) channel("FrequencyVariationRate") text("Frequency Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(302, 218, 100, 70) range(0, 1000, 0, 0.3, 0.01) text("Pitch Variation") channel("PitchVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Duration
rslider bounds(254, 142, 100, 70) range(0.01, 1, 0.1, 0.5, 0.01) channel("GrainDuration") text("Grain Duration") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(368, 342, 100, 70) range(0, 1, 0, 0.5, 0.01) channel("DurationVariationRange") text("Duration Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(364, 432, 100, 70) range(0.1, 10, 1, 1, 0.1) channel("DurationVariationRate") text("Duration Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Density
rslider bounds(358, 144, 100, 70) range(0.5, 80, 20, 0.5, 0.1) channel("GrainDensity") text("Grain Density") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(490, 344, 100, 70) range(0, 80, 0, 0.5, 0.1) channel("DensityVariationRange") text("Density Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(486, 432, 100, 70) range(0.1, 10, 1, 1, 0.1) channel("DensityVariationRate") text("Density Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Phase
rslider bounds(468, 146, 100, 70) range(0, 1, 0, 1, 0.01) text("Phase") channel("Phase") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(414, 222, 100, 70) range(0, 1, 0, 1, 0.05) text("Phase Variation") channel("PhaseVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//FILTERS
label bounds(698, 88, 117, 21) fontcolour(255, 255, 255, 255) text("F I L T E R")
label bounds(640, 114, 115, 18) fontcolour(255, 255, 255, 255) text("Filter Type")
combobox bounds(768, 112, 87, 22) text("Low Pass", "High Pass", "Band Pass", "Band Reject", "All Pass") fontcolour(188, 151, 49, 255) channel("FilterSelection")
rslider bounds(638, 144, 100, 70) range(0, 20000, 20000, 0.5, 1) text("Frequency") channel("FilterFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(744, 142, 100, 70) range(1, 500, 0, 0.5, 0.01) text("Resonance") channel("FilterReson") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(666, 216, 160, 19) fontcolour(255, 255, 255, 255) text("Filter Envelope")
rslider bounds(574, 240, 100, 70) range(0.01, 10, 0.01, 0.5, 0.01) text("Attack") channel("FilterAttack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(674, 238, 100, 70) range(0.01, 10, 0.01, 0.5, 0.01) text("Decay") channel("FilterDecay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(774, 240, 100, 70) range(0, 1, 1, 1, 0.01) text("Sustain") channel("FilterSustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(872, 240, 100, 70) range(0.01, 10, 10, 0.5, 0.01) text("Release") channel("FilterRelease") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//REVERB
label bounds(1008, 12, 100, 19) fontcolour(255, 255, 255, 255) text("R E V E R B")
hslider bounds(958, 36, 200, 36) range(0, 1, 0, 1, 0.01) channel("ReverbSend") text("Send") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(958, 74, 200, 36) range(0, 0.9, 0.4, 1, 0.01) channel("ReverbSize") text("Size") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//GLOBALS
label bounds(1024, 164, 103, 19) fontcolour(255, 255, 255, 255) text("G L O B A L")
hslider bounds(982, 230, 200, 36) range(0, 1, 0.5, 1, 0.01) text("Stereo Pan") channel("GlobalPan") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(984, 194, 200, 36) range(0, 1, 1, 1, 0.01) text("Volume") channel("GlobalVolume") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255) fontcolour(255, 255, 255, 255)
label bounds(1000, 338, 160, 19) fontcolour(255, 255, 255, 255) text("Amp Envelope")
hslider bounds(974, 368, 200, 36) range(0.01, 10, 0.1, 0.5, 0.01) text("Attack") channel("AmpAttack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(974, 402, 200, 36) range(0.01, 10, 0.1, 0.5, 0.01) text("Decay") channel("AmpDecay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(974, 436, 200, 36) range(0, 1, 1, 1, 0.01) text("Sustain") channel("AmpSustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(972, 470, 200, 36) range(0.01, 10, 0.01, 1, 0.01) text("Release") channel("AmpRelease") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(982, 266, 200, 36) range(-1200, 1200, 0, 1, 0.01) channel("GlobalTuning") text("Tuning") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)


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
;FIX FILTER ENVELOPE: SUSTAIN KEEPS NOTES TRIGGERED
;IMPLEMENT AUDIO FILE PLAYBACK
;Add Wet/Dry control for reverb
;Add LFOs to key parameters

seed 0
massign 0, 1

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
giSaw ftgen 13, 0, 16384, 10, 1, .5, .333, .25, .2, .166, .143, .125, .111, .1, .0909, .0833, .077
giSquare ftgen 14, 0, 16384, 10, 1, 0, .333, 0, .2, 0, .143, 0, .111, 0, .0909, 0, .077, 0, .0666, 0, .0588
giPulse ftgen 15, 0, 16384, 10, 1, 1, 1, 1, 0.7, 0.5, 0.3, 0.1

//Audio
;gichans		init	0
;giReady		init	0
gSfilepath	init	"" ;THIS WILL BE TABLE #21

instr Grains
gSfilepath chnget "FileName"
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
    //Filter
    kFilterFreq chnget "FilterFreq"
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
    //Reverb
    kReverbSend chnget "ReverbSend"
    kReverbSize chnget "ReverbSize"
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

//MIDI:
iFreqMIDI cpsmidi
aAmpEnv madsr iAttack, iDecay, iSustain, iRelease
aFilterEnv madsr iFilterAttack, iFilterDecay, iFilterSustain, iFilterRelease

kcc1 chanctrl 1, 1, 0, 3

//PORTK:
kOsc1Vol portk kOsc1Vol, 0.02
kOsc1Cent portk kOsc1Cent, 0.02

kOsc2Vol portk kOsc2Vol, 0.02
kOsc2Cent portk kOsc2Cent, 0.02

kFilterFreq portk kFilterFreq, 0.02
kFilterReson portk kFilterReson, 0.02

kcc1 portk kcc1, 0.1

kGlobalPan portk kGlobalPan, 0.02
kGlobalVol portk kGlobalVol, 0.1

kReverbSend portk kReverbSend, 0.02
kReverbSize portk kReverbSize, 0.02

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

aGrain1 grain3 kFreqTotal * kOsc1Semi * kOsc1Cent, kPhase, kPitchVar, kPhaseVar, kDurTotal, kDensityTotal , iMaxOverlap, kFn1, iWfn, \
		 kFreqPow, kPhasePow
aGrain2 grain3 kFreqTotal * kOsc2Semi * kOsc2Cent, kPhase, kPitchVar, kPhaseVar, kDurTotal, kDensityTotal , iMaxOverlap, kFn2, iWfn, \
		 kFreqPow, kPhasePow, 0, 0

//GRAIN SUMMING:	
aGrainSum sum aGrain1 * kOsc1Vol * .05, aGrain2 * kOsc2Vol * .05

//FILTERING:
kFilterFreqTotal = (kFilterFreq * aFilterEnv) + kFreqTotal
kFilterFreqTotal limit kFilterFreqTotal, 20, 20000

aSigLow, aSigHigh, aSigBand svfilter aGrainSum, kFilterFreqTotal, kFilterReson

if iFilterType == 1 then
    aSigFilter = aSigLow
    
elseif iFilterType == 2 then
    aSigFilter = aSigHigh
     
elseif iFilterType == 3 then
    aSigFilter = aSigBand
endif
;aSigFilter bqrez aGrainSum, kFilterFreq * aFilterEnv, kFilterReson, iFilterType -1

//PANNING
aSigL, aSigR pan2 aSigFilter, kGlobalPan

//REVERB
aVerbL, aVerbR reverbsc aSigL * kReverbSend, aSigR * kReverbSend, kReverbSize, 6000

//OUTPUT
aSigSumL = (aSigL + aVerbL) * aAmpEnv * kGlobalVol * kcc1
aSigSumR = (aSigR + aVerbR) * aAmpEnv * kGlobalVol * kcc1
outs aSigSumL, aSigSumR 
endin
</CsInstruments>
<CsScore>
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
