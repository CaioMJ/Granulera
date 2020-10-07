<Cabbage> bounds(0, 0, 0, 0)
//HEADER AND UTILITIES
form caption("Granulera by Caio M. Jiacomini") size(1200,600), colour(0, 0, 0), pluginid("cjb1")
keyboard bounds(0, 548, 1194, 52)

//OSCILLATORS
label bounds(228, 53, 139, 16) text("Windowing Shape") fontcolour(255, 255, 255, 255)
combobox bounds(374, 48, 125, 28) text("Sync", "Hanning", "Blackman-Harris", "Gaussian", "Kaiser", "Rectangle", "") fontcolour(188, 151, 49, 255) channel("WindowingSelection") value(2)

label bounds(14, 6, 160, 19) text("Oscillator 1") fontcolour(255, 255, 255, 255)
label bounds(14, 30, 78, 16) text("Waveform") fontcolour(255, 255, 255, 255)
combobox bounds(94, 28, 87, 22) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse") fontcolour(188, 151, 49, 255) channel("WaveformSelection1")
hslider bounds(14, 56, 168, 36) range(0, 1, 1, 1, 0.01) text("Volume") channel("Oscillator1Volume") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(14, 90, 168, 36) range(0, 1, 0.5, 1, 0.01) text("Stereo Pan") channel("Oscillator1Pan") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(14, 126, 168, 36) range(-48, 48, 0, 1, 1) text("Semitone") channel("Oscillator1Semitone") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(14, 162, 168, 36) range(-100, 100, 0, 1, 1) text("Cents") channel("Oscillator1Cents") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(14, 208, 160, 19) fontcolour(255, 255, 255, 255) text("Oscillator 2")
label bounds(14, 234, 78, 16) fontcolour(255, 255, 255, 255) text("Waveform")
combobox bounds(94, 232, 87, 22) channel("WaveformSelection2") fontcolour(188, 151, 49, 255) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse")
hslider bounds(14, 256, 168, 36) channel("Oscillator2Volume") range(0, 1, 1, 1, 0.01) text("Volume") textcolour(255, 255, 255, 255) trackercolour(188, 151, 49, 255)
hslider bounds(14, 292, 168, 36) channel("Oscillator2Pan") range(0, 1, 0.5, 1, 0.01) text("Stereo Pan") textcolour(255, 255, 255, 255) trackercolour(188, 151, 49, 255)
hslider bounds(14, 326, 168, 36) range(-48, 48, 0, 1, 1) text("Semitone") channel("Oscillator2Semitone") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(14, 360, 168, 36) range(-100, 100, 0, 1, 1) text("Cents") channel("Oscillator2Cents") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(14, 406, 160, 19) fontcolour(255, 255, 255, 255) text("Oscillator 3")
filebutton bounds(14, 428, 168, 36), text("Load Audio Sample", ""),  channel("filename"), shape("ellipse") fontcolour:0(188, 151, 49, 255)
hslider bounds(14, 464, 168, 36) range(0, 1, 1, 1, 0.01) text("Volume") channel("Oscillator3Volume") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(14, 500, 168, 36) range(-48, 48, 0, 1, 1) text("Semitone") channel("Oscillator3Semitone") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)


//GRAINS
label bounds(236, 12, 160, 19) fontcolour(255, 255, 255, 255) text("Grains")
label bounds(356, 162, 160, 19) fontcolour(255, 255, 255, 255) text("Randomization")
//Freq
rslider bounds(216, 78, 100, 70) range(0, 20000, 0, 0.5, 1) channel("GrainFrequencyOffset") text("Grain Frequency Offset") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(226, 186, 100, 70) range(0, 10000, 0, 0.5, 1) channel("FrequencyVariationRange") text("Grain Frequency Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(228, 268, 100, 70) range(0.1, 10, 1, 1, 0.1) channel("FrequencyVariationRate") text("Grain Frequency Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(580, 270, 100, 70) range(0, 1000, 0.1, 1, 0.01) text("Pitch Variation") channel("PitchVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Duration
rslider bounds(318, 76, 100, 70) range(0.01, 1, 0.05, 0.5, 0.01) channel("GrainDuration") text("Grain Duration") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(344, 190, 100, 70) range(0, 1, 0, 0.5, 0.01) channel("DurationVariationRange") text("Grain Duration Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(342, 272, 100, 70) range(0.1, 10, 1, 1, 0.1) channel("DurationVariationRate") text("Grain Duration Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Density
rslider bounds(422, 78, 100, 70) range(0.5, 80, 20, 0.5, 0.1) channel("GrainDensity") text("Grain Density") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(460, 194, 100, 70) range(0, 80, 0, 0.5, 0.1) channel("DensityVariationRange") text("Grain Density Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(452, 270, 100, 70) range(0.1, 10, 1, 1, 0.1) channel("DensityVariationRate") text("Grain Density Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Phase
rslider bounds(578, 190, 100, 70) range(0, 1, 0, 1, 0.05) text("Phase Variation") channel("PhaseVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//ENVELOPES
label bounds(1006, 338, 160, 19) fontcolour(255, 255, 255, 255) text("Amp Envelope")
vslider bounds(980, 368, 50, 150) range(0.01, 10, 0.1, 0.5, 0.01) text("Attack") channel("AmpAttack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
vslider bounds(1026, 370, 50, 150) range(0.01, 10, 0.1, 0.5, 0.01) text("Decay") channel("AmpDecay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
vslider bounds(1080, 370, 50, 150) range(0, 1, 1, 1, 0.05) text("Sustain") channel("AmpSustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
vslider bounds(1132, 368, 50, 150) range(0.01, 10, 0.1, 0.5, 0.01) text("Release") channel("AmpRelease") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(746, 346, 160, 19) fontcolour(255, 255, 255, 255) text("Filter Envelope")
vslider bounds(740, 374, 50, 150) range(0.01, 10, 0.01, 0.5, 0.01) text("Attack") channel("FilterAttack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
vslider bounds(794, 370, 50, 150) range(0.01, 10, 0.01, 0.5, 0.01) text("Decay") channel("FilterDecay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
vslider bounds(846, 376, 50, 150) range(0, 1, 1, 1, 0.05) text("Sustain") channel("FilterSustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
vslider bounds(900, 374, 50, 150) range(0.01, 10, 0.01, 0.5, 0.01) text("Release") channel("FilterRelease") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)


//FILTERS
label bounds(268, 410, 73, 19) fontcolour(255, 255, 255, 255) text("Filter")
combobox bounds(358, 410, 87, 22) text("LowPass", "HighPass", "BandPass") fontcolour(188, 151, 49, 255) channel("FilterSelection")
rslider bounds(256, 442, 100, 70) range(0, 20000, 20000, 0.5, 1) text("Filter Frequency") channel("FilterFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(368, 444, 100, 70) range(1, 250, 0, 0.5, 0.01) text("Filter Resonance") channel("FilterReson") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

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
;FIX LOW RUMBLE
;MAKE FREQ VARIATION WORK
;IMPLEMENT AUDIO FILE PLAYBACK
;Add LFOs to key arameters
;Add Reverb 


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
;gSfilepath	init	"" ;THIS WILL BE TABLE #11

instr Grains
//CHNGET:
    //Amp Envelope
    iAttack chnget "AmpAttack"
    iDecay chnget "AmpDecay"
    iSustain chnget "AmpSustain"
    iRelease chnget "AmpRelease"
    //Grain Frequency
    kFreqOffset chnget "GrainFrequencyOffset"
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
    kPhaseVar chnget "PhaseVariation"
    kPitchVar chnget "PitchVariation"
    //Oscillators
    kOsc1Vol chnget "Oscillator1Volume"
    kOsc1Pan chnget "Oscillator1Pan"
    kOsc1Semi chnget "Oscillator1Semitone"
    kOsc1Cent chnget "Oscillator1Cents"
    kOsc2Vol chnget "Oscillator2Volume"
    kOsc2Pan chnget "Oscillator2Pan"
    kOsc2Semi chnget "Oscillator2Semitone"
    kOsc2Cent chnget "Oscillator2Cents"
    //Filter
    kFilterFreq chnget "FilterFreq"
    kFilterReson chnget "FilterReson"
    kFilter chnget "FilterSelection"
    iFilterAttack chnget "FilterAttack"
    iFilterDecay chnget "FilterDecay"
    iFilterSustain chnget "FilterSustain"
    iFilterRelease chnget "FilterRelease"
    //F tables
    iWfn chnget "WindowingSelection"
    kFn1 chnget "WaveformSelection1"
    kFn2 chnget "WaveformSelection2"

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
kOsc1Pan portk kOsc1Pan, 0.02

kOsc2Vol portk kOsc2Vol, 0.02
kOsc2Cent portk kOsc2Cent, 0.02
kOsc2Pan portk kOsc2Pan, 0.02

kFilterFreq portk kFilterFreq, 0.02
kFilterReson portk kFilterReson, 0.02

kcc1 portk kcc1, 0.1

//RANDOMIZATION:
    //Frequency 
    kFreqVar jitter kFreqVarRange, .2 * kFreqVarRate, 1 * kFreqVarRate
    ;kFreqTotal = iFreqMIDI + kFreqVar

    //Grain Duration 
    kDurVar jitter kDurVarRange, .2 * kDurVarRate, 1 * kDurVarRate
    kDurTotal limit kDur+kDurVar, 0.01, 1

    //Density 
    kDensityVar jitter kDensityVarRange, .2 * kDensityVarRate, 1 * kDensityVarRate
    kDensityTotal limit kDensity + kDensityVar, 0.5, 80

//GRANULATION:
kFreqPow = 0
kPhase = 0
kPhasePow = 0
iMaxOverlap = 1000
aGrain1 grain3 iFreqMIDI * kOsc1Semi * kOsc1Cent, kPhase, kPitchVar, kPhaseVar, kDurTotal, kDensityTotal , iMaxOverlap, kFn1, iWfn, \
		 kFreqPow, kPhasePow
aGrain2 grain3 iFreqMIDI * kOsc2Semi * kOsc2Cent, kPhase, kPitchVar, kPhaseVar, kDurTotal, kDensityTotal , iMaxOverlap, kFn2, iWfn, \
		 kFreqPow, kPhasePow

//PANNING:
aGrain1L, aGrain1R pan2 aGrain1, kOsc1Pan
aGrain2L, aGrain2R pan2 aGrain2, kOsc2Pan

//GRAIN SUMMING:	
aGrain sum	(aGrain1L + aGrain1R) * kOsc1Vol, (aGrain2L+ aGrain2R) * kOsc2Vol
aSig = aGrain * aAmpEnv * kcc1 * .05

//FILTERING:
;aSigLp lpf18 aSig, kFilterFreq, kFilterReson, 0
aSigLp, aSigHp, aSigBp svfilter aSig, kFilterFreq * aFilterEnv, kFilterReson

if kFilter == 1 then
    aSigFilter = aSigLp
elseif kFilter == 2 then
    aSigFilter = aSigHp
elseif kFilter == 3 then
    aSigFilter = aSigBp
endif

//OUTPUT
outs aSigFilter, aSigFilter

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
