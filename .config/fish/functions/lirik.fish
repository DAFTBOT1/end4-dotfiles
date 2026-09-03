function lirik
    lrc-fetch --audio-dir ~/Music --output-dir ~/lyrics/raw
    or return 1
    lrc-processor --lrc-dir ~/lyrics/raw --audio-dir ~/Music --output-dir ~/lyrics/processed --wlrc
    or return 1
    lrc-vis --lrc-dir ~/lyrics/processed --wlrc
end
