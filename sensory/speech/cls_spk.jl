using WAV
using MFCC
using Plots

function load_data()
    return wavread("0_george_9.wav")
end

function main()
    y, fs = wavread("0_george_9.wav")
    wavplay(y, fs)
    m = mfcc(y, fs)
    heatmap(1:size(m[1],1), 1:size(m[1],2), m[1])
end

main()

