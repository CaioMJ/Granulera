<Cabbage> bounds(0, 0, 0, 0)
//HEADER AND UTILITIES
form caption("Granulera by Caio M. Jiacomini") size(1200,800), colour(0, 0, 0), pluginid("cjb2")
label bounds(408, 6, 344, 45) fontcolour(188, 151, 49, 255) text("G R A N U L E R A")
label bounds(752, 28, 36, 21) text("v2") colour(255, 255, 255, 0) fontcolour(188, 151, 49, 255)

label bounds(482, 52, 212, 21) text("by Caio M. Jiacomini") colour(255, 255, 255, 0) fontcolour(255, 255, 255, 255)
keyboard bounds(2, 724, 1194, 77)

label bounds(10, 8, 118, 20) text("PRESETS") fontcolour(255, 255, 255, 255)
combobox bounds(4, 36, 235, 32) channel("Presets") channeltype("string") value("1") populate("*.snaps") fontcolour(188, 151, 49, 255) 
filebutton bounds(140, 4, 64, 33) channel("SavePreset") text("Save", "Save") mode("snapshot")

button bounds(16, 666, 80, 40) text("PANIC", "PANIC") channel("Panic") colour:1(255, 0, 0, 255) 

//OSCILLATORS
label bounds(298, 124, 97, 15) text("Windowing") fontcolour(255, 255, 255, 255)
combobox bounds(404, 122, 93, 20) text("Soft", "Medium", "Hard", "Rectangle") fontcolour(188, 151, 49, 255) channel("WindowingSelection") value(2)

label bounds(34, 114, 140, 20) text("OSCILLATOR 1") fontcolour(255, 255, 255, 255)
label bounds(12, 140, 82, 17) text("Waveform") fontcolour(255, 255, 255, 255)
combobox bounds(92, 138, 75, 23) text("Sine", "Triangle", "Sawtooth", "Square", "Pulse") fontcolour(188, 151, 49, 255) channel("WaveformSelection1")
hslider bounds(10, 168, 173, 37) range(0, 1, 1, 1, 0.01) text("Volume") channel("Oscillator1Volume") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(10, 204, 173, 37) range(-48, 48, 0, 1, 1) text("Semitone") channel("Oscillator1Semitone") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
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
label bounds(296, 266, 230, 15) fontcolour(255, 255, 255, 255) text("Randomization")
//Freq
rslider bounds(496, 284, 80, 70) range(1, 1000, 0, 0.5, 1) channel("FrequencyVariationRange") text("Frequency Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(496, 358, 80, 70) range(0, 10, 0, 1, 0.1) channel("FrequencyVariationRate") text("Frequency Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(412, 148, 80, 70) range(0, 1000, 0, 0.3, 0.01) text("Pitch Variation") channel("PitchVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Duration
rslider bounds(244, 148, 80, 70) range(0.01, 1, 0.1, 0.5, 0.01) channel("GrainDuration") text("Grain Duration") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(246, 284, 80, 70) range(0, 1, 0, 0.5, 0.01) channel("DurationVariationRange") text("Duration Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(246, 358, 80, 70) range(0, 10, 0, 1, 0.1) channel("DurationVariationRate") text("Duration Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Density
rslider bounds(328, 148, 80, 70) range(0.5, 100, 14, 0.5, 0.1) channel("GrainDensity") text("Grain Density") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(370, 284, 80, 70) range(0, 100, 0, 0.5, 0.1) channel("DensityVariationRange") text("Density Range") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(370, 358, 80, 70) range(0, 10, 0, 1, 0.1) channel("DensityVariationRate") text("Density Rate") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
//Phase
rslider bounds(494, 148, 80, 70) range(0, 1, 1, 1, 0.05) text("Phase Variation") channel("PhaseVariation") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//LFOs
label bounds(744, 250, 70, 20) fontcolour(255, 255, 255, 255) text("L F O")

//FILTERS
label bounds(352, 448, 117, 20) fontcolour(255, 255, 255, 255) text("F I L T E R")
label bounds(378, 480, 89, 15) fontcolour(255, 255, 255, 255) text("Filter Type")
checkbox bounds(250, 474, 120, 26)  channel("FilterNoteTrack") text("Key Tracking")  fontcolour:0(255, 255, 255, 255) fontcolour:1(255, 255, 255, 255) colour:1(188, 151, 49, 255) shape("circle") colour:0(128, 128, 128, 255) value(1)
combobox bounds(472, 477, 87, 20) text("Low Pass", "High Pass", "Band Pass") fontcolour(188, 151, 49, 255) channel("FilterSelection")
rslider bounds(244, 510, 80, 70) range(0.001, 1, 1, 0.5, 0.001) text("Frequency") channel("FilterFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255) identchannel("cc1")
rslider bounds(328, 510, 80, 70) range(0.001, 1, 0.001, 0.5, 0.001) text("Start/End Freq") channel("FilterRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

rslider bounds(412, 510, 80, 70) range(1, 50, 1, 0.5, 0.1) text("Resonance") channel("FilterReson") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(494, 510, 80, 70) range(1, 5000, 1000, 0.5, 0.1) text("Bandwidth") channel("FilterBW") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255) 

label bounds(340, 590, 160, 15) fontcolour(255, 255, 255, 255) text("Filter Envelope")
rslider bounds(244, 610, 80, 70) range(0.01, 10.01, 0, 0.5, 0.01) text("Attack") channel("FilterAttack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(328, 610, 80, 70) range(0.01, 10.01, 0.01, 0.5, 0.01) text("Decay") channel("FilterDecay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(412, 612, 80, 70) range(0.01, 1.01, 1, 0.5, 0.001) text("Sustain") channel("FilterSustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(494, 612, 80, 70) range(0.01, 10.01, 0.1, 0.5, 0.01) text("Release") channel("FilterRelease") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//EFFECTS
label bounds(976, 352, 100, 20) fontcolour(255, 255, 255, 255) text("REVERB")
checkbox bounds(1082, 350, 85, 24)  channel("ReverbBypass") text("Bypass")  fontcolour:0(255, 255, 255, 255) fontcolour:1(255, 255, 255, 255) colour:1(188, 151, 49, 255) shape("circle") colour:0(128, 128, 128, 255) value(1)
hslider bounds(976, 376, 200, 36) range(0, 1, 1, 1, 0.01) channel("ReverbSend") text("Send") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 412, 200, 36) range(0, 1, 0, 1, 0.01) channel("ReverbMix") text("Mix") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 450, 200, 36) range(0, 0.9, 0.4, 1, 0.01) channel("ReverbSize") text("Size") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

label bounds(982, 510, 100, 20) fontcolour(255, 255, 255, 255) text("DELAY")
checkbox bounds(1090, 508, 85, 24)  channel("DelayBypass") text("Bypass")  fontcolour:0(255, 255, 255, 255) fontcolour:1(255, 255, 255, 255) colour:1(188, 151, 49, 255) shape("circle") colour:0(128, 128, 128, 255) value(1)
hslider bounds(976, 532, 200, 36) range(0, 1, 0, 1, 0.01) channel("DelaySend") text("Send") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 568, 200, 36) range(0, 1, 1, 1, 0.01) channel("DelayMix") text("Mix") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 604, 200, 36) range(0.05, 10, 0, 0.4, 0.01) channel("DelayTimeLeft") text("Time Left") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 636, 200, 36) range(0.05, 10, 0, 0.4, 0.01) channel("DelayTimeRight") text("Time Right") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 674, 200, 36) range(0, 1, 0, 1, 0.01) channel("DelayFeedback") text("Feedback") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//LFO
label bounds(630, 396, 131, 15) fontcolour(255, 255, 255, 255) text("Filter Frequency")
rslider bounds(694, 414, 80, 70) range(0, 0.5, 0, 1, 0.01) text("Amount") channel("LfoFilterRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(614, 414, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoFilterFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(816, 396, 91, 15) fontcolour(255, 255, 255, 255) text("Amplitude")
rslider bounds(872, 414, 80, 70) range(0, 0.5, 0, 1, 0.01) text("Amount") channel("LfoAmpRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(792, 414, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoAmpFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(636, 284, 110, 15) fontcolour(255, 255, 255, 255) text("Grain Duration")
rslider bounds(694, 308, 80, 70) range(0, 0.7, 0, 0.5, 0.01) text("Amount") channel("LfoDurRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(614, 308, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoDurFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(808, 284, 111, 15) fontcolour(255, 255, 255, 255) text("Grain Density")
rslider bounds(872, 308, 80, 70) range(0, 100, 0, 0.5, 0.01) text("Amount") channel("LfoDensityRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(792, 308, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoDensityFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(632, 496, 133, 15) fontcolour(255, 255, 255, 255) text("Panning")
rslider bounds(694, 514, 80, 70) range(0, 1, 0, 1, 0.01) text("Amount") channel("LfoPanRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(614, 514, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoPanFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(808, 494, 115, 15) fontcolour(255, 255, 255, 255) text("Tuning")
rslider bounds(872, 514, 80, 70) range(0, 1200, 0, 0.35, 0.01) text("Amount") channel("LfoTuningRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(792, 514, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoTuningFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(796, 594, 140, 15) fontcolour(255, 255, 255, 255) text("Modulation Amount")
rslider bounds(872, 612, 80, 70) range(0, 0.5, 0, 1, 0.01) text("Amount") channel("LfoModAmpRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(792, 612, 80, 70) range(0, 15, 0, 0.5, 0.01) text("Frequency") channel("LfoModAmpFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(624, 594, 151, 15) fontcolour(255, 255, 255, 255) text("Modulation Tuning")
rslider bounds(694, 612, 80, 70) range(0, 3600, 0, 0.5, 1) text("Amount") channel("LfoModFreqRange") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(612, 612, 80, 70) range(0, 15, 0, 1, 0.01) text("Frequency") channel("LfoModFreqFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//MODULATION
label bounds(696, 90, 203, 20) fontcolour(255, 255, 255, 255) text("M O D U L A T I O N")
label bounds(648, 124, 83, 15) fontcolour(255, 255, 255, 255) text("Ring")
rslider bounds(618, 148, 80, 70) range(-3600, 3600, 0, 1, 1) text("Tuning") channel("RMFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(696, 148, 80, 70) range(0, 1, 0, 1, 0.01) text("Amount") channel("RMAmp") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
label bounds(832, 124, 83, 15) fontcolour(255, 255, 255, 255) text("Amplitude")
rslider bounds(790, 148, 80, 70) range(-3600, 3600, 0, 1, 1) text("Tuning") channel("AMFreq") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
rslider bounds(872, 148, 80, 70) range(0, 1, 0, 1, 0.01) text("Amount") channel("AMAmp") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)

//GLOBALS
label bounds(1024, 20, 103, 20) fontcolour(255, 255, 255, 255) text("GLOBAL")
hslider bounds(976, 80, 200, 36) range(0, 1, 0.5, 1, 0.01) text("Stereo Pan") channel("GlobalPan") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(244, 224, 332, 36) range(0, 0.5, 0.5, 1, 0.01) text("Stereo Width") channel("GrainWidth") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 44, 200, 36) range(0, 1, 1, 1, 0.01) text("Volume") channel("GlobalVolume") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255) fontcolour(255, 255, 255, 255)

label bounds(998, 168, 160, 20) fontcolour(255, 255, 255, 255) text("AMP ENVELOPE")
hslider bounds(976, 190, 200, 36) range(0.01, 10, 0.1, 0.5, 0.01) text("Attack") channel("AmpAttack") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 224, 200, 36) range(0.01, 10, 0.1, 0.5, 0.01) text("Decay") channel("AmpDecay") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 258, 200, 36) range(0.0001, 1, 1, 1, 0.01) text("Sustain") channel("AmpSustain") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 292, 200, 36) range(0.01, 10, 0.4, 1, 0.01) text("Release") channel("AmpRelease") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
hslider bounds(976, 116, 200, 36) range(-2400, 2400, 0, 1, 0.01) channel("GlobalTuning") text("Tuning") trackercolour(188, 151, 49, 255) textcolour(255, 255, 255, 255)
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -+rtmidi=NULL -M0 -dm0
</CsOptions>
<CsInstruments>
//TODO:
//Fix filter envelope crackles
//Filter not opening as much as v1.1 for same settings
//Refactor windowing envelopes
//Figure out panning and pan lfo
//3D panning?
//UI review

ksmps = 32
nchnls = 2
0dbfs = 1

seed 0
massign 0, "Trigger"

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

opcode linearRandom_Low, i, iii
    iMin, iMax, iMaxCount xin
    
    iCount = 0
    iRandom = iMax
    
    until iCount == iMaxCount do
        iUniRandom random iMin,iMax
        iRandom = iUniRandom < iRandom ? iUniRandom : iRandom
        iCount += 1
    enduntil
        xout iRandom
endop

opcode linearRandom_High, i, iii
    iMin, iMax, iMaxCount xin
    
    iCount = 0
    iRandom = iMin
    
    until iCount == iMaxCount do
        iUniRandom random iMin,iMax
        iRandom = iUniRandom > iRandom ? iUniRandom : iRandom
        iCount += 1
    enduntil
        xout iRandom
endop


instr Trigger
    //Grain Duration
        kDur            chnget "GrainDuration"
        kDurVarRange    chnget "DurationVariationRange"
        kDurVarRate     chnget "DurationVariationRate"
        
        kLfoDurRange    chnget "LfoDurRange"
        kLfoDurFreq     chnget "LfoDurFreq"
    
        kDurVar     jitter  kDurVarRange, .2 * kDurVarRate, 1 * kDurVarRate
        kLfoDur     lfo     kLfoDurRange, kLfoDurFreq
        kDurTotal   limit   kDur + kDurVar + kLfoDur , 0.01, 1
    
    //Grain Density
        kDensity            chnget "GrainDensity"
        kDensityVarRange    chnget "DensityVariationRange"
        kDensityVarRate     chnget "DensityVariationRate"
        
        kLfoDensityRange    chnget "LfoDensityRange"
        kLfoDensityFreq     chnget "LfoDensityFreq"
    
        kLfoDensity     lfo     kLfoDensityRange, kLfoDensityFreq 
        kDensityVar     jitter  kDensityVarRange, .2 * kDensityVarRate, 1 * kDensityVarRate
        kDensityTotal   limit   kDensity + kDensityVar + kLfoDensity, 0.5, 80
        
        kTrig metro kDensityTotal
    
    //Phase Variation
        kPhaseVar chnget "PhaseVariation"
        kPhaseVar rand kPhaseVar

    //Pitch
        iFreqMIDI cpsmidi
        kPitchVar       chnget "PitchVariation"
        
        kFreqVarRange   chnget "FrequencyVariationRange"
        kFreqVarRate    chnget "FrequencyVariationRate"
        kGlobalTuning   chnget "GlobalTuning"
    
        kLfoTuningRange chnget "LfoTuningRange"
        kLfoTuningFreq  chnget "LfoTuningFreq"
        
        kLfoTuning lfo kLfoTuningRange, kLfoTuningFreq       
                
        kPitchVar rand kPitchVar
        kGlobalTuning = cent(kGlobalTuning)
    
        kFreqVar jitter kFreqVarRange, .2 * kFreqVarRate, 1 * kFreqVarRate
        gkFreqTotal = ((iFreqMIDI + kFreqVar) * kGlobalTuning)
    
    //Spatialization
        kGrainWidth chnget "GrainWidth"
        kRandomPan  random 0, kGrainWidth
    
    //Filter
        iFilterFreq     chnget "FilterFreq"
        iFilterRange    chnget "FilterRange"
        iFilterAttack   chnget "FilterAttack"
        iFilterDecay    chnget "FilterDecay"
        iFilterSustain  chnget "FilterSustain"
        iFilterRelease  chnget "FilterRelease"
        giFilterType =  chnget:i("FilterSelection") - 1
 
        gkFilterFreq    chnget "FilterFreq"
        gkFilterReson   chnget "FilterReson"
        gkFilterReson   port gkFilterReson, 0.02
        gkFilterBW      chnget "FilterBW"
        gkFilterBW      port gkFilterBW, 0.02

        gkFilterNoteTracking chnget "FilterNoteTrack"
            
            //Filter Envelope:    
            if iFilterAttack > 0.01 then
                kFilterEnv  expsegr iFilterRange, iFilterAttack, iFilterFreq, iFilterDecay, iFilterSustain * iFilterFreq, iFilterRelease, iFilterRange
            else
                kFilterEnv  expsegr iFilterFreq, iFilterDecay, iFilterSustain * iFilterFreq, iFilterRelease, iFilterRange
            endif
                
            //Allows filter frequency to be modulated in real time
            kcc1Trig changed2 gkFilterFreq
            kcc1Trig2 init 0
        
            if kcc1Trig == 1 then
                kcc1Trig2 = 1
            endif

            if release() == 0 then
                if kcc1Trig2 == 1 then
                    kFilterFreqSum = gkFilterFreq
                else
                    kFilterFreqSum = kFilterEnv
                endif  
            else
                kFilterFreqSum = kFilterEnv
            endif
    
            //Ports envelope
            kFilterFreqSum port kFilterFreqSum, 0.2
            
            //Filter LFO
            kLfoFilterFreq  chnget "LfoFilterFreq"
            kLfoFilterRange chnget "LfoFilterRange"

            kLfoFilter lfo kLfoFilterRange, kLfoFilterFreq
            kLfoFilter += 0.5

    //Amp envelope
        iAttack     chnget "AmpAttack"
        iDecay      chnget "AmpDecay"
        iSustain    chnget "AmpSustain"
        iRelease    chnget "AmpRelease"

        kAmpEnv     madsr iAttack, iDecay, iSustain, iRelease
        kAmpEnv     port kAmpEnv, 0.05
        
        aAmpEnv interp kAmpEnv
        
     //PANIC
        kPanic chnget "Panic"
     if kPanic == 1 then  
        turnoff 
     endif

    //Granulation 
        schedkwhen kTrig, 0, 0, "Synthesis", 0, kDurTotal, gkFreqTotal + kPitchVar, abs(kPhaseVar), kRandomPan, kAmpEnv, kLfoTuning, kFilterFreqSum, kLfoFilter
        ;                                                       p4                      p5              p6          p7          p8          p9          p10
endin
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
instr Synthesis
    //Oscillator1
        kOsc1Vol    chnget "Oscillator1Volume"
        kOsc1Semi   chnget "Oscillator1Semitone"
        kOsc1Cent   chnget "Oscillator1Cents"
        iFn1        chnget "WaveformSelection1"
    
        kOsc1Vol    port kOsc1Vol, 0.02
        kOsc1Cent   port kOsc1Cent, 0.02
    
        iFn1 = iFn1 + 10 //Offset for waveform f-table numbers
        kOsc1Semi = semitone(kOsc1Semi)
        kOsc1Cent = cent(kOsc1Cent)
    
    //Oscillator2
        kOsc2Vol    chnget "Oscillator2Volume"
        kOsc2Semi   chnget "Oscillator2Semitone"
        kOsc2Cent   chnget "Oscillator2Cents"  
        kFn2        chnget "WaveformSelection2"

        kOsc2Vol    port kOsc2Vol, 0.02
        kOsc2Cent   port kOsc2Cent, 0.02
   
        kFn2 = kFn2 + 10
        kOsc2Semi = semitone(kOsc2Semi)
        kOsc2Cent = cent(kOsc2Cent)
    
    //Oscillator3
        kOsc3Vol    chnget "Oscillator3Volume"
        kOsc3Semi   chnget "Oscillator3Semitone"
        kOsc3Cent   chnget "Oscillator3Cent"
        kFn3        chnget "WaveformSelection3"
    
        kOsc3Vol    port kOsc3Vol, 0.02
        kOsc3Cent   port kOsc3Cent, 0.02
    
        kFn3 = kFn3 + 10
        kOsc3Semi = semitone(kOsc3Semi)
        kOsc3Cent = semitone(kOsc3Cent)
    
    //Windowing
        iWfn chnget "WindowingSelection"
        aWindowEnvSoft      transeg  0,0.015,0,    0.6,p3-0.03,0,      0.6,0.015,0,     0
        aWindowEnvMedium    transeg  0,0.01,2,      0.6,p3-0.02,0,      0.6,0.01,2,    0
        aWindowEnvHard      transeg  0,0.005,5,      0.6,p3-0.01,0,      0.6,0.005,-5,    0  
        aWindowRectangle    transeg  0,0.0025,8,     0.6,p3-0.005,0,     0.6,0.0025,-8,  0
        
        if iWfn == 1 then
            aWindowEnv = aWindowEnvSoft
        elseif iWfn == 2 then
            aWindowEnv = aWindowEnvMedium
        elseif iWfn == 3 then
            aWindowEnv = aWindowEnvHard
        elseif iWfn == 4 then
            aWindowEnv = aWindowRectangle
        endif
        
    //Globals
        kGlobalPan  chnget "GlobalPan"
        gkGlobalVol chnget "GlobalVolume"
        kGlobalPan  port kGlobalPan, 0.02
        gkGlobalVol port gkGlobalVol, 0.1
        
        kLfoAmpRange chnget "LfoAmpRange"
        kLfoAmpFreq chnget "LfoAmpFreq"    
        aAmpLfo lfo kLfoAmpRange, kLfoAmpFreq
        aAmpLfo += 0.5

        kAmpLfo lfo kLfoAmpRange, kLfoAmpFreq
        kAmpLfo += 0.5
        
        kLfoPanRange chnget "LfoPanRange"
        kLfoPanFreq chnget "LfoPanFreq" 
        kPanLfo lfo kLfoPanRange, kLfoPanFreq
        kPanLfo += 1
    //Modulation
        kRMFreq chnget "RMFreq"
        kRMAmp chnget "RMAmp"
        kAMFreq chnget "AMFreq"
        kAMAmp chnget "AMAmp"
        kFMFreq chnget "FMFreq"
        kFMAmp chnget "FMAmp"
        kModRouting chnget "ModRouting"
        kRMFreq port kRMFreq, 0.02
        kRMAmp port kRMAmp, 0.02
        kAMFreq port kAMFreq, 0.02
        kAMAmp port kAMAmp, 0.02
        kLfoModAmpRange chnget "LfoModAmpRange"
        kLfoModAmpFreq chnget "LfoModAmpFreq"
    
        kLfoModFreqRange chnget "LfoModFreqRange"
        kLfoModFreqFreq chnget "LfoModFreqFreq"
        
        kModAmpLfo lfo kLfoModAmpRange, kLfoModAmpFreq
        kModAmpLfo += 0.5
        kModFreqLfo lfo kLfoModFreqRange, kLfoModFreqFreq

    //Oscilattors Sum
        ;aGrain1 oscilikt aWindowEnv * kOsc1Vol, (p4 * kOsc1Semi * kOsc1Cent) + p8, kFn1, p5, 0
        aGrain1 poscil aWindowEnv * kOsc1Vol, (p4 * kOsc1Semi * kOsc1Cent) + p8, iFn1, p5
        aGrain2 oscilikt aWindowEnv * kOsc2Vol, (p4 * kOsc2Semi * kOsc2Cent) + p8, kFn2, p5, 0
        aGrain3 oscilikt aWindowEnv * kOsc3Vol, (p4 * kOsc3Semi * kOsc3Cent) + p8, kFn3, p5, 0
        
        aAmpEnv interp p7
        aGrainSum = (((aGrain1 + aGrain2 + aGrain3)* aAmpEnv)) * 1

    //MODULATION
        //RM
        kRMFreq = cent(kRMFreq)
        aRMOsc poscil 1, (kRMFreq * gkFreqTotal) + kModFreqLfo
    
        aRingModSig ntrpol aGrainSum, aRMOsc * aGrainSum, kRMAmp * kModAmpLfo
    
        //AM
        kAMFreq = cent(kAMFreq)
        aAMOsc poscil 0.5, (kAMFreq * gkFreqTotal) + kModFreqLfo
        aAMOsc += 0.5
     
        aAmpModSig ntrpol aGrainSum, aAMOsc * aGrainSum, kAMAmp * kModAmpLfo

        //MOD SUM
        aGrainMod = (aRingModSig * aAmpModSig) * gkGlobalVol * aAmpLfo  
   
    //FILTERING:   
        kFilterEnvTotal ntrpol 0, 20000, p9

        //Frequency offset        
        if gkFilterNoteTracking == 0 then
            kFilterFreqTotal =  kFilterEnvTotal + p10
        else
            kFilterFreqTotal =  kFilterEnvTotal + p10 + gkFreqTotal ;kFreqTotal = cpsmidi + global cent tuning + frequency randomization values
        endif
        ;printk 0.1, p10
        
        kFilterFreqTotal limit kFilterFreqTotal, 20, 20000
        kFilterFreqTotal port kFilterFreqTotal, 0.2 
        aFilterFreqTotal interp kFilterFreqTotal
        ;printk 0.1, kFilterEnvTotal
        
        //Filter type selection
        if giFilterType == 2 then
            aSigFilter butterbp aGrainMod, kFilterFreqTotal, gkFilterBW
        else
            gkFilterReson limit gkFilterReson, 1, 50
            aSigFilter bqrez aGrainMod, kFilterFreqTotal, gkFilterReson, giFilterType  
        endif

    //Random Pan Position
        iRandomLow linearRandom_Low -p6, 0, 18
        iRandomHigh linearRandom_High 0, p6, 18
        iRandomArray[] fillarray iRandomLow, iRandomHigh
        
        iRandomIndexSelector random 0, 1
        iRandomIndex = iRandomIndexSelector < 0.5 ? 0 : 1
        aGrainOutL, aGrainOutR pan2 aSigFilter, .5 + iRandomArray[iRandomIndex]
    
    //Output
        chnmix aGrainOutL, "SigL"
        chnmix aGrainOutR, "SigR" 
    
    ;p4 = pitch
    ;p5 = phase variation
    ;p6 = random pan position
    ;p7 = amp envelope
    ;p8 = tuning lfo
    ;p9 = filter freq
    ;p10 = filter lfo
endin
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
instr Reverb
    //CHNGET
        aSigL chnget "SigL"
        aSigR chnget "SigR"
        kReverbSize chnget "ReverbSize"
        kReverbMix chnget "ReverbMix"
        kReverbSend chnget "ReverbSend"
        gkReverbBypass chnget "ReverbBypass"

    //PORTK
        kReverbMix port kReverbMix, 0.02
        kReverbSend portk kReverbSend, 0.02
        kReverbSize portk kReverbSize, 0.02
    
     if kReverbSend > 0 then    
        //REVERB
        aVerbL, aVerbR reverbsc aSigL * kReverbSend, aSigR * kReverbSend, kReverbSize, 6000  
    
        //MIX
        if gkReverbBypass == 0 then
            aVerbMixL ntrpol aSigL, aVerbL, kReverbMix
            aVerbMixR ntrpol aSigR, aVerbR, kReverbMix
            outs aVerbMixL, aVerbMixR
        endif
     endif

endin
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
instr Delay
    //CHNGET
        aSigL chnget "SigL"
        aSigR chnget "SigR"
        kDelaySend chnget "DelaySend"
        kDelayMix chnget "DelayMix"
        kDelayTimeLeft chnget "DelayTimeLeft"
        kDelayTimeRight chnget "DelayTimeRight"
        kDelayFeedback chnget "DelayFeedback"
        gkDelayBypass chnget "DelayBypass"

    //PORTK
        kDelayMix port kDelayMix, 0.02
        kDelaySend portk kDelaySend, 0.02
        kDelayTimeLeft portk kDelayTimeLeft, 0.02
        kDelayTimeRight portk kDelayTimeRight, 0.02
        kDelayFeedBack portk kDelayFeedback, 0.02

     if kDelaySend > 0 then
        //DELAY
        aBufferOutL delayr 10
        aTapL       deltapi kDelayTimeLeft
                    delayw (aSigL * kDelaySend) + (aTapL * kDelayFeedback)
        aBufferOutR delayr 10
        aTapR       deltapi kDelayTimeRight
                    delayw (aSigR * kDelaySend) + (aTapR * kDelayFeedback)
    
        if gkDelayBypass == 0 then            
            aDelayMixL ntrpol aSigL, aTapL, kDelayMix
            aDelayMixR ntrpol aSigR, aTapR, kDelayMix
            outs aDelayMixL, aDelayMixR
        endif       
     endif

     //Outputs dry signal only if both effects are bypassed
         if gkDelayBypass == 1 && gkReverbBypass == 1 then
            outs aSigL, aSigR
         endif
 
    //CLEARS SIGNAL
        chnclear "SigL"
        chnclear "SigR" 
endin
</CsInstruments>
<CsScore>
f0 z
i "Delay" 0 999999999
i "Reverb" 0 99999999
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
