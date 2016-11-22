from WMCore.Configuration import Configuration
import shutil, os

shutil.copyfile('../../qgMiniTuple/test/qgMiniTupleForMiniAOD_cfg.py', './qgMiniTupleForMiniAOD_cfg.py')

config = Configuration()
config.section_('General')

config.section_('JobType')
config.JobType.psetName    = 'qgMiniTupleForMiniAOD_cfg.py'
config.JobType.pluginName  = 'analysis'
config.JobType.outputFiles = ['qgMiniTuple.root']
config.JobType.allowUndistributedCMSSW = True 

config.section_('Data')
#config.Data.inputDataset  = '/QCD_Pt_50to80_TuneCUETP8M1_13TeV_pythia8/RunIISpring16MiniAODv2-PUSpring16_80X_mcRun2_asymptotic_2016_miniAODv2_v0-v1/MINIAODSIM'
config.Data.inputDataset  = '/QCD_Pt-15to7000_TuneCUETP8M1_Flat_13TeV_pythia8/RunIISummer16MiniAODv2-PUFlat0to70_magnetOn_80X_mcRun2_asymptotic_2016_TrancheIV_v4-v1/MINIAODSIM'
config.Data.unitsPerJob   = 20
config.Data.splitting     = 'FileBased'
config.Data.outLFNDirBase = '/store/user/' + os.environ['USER'] + '/qgMiniTuple_8_0_20/'
config.Data.publication = False

config.section_('Site')
config.Site.storageSite = 'T2_CH_CERN'
config.Site.blacklist=[]

#config.section_('User')
#config.User.voGroup = 'becms'
