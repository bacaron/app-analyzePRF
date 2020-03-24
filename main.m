function [] = main()

if ~isdeployed
	disp('loading paths for IUHPC')
	addpath(genpath('/N/u/brlife/git/jsonlab'))
	addpath(genpath('/N/u/brlife/git/mrTools'))
	addpath(genpath('/N/u/brlife/git/vistasoft'))
	addpath(genpath('/N/u/davhunt/Carbonate/analyzePRF/utilities'))
        addpath(genpath('/N/u/davhunt/Carbonate/analyzePRF'))
        addpath(genpath('/N/u/davhunt/Carbonate/NIfTI_cifti_matlab_tools'))
end

% load my own config.json
config = loadjson('config.json');

% compute pRF
analyzeHCP(config.fmri, config.stim, config.mask);

end
