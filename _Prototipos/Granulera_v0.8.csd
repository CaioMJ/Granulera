<Cabbage> bounds(0, 0, 0, 0)
//HEADER AND UTILITIES
form caption("Granulera by Caio M. Jiacomini") size(1200,800), colour(0, 0, 0), pluginid("cjb1")
label bounds(450, 4, 344, 45) fontcolour(188, 151, 49, 255) text("G R A N U L E R A")
label bounds(504, 54, 212, 22) text("by Caio M. Jiacomini") colour(255, 255, 255, 0) fontcolour(255, 255, 255, 255)
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
rslider bounds(296, 236, 100, 70) range(0, 1000, 0, 0.3, 0.01) text("Pitch Variation") channel("PitchVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Duration
rslider bounds(296, 162, 100, 70) range(0.01, 1, 0.1, 0.5, 0.01) channel("GrainDuration") text("Grain Duration") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(332, 376, 100, 70) range(0, 1, 0, 0.5, 0.01) channel("DurationVariationRange") text("Duration Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(332, 460, 100, 70) range(0.1, 10, 1, 1, 0.1) channel("DurationVariationRate") text("Duration Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Density
rslider bounds(400, 164, 100, 70) range(0.5, 100, 20, 0.5, 0.1) channel("GrainDensity") text("Grain Density") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(434, 376, 100, 70) range(0, 100, 0, 0.5, 0.1) channel("DensityVariationRange") text("Density Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(436, 460, 100, 70) range(0.1, 10, 1, 1, 0.1) channel("DensityVariationRate") text("Density Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Phase
rslider bounds(400, 236, 100, 70) range(0, 1, 0, 1, 0.05) text("Phase Variation") channel("PhaseVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//LFOs
label bounds(720, 350, 70, 21) fontcolour(255, 255, 255, 255) text("L F O")

//FILTERS
label bounds(696, 108, 117, 21) fontcolour(255, 255, 255, 255) text("F I L T E R")
label bounds(638, 134, 115, 18) fontcolour(255, 255, 255, 255) text("Filter Type")
combobox bounds(766, 132, 87, 22) text("Low Pass", "High Pass", "Band Pass") fontcolour(188, 151, 49, 255) channel("FilterSelection")
rslider bounds(562, 160, 100, 70) range(0.001, 1, 1, 0.35, 0.001) text("Frequency") channel("FilterFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(664, 160, 100, 69) range(0.001, 1, 0.001, 0.35, 0.001) text("Start/End Freq") channel("FilterRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)


rslider bounds(768, 158, 100, 70) range(1, 100, 1, 0.5, 0.1) text("Resonance") channel("FilterReson") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(868, 158, 100, 70) range(1, 5000, 1, 0.5, 0.1) text("Bandwidth") channel("FilterBW") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(664, 238, 160, 17) fontcolour(255, 255, 255, 255) text("Filter Envelope")
rslider bounds(572, 260, 100, 70) range(0.01, 10.01, 0, 0.5, 0.01) text("Attack") channel("FilterAttack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(672, 258, 100, 70) range(0.01, 10.01, 0.01, 0.5, 0.01) text("Decay") channel("FilterDecay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(772, 260, 100, 70) range(0.01, 1.01, 1, 0.35, 0.001) text("Sustain") channel("FilterSustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(870, 260, 100, 70) range(0.01, 10.01, 0.1, 0.5, 0.01) text("Release") channel("FilterRelease") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//EFFECTS
label bounds(1028, 8, 100, 19) fontcolour(255, 255, 255, 255) text("R E V E R B")
hslider bounds(978, 32, 200, 36) range(0, 1, 0.5, 1, 0.01) channel("ReverbSend") text("Send") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(978, 70, 200, 36) range(0, 0.9, 0.4, 1, 0.01) channel("ReverbSize") text("Size") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(1026, 114, 100, 19) fontcolour(255, 255, 255, 255) text("D E L A Y ")
hslider bounds(984, 134, 200, 36) range(0, 1, 0, 1, 0.01) channel("DelaySend") text("Send") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(984, 170, 200, 36) range(0.05, 10, 0, 0.4, 0.01) channel("DelayTimeLeft") text("Time Left") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(984, 204, 200, 36) range(0.05, 10, 0, 0.4, 0.01) channel("DelayTimeRight") text("Time Right") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(984, 240, 200, 36) range(0, 1, 0, 1, 0.01) channel("DelayFeedback") text("Feedback") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//LFO
label bounds(596, 494, 141, 18) fontcolour(255, 255, 255, 255) text("Filter Frequency")
rslider bounds(658, 514, 100, 70) range(0, 2, 0, 1, 0.01) text("Range") channel("LfoFilterRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(560, 514, 100, 70) range(0, 10, 0, 0.5, 0.01) text("Frequency") channel("LfoFilterFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(772, 492, 141, 18) fontcolour(255, 255, 255, 255) text("Amplitude")
rslider bounds(856, 516, 100, 70) range(0, 0.5, 0, 1, 0.01) text("Range") channel("LfoAmpRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(756, 514, 100, 70) range(0, 10, 0, 0.5, 0.01) text("Frequency") channel("LfoAmpFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(588, 382, 141, 18) fontcolour(255, 255, 255, 255) text("Grain Duration")
rslider bounds(646, 402, 100, 70) range(0, 0.7, 0, 0.5, 0.01) text("Range") channel("LfoDurRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(546, 404, 100, 70) range(0, 10, 0, 0.5, 0.01) text("Frequency") channel("LfoDurFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(792, 378, 141, 18) fontcolour(255, 255, 255, 255) text("Grain Density")
rslider bounds(864, 398, 100, 70) range(0.5, 100, 0, 0.5, 0.01) text("Range") channel("LfoDensityRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(762, 398, 100, 70) range(0, 10, 0, 0.5, 0.01) text("Frequency") channel("LfoDensityFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(580, 586, 141, 18) fontcolour(255, 255, 255, 255) text("Pannning")
rslider bounds(640, 602, 100, 72) range(0, 1, 0, 1, 0.01) text("Range") channel("LfoPanRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(534, 604, 100, 70) range(0, 10, 0, 0.5, 0.01) text("Frequency") channel("LfoPanFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(790, 588, 141, 18) fontcolour(255, 255, 255, 255) text("Tuning")
rslider bounds(856, 608, 100, 70) range(0, 1200, 0, 0.35, 0.01) text("Range") channel("LfoTuningRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(756, 608, 100, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoTuningFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//GLOBALS
label bounds(1024, 326, 103, 19) fontcolour(255, 255, 255, 255) text("G L O B A L")
hslider bounds(976, 390, 200, 36) range(0, 1, 0.5, 1, 0.01) text("Stereo Pan") channel("GlobalPan") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 354, 200, 36) range(0, 1, 1, 1, 0.01) text("Volume") channel("GlobalVolume") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255) fontcolour(255, 255, 255, 255)
;hslider bounds(976, 354, 200, 36) range(0, 1, 0, 1, 0.01) text("Dry/Wet") channel("DryWet") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255) fontcolour(255, 255, 255, 255)

label bounds(998, 484, 160, 19) fontcolour(255, 255, 255, 255) text("Amp Envelope")
hslider bounds(978, 504, 200, 36) range(0.01, 10, 0.1, 0.5, 0.01) text("Attack") channel("AmpAttack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(978, 538, 200, 36) range(0.01, 10, 0.1, 0.5, 0.01) text("Decay") channel("AmpDecay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 572, 200, 36) range(0.0001, 1, 1, 1, 0.01) text("Sustain") channel("AmpSustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 606, 200, 36) range(0.01, 10, 0.1, 1, 0.01) text("Release") channel("AmpRelease") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 426, 200, 36) range(-1200, 1200, 0, 0.5, 0.01) channel("GlobalTuning") text("Tuning") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

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
;Make filter freq fully controllable during performance
;CC1 control for filter frequency is tied to frequency knob
;Add LFO to filter
;Pitch Bend

//BACKLOG:
;Fazer um variante com playback de arquivo de audio
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
    kPhase init 1 ;chnget "Phase"
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
    iFilterFreq chnget "FilterFreq"
    kFilterFreq chnget "FilterFreq"
    iFilterRange chnget "FilterRange"
    kFilterReson chnget "FilterReson"
    kFilterBW chnget "FilterBW"
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
    //Globals
    kGlobalPan chnget "GlobalPan"
    gkGlobalVol chnget "GlobalVolume"
    kGlobalTuning chnget "GlobalTuning"
    //LFO
    kLfoFilterFreq chnget "LfoFitlerFreq"
    kLfoFilterRange chnget "LfoFilterRange"
    kLfoAmpRange chnget "LfoAmpRange"
    kLfoAmpFreq chnget "LfoAmpFreq"
    
    kLfoDensityRange chnget "LfoDensityRange"
    kLfoDensityFreq chnget "LfoDensityFreq"
    kLfoDurRange chnget "LfoDurRange"
    kLfoDurFreq chnget "LfoDurFreq"
    
    kLfoPanRange chnget "LfoPanRange"
    kLfoPanFreq chnget "LfoPanFreq"
    kLfoTuningRange chnget "LfoTuningRange"
    kLfoTuningFreq chnget "LfoTuningFreq"

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
    
    kcc1 chanctrl 1, 1, 0.001, 1
        
//PORT:
    kOsc1Vol port kOsc1Vol, 0.02
    kOsc1Cent port kOsc1Cent, 0.02

    kOsc2Vol port kOsc2Vol, 0.02
    kOsc2Cent port kOsc2Cent, 0.02

    kOsc3Vol port kOsc2Vol, 0.02
    kOsc3Cent port kOsc2Cent, 0.02

    kFilterFreq port kFilterFreq, 0.02
    kFilterReson port kFilterReson, 0.02

    kcc1 port kcc1, 0.1
  
    kGlobalPan port kGlobalPan, 0.02
    gkGlobalVol port gkGlobalVol, 0.1
    
//RANDOMIZATION:
    //Frequency 
    kLfoTuning lfo kLfoTuningRange, kLfoTuningFreq
    kGlobalTuning = cent(kGlobalTuning + kLfoTuning)
    kFreqVar jitter kFreqVarRange, .2 * kFreqVarRate, 1 * kFreqVarRate
    kFreqTotal = ((iFreqMIDI + kFreqVar) * kGlobalTuning)

    //Grain Duration 
    kDurVar jitter kDurVarRange, .2 * kDurVarRate, 1 * kDurVarRate
    kLfoDur lfo kLfoDurRange, kLfoDurFreq
    kDurTotal limit kDur + kDurVar + kLfoDur , 0.01, 1

    //Density 
    kDensityVar jitter kDensityVarRange, .2 * kDensityVarRate, 1 * kDensityVarRate
    kLfoDensity lfo kLfoDensityRange, kLfoDensityFreq
    kDensityTotal limit kDensity + kDensityVar + kLfoDensity, 0.5, 80

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


//GRAIN SUMMING:	
    aGrainSum sum aGrain1 * kOsc1Vol * .05, aGrain2 * kOsc2Vol * .05, aGrain3 * kOsc3Vol * .05

//FILTERING: 

    //LFO
    kFilterLfo lfo kLfoFilterRange, kLfoFilterFreq
    
    //Envelope:    
    if iFilterAttack > 0.01 then
        kFilterEnv1  expsegr iFilterRange, iFilterAttack, 1 * iFilterFreq, iFilterDecay, 1 * iFilterSustain * iFilterFreq, iFilterRelease, iFilterRange
    else
        kFilterEnv1  expsegr iFilterFreq, iFilterDecay, 1 * iFilterSustain * iFilterFreq, iFilterRelease, iFilterFreq
    endif
    
    kFilterEnv scale kFilterEnv1, kcc1*5, 0
    
    kFilterTotal ntrpol 0, 20000, kFilterEnv ;kFilterEnv1 * kcc1
    aFilterEnv interp kFilterTotal

    //Frequency
    kFilterFreqTotal = aFilterEnv + kFreqTotal ;kFreqTotal = cpsmidi + global cent tuning + frequency randomization values
    kFilterFreqTotal limit kFilterFreqTotal, 20, 20000
    kFilterFreqTotal = kFilterFreqTotal * kFilterFreq
    
  
    //Filter type selection
    if iFilterType == 3 then
        aSigFilter butterbp aGrainSum, kFilterFreqTotal, kFilterBW
    else
        kFilterReson limit kFilterReson, 1, 100
        aSigFilter bqrez aGrainSum, kFilterFreqTotal, kFilterReson, iFilterType -1   
    endif

//PANNING
    kPanLfo lfo kLfoPanRange, kLfoPanFreq
    kPanLfo += 1
    aSigL, aSigR pan2 aSigFilter * gkGlobalVol, kGlobalPan * kPanLfo

//OUTPUT
    aAmpLfo lfo kLfoAmpRange, kLfoAmpFreq
    aAmpLfo += 0.5
    gaSigL = aSigL * aAmpEnv * aAmpLfo
    gaSigR = aSigR * aAmpEnv * aAmpLfo
    
    outs gaSigL , gaSigR 
    
//EFFECT SENDS
    gkReverbSend chnget "ReverbSend"
    gaReverbSendL = gaSigL * gkReverbSend
    gaReverbSendR = gaSigR * gkReverbSend
    
    gkDelaySend chnget "DelaySend"
    gaDelaySendL = gaSigL * gkDelaySend
    gaDelaySendR = gaSigR * gkDelaySend
endin

instr Delay
if gkDelaySend > 0 then
    //CHNGET
    kDelayTimeLeft chnget "DelayTimeLeft"
    kDelayTimeRight chnget "DelayTimeRight"
    kDelayFeedback chnget "DelayFeedback"
    
    //PORTK
    gkDelaySend portk gkDelaySend, 0.02
    kDelayFeedBack portk kDelayFeedback, 0.02
    
    //DELAY
    aBufferOutL delayr 10
    gaTapL       deltapi kDelayTimeLeft
                delayw gaDelaySendL + (gaTapL * kDelayFeedback)
    aBufferOutR delayr 10
    gaTapR       deltapi kDelayTimeRight
                delayw gaDelaySendR + (gaTapR * kDelayFeedback)
    
   outs gaTapL, gaTapR
endif
endin

instr Reverb
if gkReverbSend > 0 then
    //CHNGET
    kReverbSize chnget "ReverbSize"
    
    //PORTK
    gkReverbSend portk gkReverbSend, 0.02
    kReverbSize portk kReverbSize, 0.02
    
    //REVERB
    gaVerbL, gaVerbR reverbsc gaReverbSendL, gaReverbSendR, kReverbSize, 6000  
    
    outs gaVerbL, gaVerbR
endif
endin

/* Mixer
//CHNGET
kDryWet chnget "DryWet"
kDryWet port kDryWet, 0.02

//SUMMING
aFxSumL = gaVerbL + gaTapL
aFxSumR = gaVerbR + gaTapR

//INTERPOLATION
aSigSumL ntrpol gaSigL, aFxSumL, kDryWet
aSigSumR ntrpol gaSigR, aFxSumR, kDryWet

//OUTPUT
outs aSigSumL, aSigSumR
endin*/

</CsInstruments>
<CsScore>
i "Delay" 0 9999
i "Reverb" 0 9999
;i "Mixer" 0 9999
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
