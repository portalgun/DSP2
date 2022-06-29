classdef DSP2_prb < handle
methods(Static=true)
%%%
%% MAIN
%%- REG
    %% REG
    function s=get_joint()
        alias='DspRms-2';
        aliases={'DspRms','DspRms2'};

        s=ImapPrb(alias,aliases);
    end
    function s=run_joint;
        s=DSP2_prb.get_joint();
        s=DSP2_prb.run_fun(s);
    end
    function plot_joint();
        s=DSP2_prb.get_joint();

        Fig.new();
        s.plot2();
        %DSP2_prb.plot_lines_fun();
    end
%% LOG
    function s=get_joint_log()
        alias='DspRmsLog-2';
        aliases={'DspRmsLog','DspRms2Log'};

        s=ImapPrb(alias,aliases);
    end
    function s=run_joint_log();
        s=DSP2_prb.get_joint_log();
        s=DSP2_prb.run_fun(s);
    end
    function plot_joint_log();
        s=DSP2_prb.get_joint_log();

        Fig.new();
        s.plot2();
        %DSP2_prb.plot_lines_fun();
    end
%% DNK
    function s=get_joint_dnk4()
        alias='DspRmsDnk4-2';
        aliases={'DspRmsDnk4','DspRms2Dnk4'};

        s=ImapPrb(alias,aliases);
    end
    function s=run_joint_dnk4;
        s=DSP2_prb.get_joint_dnk4();
        s=DSP2_prb.run_fun(s);
    end
    function plot_joint_dnk4();
        s=DSP2_prb.get_joint_dnk4();

        Fig.new();
        s.plot2();
        %DSP2_prb.plot_lines_fun();
    end
%% DNK LOG
    function s=get_joint_dnk4Log()
        alias='DspRmsDnkLog4-2';
        aliases={'DspRmsDnk4Log','DspRms2Dnk4Log'};

        s=ImapPrb(alias,aliases);
    end
    function s=run_joint_dnk4Log;
        s=DSP2_prb.get_joint_dnk4Log();
        s=DSP2_prb.run_fun(s);
    end
    function plot_joint_dnk4Log();
        s=DSP2_prb.get_joint_dnk4Log();

        Fig.new();
        s.plot2();
        %DSP2_prb.plot_lines_fun();
    end
%%- T
%% REG
    function s=get_jointT()
        alias='DspTRms-2';
        aliases={'DspTRms','DspTRms2'};

        s=ImapPrb(alias,aliases);
    end
    function s=run_jointT;
        s=DSP2_prb.get_jointT();
        s=DSP2_prb.run_fun(s);
    end
    function plot_jointT();
        s=DSP2_prb.get_jointT();

        Fig.new();
        s.plot2();
        %DSP2_prb.plot_lines_fun();
    end
%% LOG
    function s=get_joint_Tlog()
        alias='DspTRmsLog-2';
        aliases={'DspTRmsLog','DspTRms2Log'};

        s=ImapPrb(alias,aliases);
    end
    function s=run_joint_Tlog();
        s=DSP2_prb.get_joint_Tlog();
        s=DSP2_prb.run_fun(s);
    end
    function plot_joint_Tlog();
        s=DSP2_prb.get_joint_Tlog();

        Fig.new();
        s.plot2();
        %DSP2_prb.plot_lines_fun();
    end
%% DNK
    function s=get_joint_Tdnk4()
        alias='DspTRmsDnk4-2';
        aliases={'DspTRmsDnk4','DspTRms2Dnk4'};

        s=ImapPrb(alias,aliases);
    end
    function s=run_joint_Tdnk4;
        s=DSP2_prb.get_joint_Tdnk4();
        s=DSP2_prb.run_fun(s);
    end
    function plot_joint_Tdnk4();
        s=DSP2_prb.get_joint_Tdnk4();

        Fig.new();
        s.plot2();
        %DSP2_prb.plot_lines_fun();
    end
%% DNK LOG
    function s=get_joint_Tdnk4Log()
        alias='DspTTRmsDnkLog4-2';
        aliases={'DspTRmsDnk4Log','DspTRms2Dnk4Log'};

        s=ImapPrb(alias,aliases);
    end
    function s=run_joint_Tdnk4Log;
        s=DSP2_prb.get_joint_Tdnk4Log();
        s=DSP2_prb.run_fun(s);
    end
    function plot_joint_Tdnk4Log();
        s=DSP2_prb.get_joint_Tdnk4Log();

        Fig.new();
        s.plot2();
        %DSP2_prb.plot_lines_fun();
    end
%%- ODD
%% LOG
    %function s=get_joint_OLog()
    %    alias='DspOLog';
    %    aliases={'DspRmsLog','DspTRms2Log'}; % drip down
    %    %aliases={'DspTRms','DspRms2Log'};    % pillars
    %    aliases={'DspTRms','DspTRms2Log'}; % triangle

    %    %aliases={'DspRms2Log','DspTRms2'};

    %    s=ImapPrb(alias,aliases);
    %end
    %function s=run_joint_OLog;
    %    s=DSP2_prb.get_joint_OLog();
    %    s=DSP2_prb.run_fun(s);
    %end
    %function plot_joint_odd();
    %    s=DSP2_prb.get_joint_OLog();

    %    Fig.new();
    %    s.plot2();
    %    %DSP2_prb.plot_lines_fun();
    %end
%%
end
methods(Static=true,Access=private)
    function s=run_fun(s)
        s.get_hist();
        s.get_dist();
        s.get_corr();
        s.save();
    end
    function plot_joint_fun(s)
        imagesc(s.P);
        colorbar;
        colormap hot;
    end
end
end
