
# dir="QCD_Pt-15to7000_TuneCUETP8M1_Flat_13TeV_pythia8"
# python sendOnBatch.py --eos=/store/mc/RunIISpring15MiniAODv2/$dir --put-in=/store/user/amarini/qg/$dir -d mysub/$dir -q 8nh -n 80


#dirs="$dirs QCD_Pt_1000to1400_TuneCUETP8M1_13TeV_pythia8 QCD_Pt_10to15_TuneCUETP8M1_13TeV_pythia8 QCD_Pt_120to170_TuneCUETP8M1_13TeV_pythia8 QCD_Pt_15to30_TuneCUETP8M1_13TeV_pythia8 QCD_Pt_170to300_TuneCUETP8M1_13TeV_pythia8 QCD_Pt_1800to2400_TuneCUETP8M1_13TeV_pythia8 QCD_Pt_2400to3200_TuneCUETP8M1_13TeV_pythia8 QCD_Pt_30to50_TuneCUETP8M1_13TeV_pythia8 QCD_Pt_800to1000_TuneCUETP8M1_13TeV_pythia8"
#dirs="$dirs "
/afs/cern.ch/project/eos/installation/0.3.84-aquamarine/bin/eos.select mkdir /eos/cms/store/user/amarini/qg

dirs=""
dirs="$dirs QCD_Pt_5to10_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_10to15_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_15to30_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_30to50_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_50to80_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_80to120_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_120to170_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_170to300_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_300to470_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_470to600_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_600to800_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_800to1000_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_1000to1400_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_1400to1800_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_1800to2400_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_2400to3200_TuneCUETP8M1_13TeV_pythia8"
dirs="$dirs QCD_Pt_3200toInf_TuneCUETP8M1_13TeV_pythia8"


for dir in $dirs ; do
	echo "--> Doing $dir "
	/afs/cern.ch/project/eos/installation/0.3.84-aquamarine/bin/eos.select mkdir /eos/cms/store/user/amarini/qg/$dir
	python sendOnBatch.py --eos=/store/mc/RunIIFall15MiniAODv2/${dir}/MINIAODSIM/PU25nsData2015v1_76X_mcRun2_asymptotic_v12-v1 --put-in=/store/user/amarini/qg/$dir -d mysub/$dir -q 8nh -n 30
done

