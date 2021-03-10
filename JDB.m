

%% FIXED ISSUE WE DISCUSSED
imshow(imread('/Volumes/Data/.daveDB/img/LRSI/smp/23ca916e807d8ef7ed2214f919ebca5d/_fig_/R0008.png'));
% example image


%% DIFFERENT SETS
"Generated several sets"

% NORMAL -> 20,000+
PszXY=[32 32];
kernSz=PszXY;
limSz=[6 6];
dnk=1;
(PszBuff=[50 50]);

% LRG -> 5000
PsXY=[128 128];
kernSz=PszXY;
limSz=[26 26];
dnk=1;
(PszBuff=[150 150]);

% DNK
PsXY=[128 128];
kernSz=PszXY;
limSz=[26 26];
dnk=4;
(PszBuff=[150 150]);



%% 3 JOINT DIST
"DOES NOT INCLUDE BORDERS"

DSP2.plot_joint_DSP_2_3();
DSP2.plot_joint_DSP_2_3_lrg();
DSP2.plot_joint_DSP_2_3_dnk();



%% BINS - WHICH TO USE
"cutoff at 8 - from paper"

% original bins
DSP2.view_bins();


% 5 to start with
DSP2.view_bins_integers();

% 3 to do later
DSP2.view_bins_extra();

% all of them
DSP2.view_bins_all();



%% LIM
"DVN - not within limSz (0.2 of patch size)"
"Border"
"DSP3 not < 3 within limSz"
"Want to further limit by DSP2 small window"
imshow(imread('/Volumes/Data/.daveDB/img/LRSI/bin/dde1e5e347a373251e4422858ef9a621/_hist_/L0008.png'));

DSP2.plot_joint_DSP_2_3lim();
DSP2.plot_joint_DSP_2_3lim_lrg();
DSP2.plot_joint_DSP_2_3lim_dnk();


%% PATCHES
load('/Volumes/Data/.daveDB/img/LRSI/pch/4f8a8555861ed541982f1103fd788f29/_P_.mat');

f B
o binVal
c 0 40

21 0.5
24 1.5
27 2.5
28 3.5
29 4.5
30 6.5

%% COUNTS
load('/Volumes/Data/.daveDB/img/LRSI/pch/4f8a8555861ed541982f1103fd788f29/_src_.mat');
bins=histogram(vertcat(table{:,5}));
formatFigure('Disparity Contrast Bins','Count','n Patches');

%% QUESTIONS
'
    which dnk & sz?
    should just DSP2 limit AND/OR DSP3?
    which window size & limits  for DSP2 & DSP3 limiting"

'
%% STILL TO DO
'
    recompute contrasts for each, verify that they are the same"
    apply disparity (on the fly)
    fix mean luminance and luminance contrast

    viewer
        fix mean luminance & lum contrast
        display mean luminance & lum contrast
        initial options
                DC
                RMS
                clim
                sort
                - additional load hooks

    Ptchs
        hist for P from tbl in
        apply tables after loaded
        randomly select based upon criteria
                n samples
                w/ or w/out replacement
                seed
        make tables on the fly
        nback for piloting
        convert into P?
        psycho simple interface
        load hooks


'

normalized contrast contrast
