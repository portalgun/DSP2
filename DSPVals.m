%% SMP BINS

        % befoe 5/5/21
        smp.binNums=[27:39];

        % 5/5/21 to 5/12/21
        smp.binNums=[22:41];

        % 5/12/21
        smp.binNums=[19 21 23 25 27:41];

        % 3/7/22
        smp.binNums=[19 21 23 25 27:41];

%% BLK BINS
        % 4/28
        blk.bins=[5,7,9,11,13];

        % before 5/5/21
        blk.bins=[1,4,8,11,13];

        % 5/25/21
        blk.bins=[1,4,8,13,17];

        % 3/7/22 (3/10)
        blk.bins=[1,4,8,13,17];
        %19    25    30    35    39

        % 3/15/22
        blk.bins=[1,4,8,13,17];
        %19    25    30    35    39

        % 3/24/22
            blk.bins=[1,4,8,13,17];
        %19    25    30    35    39


%% CMP
        % ORIGINAL
         -13.1250  -12.6562  -12.1875  -11.7188  -11.2500  -10.7812  -10.3125  -9.8438   -9.3750; ...
         -11.2500  -10.7812  -10.3125  -9.8438   -9.3750   -8.9062   -8.4375   -7.9688   -7.5000; ...
         -8.9062   -8.5547   -8.2031   -7.8516   -7.5000   -7.1484   -6.7969   -6.4453   -6.0938; ...
         -7.0312   -6.6797   -6.3281   -5.9766   -5.6250   -5.2734   -4.9219   -4.5703   -4.2188; ...
         -4.6875   -4.4531   -4.2188   -3.9844   -3.7500   -3.5156   -3.2812   -3.0469   -2.8125; ...

        % ?
         -13.2500     -12.2500    -11.2500    -10.2500    -9.2500;  ...

        % 4/28
         -13.1250    -12.1875    -11.2500    -10.3125    -9.3750; ... % 0.9375
         -11.2500    -10.3125    -9.3750     -8.4375     -7.5000; ...  % 0.9375
         -8.9062     -8.2031     -7.5000     -6.7969     -6.0938; ...  % 0.7031
         -7.0312     -6.3281     -5.6250     -4.9219     -4.2188; ...  % 0.7031
         -4.6875     -4.2188     -3.7500     -3.2812     -2.8125; ... % 0.4687

        % 5/5/2012
         -14.9200    -13.250    -11.2500     -9.2500     -7.25000; ... % 1.8750
         -13.3750    -11.375    -9.37500     -7.37500    -5.3750; ...  % 2.000
         -13.1250    -11.250    -9.37500     -7.5000     -5.6250; ...  % 1.8750
         -10.5000    -9.0000    -7.50000     -6.0000     -4.5000; ...  % 1.5000 left side needs work
         -10.0000    -8.7500    -7.50000     -6.2500     -5.0000; ...  % 1.2500 left needs work
         -8.12500    -6.8750    -5.62500     -4.3750     -3.1250; ...  % 1.2500 GOOD
         -5.75000    -4.7500    -3.75000     -2.7500     -1.7500; ...  % 1.0000  GOOD


        % 3/7/22 (3/10)
         -13.1250    -12.1875    -11.2500    -10.3125    -9.3750; ...  % 0.9375
         -11.2500    -10.3125    -9.3750     -8.4375     -7.5000; ...  % 0.9375
         -8.9062     -8.2031     -7.5000     -6.7969     -6.0938; ...  % 0.7031
         -7.0312     -6.3281     -5.6250     -4.9219     -4.2188; ...  % 0.7031
         -4.6875     -4.2188     -3.7500     -3.2812     -2.8125; ...  % 0.4687

        % 3/15/22
        -13.5938  -12.4219  -11.2500  -10.0781   -8.9062;  %  1.1719
        -11.7188  -10.5469   -9.3750   -8.2031   -7.0312;  %  1.1719
         -9.3750   -8.4375   -7.5000   -6.5625   -5.6250;  %  0.9375
         -7.5000   -6.5625   -5.6250   -4.6875   -3.7500;  %  0.9375
         -5.1562   -4.4531   -3.7500   -3.0469   -2.3438;  %  0.7031


         % 3/24/22
        -13.5938  -12.4219  -11.2500  -10.0781   -8.9062;  %  1.1719
        -11.7188  -10.5469   -9.3750   -8.2031   -7.0312;  %  1.1719
         -9.3750   -8.4375   -7.5000   -6.5625   -5.6250;  %  0.9375
         -7.5000   -6.5625   -5.6250   -4.6875   -3.7500;  %  0.9375
         -5.1562   -4.4531   -3.7500   -3.0469   -2.3438;  %  0.7031


         %0.2344
         %F=@(m,d) = m+([1:5]-3)*d

         % 4/22/22
        -14.0626  -12.6563  -11.2500   -9.8437   -8.4374;   % 1.4063 NEW
        -11.7188  -10.5469   -9.3750   -8.2031   -7.0312;  %  1.1719
         -9.3750   -8.4375   -7.5000   -6.5625   -5.6250;  %  0.9375
         -7.5000   -6.5625   -5.6250   -4.6875   -3.7500;  %  0.9375
        -5.6250   -4.6875   -3.7500   -2.8125   -1.8750;   % 0.9375 NEW

        % 4/24/22
        -14.0626  -12.6563  -11.2500   -9.8437   -8.4374;  % 1.4063 *NEW
        -12.1876  -10.7813   -9.3750   -7.9687   -6.5624;  % 1.4063 NEW
         -9.8438   -8.6719   -7.5000   -6.3281   -5.1562;  % 1.1719 NEW
        -7.9688   -6.7969   -5.6250   -4.4531   -3.2812;   % 1.1719 NEW
        -6.0938   -4.9219   -3.7500   -2.5781   -1.4062;   % 1.1719 NEW GD

        % 4/25/22
         -14.5314  -12.8907  -11.2500   -9.6093   -7.9686;  % 1.6407 NEW
        -12.1876  -10.7813   -9.3750   -7.9687   -6.5624;  % 1.4063 *NEW
         -9.8438   -8.6719   -7.5000   -6.3281   -5.1562;  % 1.1719 *NEW
        -7.9688   -6.7969   -5.6250   -4.4531   -3.2812;   % 1.1719 *NEW
        -6.0938   -4.9219   -3.7500   -2.5781   -1.4062;   % 1.1719 Gd