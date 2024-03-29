classdef spec < handle
methods(Static)
    function rmDNWBad()
        B=Blk.get();
        E=Exp();
        args={'subj','DNW','mode',1,'lvlInd',1,'pass',1,'blk',1};
        E.ETable.rmData(args{:});
        E.ETable.save();
    end
    function E=add_pass_DSPf()
        alias='DSP2f';
        B=Blk.get(alias);
        r=B.lookup.lvl{'disparity',[1 3 5],'bins',[1 4],'stdInd'};
        E=Exp(alias);
        E.addPass();

        E.ETable.Table('subj','DNW','lvlInd',r,'pass',2,'status')=0;
        E.ETable.Table('status',1)
        E.ETable.Table('pass',2)
        E.ETable.Table('subj','DNW','pass',2)
        %E.ETable.save();
    end
    function E=anthony()
        dk
        E=Exp();
        B=Blk.get();
        lvls=B.lookup.lvl{'bins','~=',[2 3 5],'lvlInd'};
        E.ETable.Table('subj','AJL','mode',1,'status',[0 -1],'status')=-1;
        E.ETable.Table('subj','AJL','mode',1,'lvlInd',lvls,'pass',1,'status','~=',1,'status')=0;
        E.ETable.Table('subj','AJL','mode',1,'pass',1,'status',0);
        E.ETable.save()
        %E.ETable.Table.unique('subj','AJL','mode',1,'pass',1,'status',0,'lvlInd')
    end
    function addJDBBin3()
        B=Blk.get();
        lvls=B.lookup.lvl{'disparity',1:5,'bins',3};
        E=Exp;
        E.ETable.Table('subj','JDB','pass',1,'lvlInd',lvls,'mode',1,'status')=0;
        %E.ETable.Table('subj','JDB','pass',1,'lvlInd',lvls,'mode',1);
        E.ETable.save();
    end
    function addJDBPass3()
        B=Blk.get();
        lvls=B.lookup.lvl{'disparity',1,'bins',1};
        E=Exp;
        E.ETable.Table('subj','JDB','pass',3,'lvlInd',lvls,'mode',1,'status')=0;
        %E.ETable.Table('subj','JDB','pass',3,'lvlInd',lvls,'mode',1,'status')
        E.ETable.save();
    end
    function fix_data1()
        fname{1}='/Volumes/Data/.daveDB/raw/DSP2_DNW-1-001-001.mat';
        %fname{2}='/Volumes/Data/.daveDB/raw/DSP2_DNW-1-004-001.mat';
        %fname{3}='/Volumes/Data/.daveDB/raw/DSP2_DNW-1-017-001.mat';
        vals=[1 13 4];

        for i = 1:length(fname)
            S=load(fname{i});
            %S.table{2}=[S.table{2} repmat(vals(i),size(S.table{2}))];
            %S.table{3}=[S.table{3} repmat(vals(i),size(S.table{3}))];

            %S.table{2}=S.table{2}(:,1:2);
            %S.table{3}=S.table{3}(:,1:2);
            key=S.key;
            table=S.table;
            types=S.types;
            infoKey=S.infoKey;
            info=S.info;
            infoTypes=S.infoTypes;

            save(fname{i},'key','table','types','infoKey','info','infoTypes');
        end
    end

    function new=new_fnames()
        new={...
        'R098_013_0033';
        'R098_013_0029';
        'R098_013_0031';
        'R098_013_0028';
        'R098_013_0020';
        'R098_013_0026';
        'R098_013_0010';
        'R098_008_0014';
        'R098_008_0022';
        'R098_008_0013';
        'R098_008_0008';
        'R098_008_0006';
        'R098_008_0004';
        'R098_008_0003';
        'R098_008_0002';
        'R098_004_0012';
        'R098_004_0011';
        'R098_004_0010';
        'R098_004_0006';
        'L098_013_0030';
        'L098_013_0023';
        'L098_008_0022';
        'L098_008_0025';
        'L098_008_0020';
        'L098_008_0019';
        'L098_008_0003';
        'L098_004_0023';
        'L098_004_0016';
        'L098_004_0010';
        'L098_004_0009';
        'L098_004_0005';
        'L098_004_0004';
        'L098_004_0003';
        'R097_013_0020';
        'R097_013_0019';
        'R097_013_0005';
        'R097_013_0004';
        'R097_008_0030';
        'R097_008_0029';
        'R097_008_0024';
        'R097_008_0023';
        'R097_008_0021';
        'R097_008_0015';
        'R097_008_0010';
        'R097_008_0009';
        'R097_008_0006';
        'R097_008_0003';
        'R097_004_0020';
        'L097_013_0021';
        'R097_004_0015';
        'L097_008_0004';
        'L097_004_0013';
        'L097_008_0002';
        'L097_004_0007';
        'L097_004_0001';
        'R096_013_0010';
        'R096_008_0003';
        'R096_013_0001';
        'R096_004_0019';
        'R096_004_0017';
        'R096_004_0008';
        'L096_013_0008';
        'L096_004_0019';
        'L096_004_0014';
        'L096_004_0017';
        'L096_004_0013';
        'L096_004_0002';
        'R095_008_0030';
        'R095_008_0028';
        'R095_008_0021';
        'R095_008_0015';
        'R095_008_0011';
        'R095_008_0001';
        'R095_004_0018';
        'R095_004_0019';
        'R095_004_0014';
        'R095_004_0011';
        'L095_013_0023';
        'L095_013_0024';
        'L095_013_0016';
        'L095_008_0030';
        'L095_008_0029';
        'L095_008_0021';
        'L095_008_0020';
        'L095_008_0006';
        'L095_008_0015';
        'L095_004_0023';
        'L095_004_0008';
        'R093_013_0003';
        'R093_008_0027';
        'R093_008_0025';
        'R093_008_0006';
        'R093_008_0024';
        'R093_004_0022';
        'R093_004_0020';
        'R093_004_0017';
        'R093_004_0016';
        'R093_004_0013';
        'R093_004_0008';
        'R093_004_0012';
        'R093_004_0005';
        'R093_004_0001';
        'R093_004_0003';
        'L093_008_0022';
        'L093_004_0015';
        'L093_004_0018';
        'L093_004_0002';
        'R091_008_0003';
        'L091_004_0021';
        'R091_004_0023';
        'R090_008_0012';
        'R090_004_0013';
        'L090_004_0015';
        'L090_008_0004';
        'R089_004_0003';
        'R089_004_0002';
        'R089_004_0001';
        'L089_004_0016';
        'L089_004_0008';
        'L089_004_0011';
        'R088_008_0017';
        'R088_004_0014';
        'R088_004_0007';
        'L088_008_0030';
        'L088_004_0010';
        'L088_004_0008';
        'L088_004_0009';
        'R087_004_0014';
        'L087_001_0001';
        'R082_008_0015';
        'R082_004_0016';
        'R082_004_0015';
        'R082_004_0013';
        'R082_004_0014';
        'L082_013_0013';
        'L082_008_0011';
        'L082_013_0002';
        'L082_008_0005';
        'L082_008_0003';
        'L082_004_0005';
        'L082_004_0014';
        'R081_013_0005';
        'L081_013_0003';
        'R081_004_0014';
        'L081_008_0003';
        'R079_008_0028';
        'R079_008_0016';
        'R079_008_0001';
        'R079_004_0023';
        'L078_013_0024';
        'L078_013_0023';
        'L078_008_0004';
        'L078_008_0006';
        'L078_008_0003';
        'R077_013_0001';
        'L077_013_0023';
        'L077_008_0004';
        'R076_013_0004';
        'L076_008_0001';
        'L076_008_0009';
        'L075_004_0009';
        'L074_013_0011';
        'R073_008_0030';
        'R073_013_0010';
        'R073_008_0017';
        'R073_008_0012';
        'R073_008_0013';
        'R073_008_0011';
        'R073_008_0001';
        'L072_008_0018';
        'L072_008_0017';
        'L072_008_0016';
        'L071_008_0001';
        'R068_008_0029';
        'R068_008_0025';
        'R068_008_0023';
        'R068_008_0021';
        'R068_008_0022';
        'L068_008_0015';
        'L068_008_0007';
        'R067_008_0009';
        'R067_008_0029';
        'L066_013_0032';
        'R064_008_0012';
        'R063_013_0012';
        'R060_013_0016';
        'R060_013_0009';
        'R060_013_0006';
        'L059_008_0026';
        'L059_004_0022';
        'L058_013_0003';
        'L058_013_0001';
        'L053_013_0027';
        'L053_013_0007';
        'L053_004_0014';
        'R052_013_0021';
        'R052_013_0005';
        'R052_013_0004';
        'R052_013_0002';
        'R052_008_0011';
        'R052_013_0001';
        'L052_008_0008';
        'L052_008_0001';
        'L050_008_0005';
        'L047_004_0008';
        'L047_004_0007';
        'L047_004_0005';
        'L047_004_0004';
        'L047_004_0003';
        'R046_008_0013';
        'L046_008_0017';
        'L046_008_0029';
        'L046_008_0015';
        'R042_008_0002';
        'R042_004_0005';
        'R041_008_0020';
        'R041_008_0009';
        'R041_004_0013';
        'R041_008_0007';
        'R040_008_0017';
        'R038_013_0014';
        'L036_013_0003';
        'L036_004_0010';
        'R033_004_0001';
        'L033_013_0025';
        'L033_013_0020';
        'L033_013_0024';
        'R029_004_0004';
        'L029_013_0033';
        'R028_008_0015';
        'R026_013_0032';
        'R023_004_0020';
        'R022_013_0025';
        'R022_013_0024';
        'R022_008_0014';
        'L022_008_0004';
        'L020_004_0011';
        'L019_008_0021';
        'L019_008_0011';
        'L019_008_0010';
        'L019_008_0002';
        'L019_008_0005';
        'R018_008_0023';
        'L018_008_0025';
        'R018_008_0005';
        'L018_008_0020';
        'L018_008_0019';
        'R017_008_0010';
        'L015_004_0001';
        'R014_013_0015';
        'R014_013_0021';
        'R014_004_0021';
        'R014_004_0020';
        'R014_004_0016';
        'R013_008_0029';
        'R013_004_0012';
        'R012_013_0029';
        'R012_004_0010';
        'R012_004_0007';
        'L012_004_0017';
        'L012_004_0008';
        'L012_004_0007';
        'R011_004_0001';
        'L011_008_0006';
        'L011_008_0007';
        'L011_008_0005';
        'R010_013_0017';
        'R010_013_0020';
        'R010_008_0012';
        'R010_004_0022';
        'L010_013_0021';
        'L010_013_0022';
        'L010_013_0018';
        'L010_004_0016';
        'L010_013_0007';
        'L010_001_0004';
        'R009_008_0012';
        'R009_001_0014';
        'R009_001_0013';
        'R009_001_0012';
        'L009_004_0021';
        'L009_004_0018';
        'L009_001_0021';
        'L009_001_0003';
        'R008_008_0016';
        'R008_008_0011';
        'R008_008_0008';
        'R008_008_0010';
        'R008_004_0023';
        'R008_004_0020';
        'R008_004_0017';
        'R008_004_0002';
        'R008_001_0014';
        'R008_001_0007';
        'R007_013_0009';
        'R007_013_0027';
        'R007_013_0004';
        'R007_004_0022';
        'R007_004_0019';
        'R007_004_0011';
        'L007_013_0033';
        'L007_013_0019';
        'L007_013_0018';
        'L007_013_0017';
        'L007_013_0013';
        'L007_013_0012';
        'L007_013_0010';
        'L007_013_0011';
        'L007_004_0023';
        'L007_004_0020';
        'L007_004_0013';
        'L007_004_0017';
        'L007_004_0009';
        'L007_004_0007';
        'R006_008_0002';
        'R006_004_0003';
        'L006_008_0013';
        'L006_008_0022';
        'L006_008_0001';
        'R005_013_0012';
        'R005_013_0009';
        'R005_013_0008';
        'R005_008_0005';
        'L005_013_0017';
        'L005_013_0010';
        'L005_008_0007';
        'L005_013_0004';
        'L005_004_0004';
        'L005_004_0002';
        'R004_008_0015';
        'R004_008_0010';
        'R004_008_0012';
        'R004_008_0009';
        'L004_013_0020';
        'L004_008_0025';
        'L004_008_0021';
        'L004_008_0001';
        'L004_004_0020';
        'L004_004_0005';
        'R003_008_0003';
        'R003_008_0002';
        'R003_004_0005';
        'R003_004_0003';
        'L002_004_0013';
        'L002_004_0009';
        'R001_013_0031';
        'R001_013_0030';
        'R001_013_0020';
        'R001_013_0025';
        'R001_004_0017';
        'R001_004_0014';
        'R001_004_0015';
        'R001_004_0002';
        'L001_013_0031';
        'L001_004_0020';
        'L001_004_0016';
        'L001_001_0016';
        'L001_001_0017';
        };
    end
end
end
