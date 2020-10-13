<Cabbage> bounds(0, 0, 0, 0)
//Headers and Utilities
form caption("Granulera by Caio M. Jiacomini") size(1000,500), colour(0, 0, 0), pluginid("cjb1")

filebutton bounds(6, 16, 177, 35), text("Load Audio Sample", ""),  channel("filename"), shape("ellipse") 
keyboard bounds(0, 428, 1000, 69)

label bounds(6, 56, 176, 16) text("Waveform Selection") fontcolour(255, 255, 255, 255)
combobox bounds(8, 76, 176, 44) text("Loaded Sample", "Sine", "Sawtooth", "Square", "Pulse") fontcolour(188, 151, 49, 255) channel("WaveformSelection")
label bounds(184, 54, 176, 16) text("Windowing Shape") fontcolour(255, 255, 255, 255)
combobox bounds(188, 76, 176, 44) text("Hanning", "Blackman-Harris", "Rectangle", "Sync") fontcolour(188, 151, 49, 255) channel("WindowingSelection")


//Grains
//Freq
rslider bounds(14, 150, 100, 70) range(0, 20000, 0, 0.5, 1) channel("GrainFrequencyOffset") text("Grain Frequency Offset") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(12, 236, 100, 70) range(0, 10000, 0, 0.5, 1) channel("FrequencyVariationRange") text("Grain Frequency Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(12, 318, 100, 70) range(0.1, 10, 1, 1, 0.1) channel("FrequencyVariationRate") text("Grain Frequency Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(538, 154, 100, 70) range(0, 1000, 0.1, 1, 0.01) text("Pitch Variation") channel("PitchVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Duration
rslider bounds(118, 148, 100, 70) range(0.01, 1, 0.05, 0.5, 0.01) channel("GrainDuration") text("Grain Duration") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(126, 240, 100, 70) range(0, 1, 0, 0.5, 0.01) channel("DurationVariationRange") text("Grain Duration Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(116, 318, 100, 70) range(0.1, 10, 1, 1, 0.1) channel("DurationVariationRate") text("Grain Duration Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Density
rslider bounds(218, 148, 100, 70) range(0.5, 80, 20, 0.5, 0.1) channel("GrainDensity") text("Grain Density") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(234, 244, 100, 70) range(0, 80, 0, 0.5, 0.1) channel("DensityVariationRange") text("Grain Density Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(228, 316, 100, 70) range(0.1, 10, 1, 1, 0.1) channel("DensityVariationRate") text("Grain Density Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Phase
rslider bounds(438, 152, 100, 70) range(0, 1, 0.1, 0.01, 0.01) text("Phase Variation") channel("PhaseVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//Envelope
vslider bounds(776, 270, 50, 150) range(0.01, 10, 0.1, 0.5, 0.01) text("Attack") channel("Attack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
vslider bounds(832, 266, 50, 150) range(0.01, 10, 0.1, 0.5, 0.01) text("Decay") channel("Decay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
vslider bounds(886, 266, 50, 150) range(0, 1, 1, 1, 0.1) text("Sustain") channel("Sustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
vslider bounds(942, 270, 50, 150) range(0.01, 10, 0.1, 0.5, 0.01) text("Release") channel("Release") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -+rtmidi=NULL -M0 -dm0
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1
//TO DO:
;Make it a 3 Oscillator synth: 2 waveforms + 1 sample
;Make it so you can change note interval and volume of oscillators independently
;Sum oscilators before granulating? Make it so granulation parameters are the same
;Add a Low Pass Filter and envelope for filter
;Add LFOs to key arameters
;Add Reverb 


seed 0
massign 0, 1

//Windowing
giWfn2 ftgen 1, 0, 16384, 20, 2 //Hanning window
giWfn5 ftgen 2, 0, 16384, 20, 5 //Blackman-Harris window
giWfn8 ftgen 3, 0, 16384, 20, 8 //Rectangle window
giWfn9 ftgen 4, 0, 16384, 20, 9 //Sync window

//Waveforms
giSine ftgen 11, 0, 4096, 10, 1
giSaw ftgen 12, 0, 16384, 10, 1, 0.5, 0.3, 0.25, 0.2, 0.167, 0.14, 0.125, .111
giSquare ftgen 13, 0, 16384, 10, 1, 0, 0.3, 0, 0.2, 0, 0.14, 0, .111
giPulse ftgen 14, 0, 16384, 10, 1, 1, 1, 1, 0.7, 0.5, 0.3, 0.1

//Audio
;gichans		init	0
;giReady		init	0
;gSfilepath	init	"" ;THIS WILL BE TABLE #11

instr Grains
//CHNGET:
iAttack chnget "Attack"
iDecay chnget "Decay"
iSustain chnget "Sustain"
iRelease chnget "Release"

kFreqOffset chnget "GrainFrequencyOffset"
kFreqVarRange chnget "FrequencyVariationRange"
kFreqVarRate chnget "FrequencyVariationRate"

kDur chnget "GrainDuration"
kDurVarRange chnget "DurationVariationRange"
kDurVarRate chnget "DurationVariationRate"

kDensity chnget "GrainDensity"
kDensityVarRange chnget "DensityVariationRange"
kDensityVarRate chnget "DensityVariationRate"

kPhaseVar chnget "PhaseVariation"
kPitchVar chnget "PitchVariation"

//FUNCTION TABLES:
    //Windowing
    iWfn chnget "WindowingSelection"

    //Signal
    kFn chnget "WaveformSelection"
    kFn = kFn + 10 //Offset for waveform f-table numbers

//MIDI:
iFreqMIDI cpsmidi
aEnv madsr iAttack, iDecay, iSustain, iRelease
kcc1 chanctrl 1, 1, 0, 3

//PORTK:
kcc1 portk kcc1, 0.1

//RANDOMIZATION:
    //Frequency 
    kFreqVar jspline kFreqVarRange, .2 * kFreqVarRate, 1 * kFreqVarRate
    ;kFreqTotal = iFreqMIDI + kFreqVar
    kFreqPow = 0

    //Grain Duration 
    kDurVar jspline kDurVarRange, .2 * kDurVarRate, 1 * kDurVarRate
    kDurTotal limit kDur+kDurVar, 0.01, 1

    //Density 
    kDensityVar jspline kDensityVarRange, .2 * kDensityVarRate, 1 * kDensityVarRate
    kDensityTotal limit kDensity + kDensityVar, 0.5, 80

    //Phase 
    kPhase = 0
    kPhasePow = 0

//GRANULATION:
iMaxOverlap = 1000
aGrain grain3 iFreqMIDI, kPhase, kPitchVar, kPhaseVar, kDurTotal, kDensityTotal , iMaxOverlap, kFn, iWfn, \
		 kFreqPow, kPhasePow

//SUMMING:		
aSig sum aGrain * aEnv * kcc1 * .1	
outs aSig, aSig

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
