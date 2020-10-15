<Cabbage> bounds(0, 0, 0, 0)
//HEADER AND UTILITIES
form caption("Granulera by Caio M. Jiacomini") size(1200,800), colour(0, 0, 0), pluginid("cjb1")
label bounds(408, 6, 344, 45) fontcolour(188, 151, 49, 255) text("G R A N U L E R A")
label bounds(484, 56, 212, 21) text("by Caio M. Jiacomini") colour(255, 255, 255, 0) fontcolour(255, 255, 255, 255)
keyboard bounds(6, 724, 1194, 77)

label bounds(10, 8, 118, 20) text("PRESETS") fontcolour(255, 255, 255, 255)
combobox bounds(4, 36, 235, 32) channel("Presets") channeltype("string") value("1") populate("*.snaps") fontcolour(188, 151, 49, 255) 
filebutton bounds(140, 4, 64, 33) channel("SavePreset") text("Save", "Save") mode("snapshot")

//OSCILLATORS
label bounds(298, 124, 97, 15) text("Windowing") fontcolour(255, 255, 255, 255)
combobox bounds(404, 122, 93, 20) text("Sync", "Hanning", "Blackman-Harris", "Gaussian", "Kaiser", "Rectangle", "") fontcolour(188, 151, 49, 255) channel("WindowingSelection") value(2)

label bounds(34, 114, 140, 20) text("OSCILLATOR 1") fontcolour(255, 255, 255, 255)
label bounds(12, 140, 82, 17) text("Waveform") fontcolour(255, 255, 255, 255)
combobox bounds(92, 138, 75, 23) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse") fontcolour(188, 151, 49, 255) channel("WaveformSelection1")
hslider bounds(10, 168, 173, 37) range(0, 1, 1, 1, 0.01) text("Volume") channel("Oscillator1Volume") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(8, 206, 173, 37) range(-48, 48, 0, 1, 1) text("Semitone") channel("Oscillator1Semitone") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(10, 242, 173, 37) range(-100, 100, 0, 1, 1) text("Cents") channel("Oscillator1Cents") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)


label bounds(28, 302, 160, 19) fontcolour(255, 255, 255, 255) text("OSCILLATOR 2")
label bounds(30, 328, 78, 16) fontcolour(255, 255, 255, 255) text("Waveform")
combobox bounds(108, 326, 87, 22) channel("WaveformSelection2") fontcolour(188, 151, 49, 255) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse")
hslider bounds(12, 350, 200, 36) channel("Oscillator2Volume") range(0, 1, 0, 1, 0.01) text("Volume") textcolour(255, 255, 255, 255) trackercolour(188, 151, 49, 255)
hslider bounds(12, 386, 200, 36) range(-48, 48, 0, 1, 1) text("Semitone") channel("Oscillator2Semitone") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(12, 420, 200, 36) range(-100, 100, 0, 1, 1) text("Cents") channel("Oscillator2Cents") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(30, 490, 160, 19) fontcolour(255, 255, 255, 255) text("OSCILLATOR 3")
label bounds(16, 510, 94, 18) fontcolour(255, 255, 255, 255) text("Waveform")
combobox bounds(116, 510, 87, 22) fontcolour(188, 151, 49, 255) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse") channel("WaveformSelection3")
hslider bounds(16, 530, 200, 36) range(0, 1, 0, 1, 0.01) text("Volume") channel("Oscillator3Volume") textcolour(255, 255, 255, 255) trackercolour(188, 151, 49, 255)
hslider bounds(16, 566, 200, 36) range(-48, 48, 0, 1, 1) text("Semitone") channel("Oscillator3Semitone") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(16, 600, 200, 36) range(-100, 100, 0, 1, 1) text("Cents") channel ("Oscillator3Cents") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//GRAINS
label bounds(358, 90, 99, 20) fontcolour(255, 255, 255, 255) text("G R A I N S")
label bounds(294, 236, 230, 15) fontcolour(255, 255, 255, 255) text("Randomization")
//Freq
rslider bounds(494, 328, 80, 70) range(1, 1000, 0, 0.5, 1) channel("FrequencyVariationRange") text("Frequency Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(494, 254, 80, 70) range(0.1, 10, 1, 1, 0.1) channel("FrequencyVariationRate") text("Frequency Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(412, 148, 80, 70) range(0, 1000, 0, 0.3, 0.01) text("Pitch Variation") channel("PitchVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Duration
rslider bounds(244, 148, 80, 70) range(0.01, 1, 0.1, 0.5, 0.01) channel("GrainDuration") text("Grain Duration") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(244, 254, 80, 70) range(0, 1, 0, 0.5, 0.01) channel("DurationVariationRange") text("Duration Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(244, 328, 80, 70) range(0.1, 10, 1, 1, 0.1) channel("DurationVariationRate") text("Duration Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Density
rslider bounds(328, 148, 80, 70) range(0.5, 100, 20, 0.5, 0.1) channel("GrainDensity") text("Grain Density") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(368, 254, 80, 70) range(0, 100, 0, 0.5, 0.1) channel("DensityVariationRange") text("Density Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(368, 328, 80, 70) range(0.1, 10, 1, 1, 0.1) channel("DensityVariationRate") text("Density Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Phase
rslider bounds(494, 148, 80, 70) range(0, 1, 0, 1, 0.05) text("Phase Variation") channel("PhaseVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//LFOs
label bounds(744, 90, 70, 20) fontcolour(255, 255, 255, 255) text("L F O")

//FILTERS
label bounds(352, 442, 117, 20) fontcolour(255, 255, 255, 255) text("F I L T E R")
label bounds(390, 478, 115, 15) fontcolour(255, 255, 255, 255) text("Filter Type")
combobox bounds(502, 476, 87, 20) text("Low Pass", "High Pass", "Band Pass") fontcolour(188, 151, 49, 255) channel("FilterSelection")
rslider bounds(244, 510, 80, 70) range(0.001, 1, 1, 0.5, 0.001) text("Frequency") channel("FilterFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255) identchannel("cc1")
rslider bounds(328, 510, 80, 70) range(0.001, 1, 0.001, 0.5, 0.001) text("Start/End Freq") channel("FilterRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

rslider bounds(412, 510, 80, 70) range(1, 50, 1, 0.5, 0.1) text("Resonance") channel("FilterReson") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(494, 510, 80, 70) range(1, 5000, 1, 0.5, 0.1) text("Bandwidth") channel("FilterBW") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(340, 590, 160, 15) fontcolour(255, 255, 255, 255) text("Filter Envelope")
rslider bounds(244, 610, 80, 70) range(0.01, 10.01, 0, 0.5, 0.01) text("Attack") channel("FilterAttack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(328, 610, 80, 70) range(0.01, 10.01, 0.01, 0.5, 0.01) text("Decay") channel("FilterDecay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(412, 612, 80, 70) range(0.01, 1.01, 1, 0.5, 0.001) text("Sustain") channel("FilterSustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(494, 612, 80, 70) range(0.01, 10.01, 0.1, 0.5, 0.01) text("Release") channel("FilterRelease") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//EFFECTS
label bounds(1028, 8, 100, 20) fontcolour(255, 255, 255, 255) text("REVERB")
hslider bounds(978, 32, 200, 36) range(0, 1, 0, 1, 0.01) channel("ReverbSend") text("Send") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(978, 70, 200, 36) range(0, 0.9, 0.4, 1, 0.01) channel("ReverbSize") text("Size") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(1024, 130, 100, 20) fontcolour(255, 255, 255, 255) text("DELAY")
hslider bounds(982, 150, 200, 36) range(0, 1, 0, 1, 0.01) channel("DelaySend") text("Send") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(982, 186, 200, 36) range(0.05, 10, 0, 0.4, 0.01) channel("DelayTimeLeft") text("Time Left") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(982, 218, 200, 36) range(0.05, 10, 0, 0.4, 0.01) channel("DelayTimeRight") text("Time Right") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(982, 256, 200, 36) range(0, 1, 0, 1, 0.01) channel("DelayFeedback") text("Feedback") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//LFO
label bounds(630, 236, 131, 15) fontcolour(255, 255, 255, 255) text("Filter Frequency")
rslider bounds(694, 254, 80, 70) range(0, 0.5, 0, 1, 0.01) text("Range") channel("LfoFilterRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(614, 254, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoFilterFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(816, 236, 91, 15) fontcolour(255, 255, 255, 255) text("Amplitude")
rslider bounds(872, 254, 80, 70) range(0, 0.5, 0, 1, 0.01) text("Range") channel("LfoAmpRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(792, 254, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoAmpFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(636, 124, 110, 15) fontcolour(255, 255, 255, 255) text("Grain Duration")
rslider bounds(694, 148, 80, 70) range(0, 0.7, 0, 0.5, 0.01) text("Range") channel("LfoDurRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(614, 148, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoDurFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(808, 124, 111, 15) fontcolour(255, 255, 255, 255) text("Grain Density")
rslider bounds(872, 148, 80, 70) range(0.5, 100, 0, 0.5, 0.01) text("Range") channel("LfoDensityRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(792, 148, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoDensityFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(632, 336, 133, 15) fontcolour(255, 255, 255, 255) text("Panning")
rslider bounds(694, 354, 80, 70) range(0, 1, 0, 1, 0.01) text("Range") channel("LfoPanRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(614, 354, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoPanFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(808, 334, 115, 15) fontcolour(255, 255, 255, 255) text("Tuning")
rslider bounds(872, 352, 80, 70) range(0, 1200, 0, 0.35, 0.01) text("Range") channel("LfoTuningRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(792, 352, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoTuningFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//MODULATION
label bounds(684, 442, 203, 20) fontcolour(255, 255, 255, 255) text("M O D U L A T I O N")
label bounds(642, 486, 83, 15) fontcolour(255, 255, 255, 255) text("Ring")
rslider bounds(604, 510, 80, 70) range(1, 10, 1, 1, 0.01) text("Freq Multiplier") channel("RMFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(684, 510, 80, 70) range(0, 1, 0, 1, 0.01) text("Amount") channel("RMAmp") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(816, 486, 83, 15) fontcolour(255, 255, 255, 255) text("Amplitude")
rslider bounds(778, 510, 80, 70) range(1, 10, 1, 1, 0.01) text("Freq Multiplier") channel("AMFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(860, 510, 80, 70) range(0, 1, 0, 1, 0.01) text("Amount") channel("AMAmp") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(730, 590, 83, 15) fontcolour(255, 255, 255, 255) text("Frequency")
rslider bounds(692, 612, 80, 70) range(0, 20000, 1, 1, 0.01) text("Freq Multiplier") channel("FMFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(772, 612, 80, 70) range(0, 1, 0, 1, 0.01) text("Amount") channel("FMAmp") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)


//GLOBALS
label bounds(1024, 332, 103, 20) fontcolour(255, 255, 255, 255) text("GLOBAL")
hslider bounds(976, 396, 200, 36) range(0, 1, 0.5, 1, 0.01) text("Stereo Pan") channel("GlobalPan") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 360, 200, 36) range(0, 1, 1, 1, 0.01) text("Volume") channel("GlobalVolume") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255) fontcolour(255, 255, 255, 255)
;hslider bounds(976, 354, 200, 36) range(0, 1, 0, 1, 0.01) text("Dry/Wet") channel("DryWet") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255) fontcolour(255, 255, 255, 255)

label bounds(998, 502, 160, 20) fontcolour(255, 255, 255, 255) text("AMP ENVELOPE")
hslider bounds(978, 522, 200, 36) range(0.01, 10, 0.1, 0.5, 0.01) text("Attack") channel("AmpAttack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(978, 556, 200, 36) range(0.01, 10, 0.1, 0.5, 0.01) text("Decay") channel("AmpDecay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 590, 200, 36) range(0.0001, 1, 1, 1, 0.01) text("Sustain") channel("AmpSustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 624, 200, 36) range(0.01, 10, 0.1, 1, 0.01) text("Release") channel("AmpRelease") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 432, 200, 36) range(-1200, 1200, 0, 1, 0.01) channel("GlobalTuning") text("Tuning") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
checkbox bounds(244, 472, 120, 26)  channel("cc1on") text("Modwheel on")  fontcolour:0(255, 255, 255, 255) fontcolour:1(255, 255, 255, 255) colour:1(188, 151, 49, 255) shape("circle") colour:0(128, 128, 128, 255)

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
;Fix FM Modulation implementation

//BACKLOG:
;Add an extra f table to load audio files into oscillators
;Make an effect variant that granulates live input

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
    kcc1Toggle chnget "cc1on"
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
    kLfoFilterFreq chnget "LfoFilterFreq"
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
    //Modulation
    kRMFreq chnget "RMFreq"
    kRMAmp chnget "RMAmp"
    kAMFreq chnget "AMFreq"
    kAMAmp chnget "AMAmp"
    kFMFreq chnget "FMFreq"
    kFMAmp chnget "FMAmp"

//OSCILLATORS:
    kFn1 = kFn1 + 10 //Offset for waveform f-table numbers
    kOsc1Semi = semitone(kOsc1Semi)
    kOsc1Cent = cent(kOsc1Cent)
    
    kFn2 = kFn2 + 10
    kOsc2Semi = semitone(kOsc2Semi)
    kOsc2Cent = cent(kOsc2Cent)
    
    kFn3 = kFn3 + 10
    kOsc3Semi = semitone(kOsc3Semi)
    kOsc3Cent = semitone(kOsc3Cent)
    
//MIDI:
    iFreqMIDI cpsmidi
    aAmpEnv mxadsr iAttack, iDecay, iSustain, iRelease
    kcc1 chanctrl 1, 1, 0, 1
        
//PORT:
    kOsc1Vol port kOsc1Vol, 0.02
    kOsc1Cent port kOsc1Cent, 0.02

    kOsc2Vol port kOsc2Vol, 0.02
    kOsc2Cent port kOsc2Cent, 0.02

    kOsc3Vol port kOsc3Vol, 0.02
    kOsc3Cent port kOsc3Cent, 0.02

    kFilterReson port kFilterReson, 0.02
  
    kGlobalPan port kGlobalPan, 0.02
    gkGlobalVol port gkGlobalVol, 0.1
    
    kRMFreq port kRMFreq, 0.02
    kRMAmp port kRMAmp, 0.02
    kAMFreq port kAMFreq, 0.02
    kAMAmp port kAMAmp, 0.02
    kFMFreq port kFMFreq, 0.02
    kFMAmp port kFMAmp, 0.02
    
//LFOs
    kLfoDur lfo kLfoDurRange, kLfoDurFreq
    kLfoDensity lfo kLfoDensityRange, kLfoDensityFreq
    
    kLfoFilter lfo kLfoFilterRange, kLfoFilterFreq
    kLfoFilter += 0.5
    kLfoTuning lfo kLfoTuningRange, kLfoTuningFreq

    kPanLfo lfo kLfoPanRange, kLfoPanFreq
    kPanLfo += 1
    aAmpLfo lfo kLfoAmpRange, kLfoAmpFreq
    aAmpLfo += 0.5
     
//RANDOMIZATION:

    //Frequency 
    kGlobalTuning = cent(kGlobalTuning + kLfoTuning)
    kFreqVar jitter kFreqVarRange, .2 * kFreqVarRate, 1 * kFreqVarRate
    kFreqSum = ((iFreqMIDI + kFreqVar) * kGlobalTuning)
    
        //FM
        kFMOsc poscil 1, kFMFreq
        kFreqTotal ntrpol kFreqSum, kFreqSum + kFMOsc, kFMAmp
        

    //Grain Duration 
    kDurVar jitter kDurVarRange, .2 * kDurVarRate, 1 * kDurVarRate
    kDurTotal limit kDur + kDurVar + kLfoDur , 0.01, 1

    //Density 
    kDensityVar jitter kDensityVarRange, .2 * kDensityVarRate, 1 * kDensityVarRate
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
    aGrainSum sum aGrain1 * kOsc1Vol * .3, aGrain2 * kOsc2Vol * .3, aGrain3 * kOsc3Vol * .3

//FILTERING: 
    //Envelope:    
    if iFilterAttack > 0.01 then
        kFilterEnv  expsegr iFilterRange, iFilterAttack, iFilterFreq, iFilterDecay, iFilterSustain * iFilterFreq, iFilterRelease, iFilterRange
    else
        kFilterEnv  expsegr iFilterFreq, iFilterDecay,iFilterSustain * iFilterFreq, iFilterRelease, iFilterRange
    endif
    //Toggle between modwheel and UI knob
    if kcc1Toggle == 1 then
    
        kcc1Trig changed2 kcc1
        kcc1Trig2 init 0
        if kcc1Trig == 1 then
            kcc1Trig2 = 1
        endif
            
        if release() == 0 then
            if kcc1Trig2 == 1 then
                kFilterFreqSum = kcc1
            else
                kFilterFreqSum = kFilterEnv
            endif  
        else
            kFilterFreqSum = kFilterEnv
        endif
        
    else
        kcc1Trig changed2 kFilterFreq
        kcc1Trig2 init 0
        if kcc1Trig == 1 then
            kcc1Trig2 = 1
        endif

        if release() == 0 then
            if kcc1Trig2 == 1 then
                kFilterFreqSum = kFilterFreq
            else
                kFilterFreqSum = kFilterEnv
            endif  
        else
            kFilterFreqSum = kFilterEnv
        endif
     endif
    
    //Ports and interpolates envelope
    kFilterFreqSum port kFilterFreqSum, 0.2
    
    kFilterEnvTotal ntrpol 0, 20000, kFilterFreqSum * kLfoFilter
    aFilterEnv interp kFilterEnvTotal
    
    //Frequency offset
    kFilterFreqTotal = kLfoFilter + aFilterEnv + kFreqTotal;kFreqTotal = cpsmidi + global cent tuning + frequency randomization values
    kFilterFreqTotal limit kFilterFreqTotal, 20, 20000
  
    //Filter type selection
    if iFilterType == 3 then
        aSigFilter butterbp aGrainSum, kFilterFreqTotal, kFilterBW
    else
        kFilterReson limit kFilterReson, 1, 50
        aSigFilter bqrez aGrainSum, kFilterFreqTotal, kFilterReson, iFilterType -1   
    endif
    
//MODULATION
    //RM
    aRMOsc poscil 1, kRMFreq * kFreqTotal
    //AM
    aAMOsc poscil 0.5, kAMFreq * kFreqTotal
    aAMOsc += 0.5
    
//SUMMING    
    aSig = aSigFilter * gkGlobalVol * aAmpEnv * aAmpLfo
    
    aRingModSig ntrpol aSig, aRMOsc * aSig, kRMAmp
    aAmpModSig ntrpol aSig, aAMOsc * aSig, kAMAmp
    
    aSigSum = aAmpModSig * aRingModSig
    
//PANNING
    gaSigL, gaSigR pan2 aSigSum, kGlobalPan * kPanLfo

//OUTPUT    
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
f0 z
i "Delay" 0 9999
i "Reverb" 0 9999
;i "Mixer" 0 9999
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
