ALL={ ...
        %{'DspRmsLog','DspRms2Log'}; ...
        %{'DspRmsLog','ZRmsSmall'}; ...
        %{'DspRmsLog','ZRms2Small'};  ...
        %{'DspRmsLog','DspRms2SmallLog'};  ...
        %{'DspRmsLog','DspRmsSmall4Log'};  ...
        {'DspRmsSmallLog','DspRmsSmall4Log'};  ...
        %{'DspRmsLog','DspRmsSmallLog'};  ...
        %{'DspRmsSmallLog','nDvnSmall'};  ...
        %{'ZRmsSmall','nDvnSmall'};  ...
        %{'DspRmsLog','nDvnSmall'};  ...
    };
TYPES={...
        %{'bin','bin'};  ...
        %{'bin','bin'};  ...
        %{'bin','bin'};  ...
        %{'bin','bin'};  ...
        %{'bin','bin'};  ...
        {'bin','bin'};  ...
        %{'bin','bin'};  ...
        %{'bin','gen'};  ...
        %{'bin','gen'};  ...
        %{'bin','gen'}; ...
    };



for i = 1:length(ALL)
    DSP2_prb.run([],ALL{i},TYPES{i});
    DSP2_prb.plot([],ALL{i},TYPES{i},1);
end