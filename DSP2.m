classdef DSP2 < handle
methods(Static=true)
    function view_bins()
        alias='DSP2';
        type='bin';

        % ORIGINAL
        %nedges=52;
        %cutoffs=[1,52];
        %spacing='linear';
        %bRev=0;
        %a=1;

        DSP2.view_bins_fun(alias,type);
        %DSP2.view_bins_fun(alias,type, [], nedges,cuttoffs,spacing,bRev,a)
    end
    function view_bins_integers()
        alias='DSP2';
        type='bin';
        groups=[...
                ; 41, 42
                ; 42, 43
                ; 43, 44
                ; 44, 45
               ];
        DSP2.view_bins_fun(alias,type,groups);
    end
    function view_bins_extra()
        alias='DSP2';
        type='bin';
        groups=[...
                ; 11, 28 % rising
                ; 28, 35 % peak
                ; 35, 40 % rising2
        ];
        DSP2.view_bins_fun(alias,type,groups);
    end
    function view_bins_all()
        alias='DSP2';
        type='bin';
        groups=[...
                ; 11, 28 % rising
                ; 28, 35 % peak
                ; 35, 40 % rising2
                ; 40, 41 % falling...
                ; 41, 42
                ; 42, 43
                ; 43, 44
                ; 44, 45
               ];
        DSP2.view_bins_fun(alias,type,groups);
    end

%%--------------------------------------------
%% LIM-NORMAL
    function s=get_joint_DSP_2_3lim()
        alias='DSP_2_3lim';
        aliases={'DSP2','DSP3_lim'};

        s=imapPrb(alias,aliases);
    end
    function s=run_joint_DSP_2_3lim()
        s=DSP2.get_joint_DSP_2_3lim();

        s=DSP2.run_fun(s);
    end
    function plot_joint_DSP_2_3lim();
        s=DSP2.get_joint_DSP_2_3lim();

        figure(nFn)
        s.plot2();
        DSP2.plot_lines_fun();
    end
%% LIM-LRG
    function s=get_joint_DSP_2_3lim_lrg()
        alias='DSP_2_3lim_lrg';
        aliases={'DSP2_lrg','DSP3_lrg_lim'};

        s=imapPrb(alias,aliases);
    end
    function s=run_joint_DSP_2_3lim_lrg()
        s=DSP2.get_joint_DSP_2_3lim_lrg();

        s=DSP2.run_fun(s);
    end
    function plot_joint_DSP_2_3lim_lrg();
        s=DSP2.get_joint_DSP_2_3lim_lrg();

        figure(nFn)
        s.plot2();
        DSP2.plot_lines_fun();
    end
%% LIM-DNK
    function s=get_joint_DSP_2_3lim_dnk()
        alias='DSP_2_3lim_dnk';
        aliases={'DSP2_dnk','DSP3_dnk'};

        s=imapPrb(alias,aliases);
        DSP2.plot_lines_fun();
    end
    function s=run_joint_DSP_2_3lim_dnk()
        s=DSP2.get_joint_DSP_2_3lim_dnk();

        s=DSP2.run_fun(s);
    end
    function plot_joint_DSP_2_3lim_dnk();
        s=DSP2.get_joint_DSP_2_3lim_dnk();

        figure(nFn)
        s.plot2();
    end
%%--------------------------------------------
%% NORMAL
    function s=get_joint_DSP_2_3()
        alias='DSP_2_3';
        aliases={'DSP2','DSP3'};

        s=imapPrb(alias,aliases);
    end
    function s=run_joint_DSP_2_3()
        s=DSP2.get_joint_DSP_2_3();

        s=DSP2.run_fun(s);
    end
    function plot_joint_DSP_2_3();
        s=DSP2.get_joint_DSP_2_3();

        figure(nFn)
        s.plot2();
    end
%% LRG
    function s=get_joint_DSP_2_3_lrg()
        alias='DSP_2_3_lrg';
        aliases={'DSP2_lrg','DSP3_lrg'};

        s=imapPrb(alias,aliases);
    end
    function s=run_joint_DSP_2_3_lrg()
        s=DSP2.get_joint_DSP_2_3_lrg();

        s=DSP2.run_fun(s);
    end
    function plot_joint_DSP_2_3_lrg();
        s=DSP2.get_joint_DSP_2_3_lrg();

        figure(nFn)
        s.plot2();
    end
%% DNK
    function s=get_joint_DSP_2_3_dnk()
        alias='DSP_2_3_dnk';
        aliases={'DSP2_dnk','DSP3_dnk'};

        s=imapPrb(alias,aliases);
    end
    function s=run_joint_DSP_2_3_dnk()
        s=DSP2.get_joint_DSP_2_3_dnk();

        s=DSP2.run_fun(s);
    end
    function plot_joint_DSP_2_3_dnk();
        s=DSP2.get_joint_DSP_2_3_dnk();

        figure(nFn)
        s.plot2();
    end
end
methods(Static=true,Access=private)
    function s=run_fun(s)
        s.get_hist();
        s.get_dist();
        s.get_corr();
        s.save();
    end
    function plot_joint(s)
        imagesc(s.P);
        colorbar
        colormap hot
    end
    function viewBins_format_fun(b,spacing)
        figure(nFn)

        subPlot([1 2],1,1)
        b.plot_linear();

        subPlot([1 2],1,2)
        b.plot_log();

        set(gcf,'Position',[0 0 1700 1000]);

        sgtitle(['Spacing ' spacing]);
    end
    function view_bins_fun(alias,type, groups, nedges,cuttoffs,spacing,bRev,a)
        b=binViewer(alias,type);

        % nedges
        if ~exist('nedges','var') || isempty(nedges)
            nedges=b.nBIN+1;
        end

        % cutoffs
        if ~exist('cutoffs','var') || isempty(cutoffs)
            cutoffs=[1 b.nBIN+1];
        end

        % spacing
        if exist('groups','var') && ~isempty(groups)
            spacing='manual';
        elseif ~exist('spacing','var') || isempty(spacing)
            spacing='linear';
        end

        % bRev
        if ~exist('bRev','var') || isempty(bRev)
            bRev=0;
        elseif bRev
            cutoffs=fliplr(cutoffs);
        end

        % a
        if ~exist('a','var') || isempty(a)
            a=1;
        end


        switch spacing
            case 'log'
                spacing=[spacing ' a=' num2str(a)];
                %rang=lnspace(cutoffs(1),cutoffs(2),nedges, a);
                rang=lnspace(cutoffs(2),cutoffs(1),nedges, a);
            case {'lin','linear'}
                spacing='linear';
                rang=linspace(cutoffs(1),cutoffs(2),nedges);
            case 'exp'
                rang=(linspace(exp(cutoffs(1)), exp(cutoffs(2)), nedges));
        end
        if ~strcmp(spacing,'manual')
            group=transpose(round(rang));
            groups=[group(1:end-1) group(2:end)];
        end


        %groups=[
        b.set_groups(groups);

        DSP2.viewBins_format_fun(b,spacing);
        %%
    end
    function plot_lines_fun();
        hold on; plot(0:51,0:51,':w')

        bounds=[11 50];
        plot_fun_vert(bounds,':w');

        bounds=[28; 35;]
        plot_fun_vert(bounds,'y:');

        % CHECK
        %bounds=[ 32; 33];
        %plot_fun_vert(bounds,'y:');

        bounds=[40; 45];
        plot_fun_vert(bounds,'b');

        hold on
        plot([0 51],[45 45],'b');
        function plot_fun_vert(bounds,color)
            hold on
            for i = 1:length(bounds)
                % NOTE 0.5 offset due to imgagesc
                plot([bounds(i) bounds(i)],[0 51],color);
            end
            hold off
        end

    end
end
end
