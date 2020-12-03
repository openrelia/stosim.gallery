## This function requires stosim version 0.0.15 or higher
## source and windows binary are available at
## https://github.com/openrelia/stosim.gallery/tree/main/package

 co2capture<-function() {	
	require(stosim)
	##data(co2inputs) co2capture is now contained in co2inputs.RData
pb <- tkProgressBar(title = "SimHistory Progress", min = 0,				
	   max = 33, width = 300)	
	   
	 p=0  
	## Build each maintenance event history 
	CO2DEL_MNT<-MaintHistory(34704,336,0,2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))	
	Capture_1_MNT<-MaintHistory(34920,120,31032,2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Capture_2_MNT<-MaintHistory(34920,120,32323,2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Supply_1_MNT<-MaintHistory(34704,336,17184,2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))



	Capture_3_MNT<-MaintHistory(34920,120,33614,2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Capture_4_MNT<-MaintHistory(34920,120,34905,2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Supply_2_MNT<-MaintHistory(34704,336,0,2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Optim_1_MNT<-MaintHistory(25680,120,12780,2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Optim_2_MNT<-MaintHistory(25680,120,25680,2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	
	## Build the individual OpLine Simulated Histories 
	CO2DEL_sh<-SimHistory(CO2DEL, SimulationYears=2000,100) 
 	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))   
	Capture_1_sh<-SimHistory(Capture_1, SimulationYears=2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))	
	Capture_2_sh<-SimHistory(Capture_2, SimulationYears=2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))	
	Supply_1_sh<-SimHistory(Supply_1, SimulationYears=2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))	
	Capture_3_sh<-SimHistory(Capture_3, SimulationYears=2000,100)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))	
	Capture_4_sh<-SimHistory(Capture_4, SimulationYears=2000,100)
 	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))   
	Supply_2_sh<-SimHistory(Supply_2, SimulationYears=2000,100) 
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))	
	Optim_1_sh<-SimHistory(Optim_1, SimulationYears=2000,100) 
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))	
	Optim_2_sh<-SimHistory(Optim_2, SimulationYears=2000,100) 
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	
	## Add the maintenance to each OpLine by using AddWpush.  
	## This can only be done once per OpLine.

	CO2DEL_sh_awpMNT<-addWpush(CO2DEL_sh, CO2DEL_MNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Capture_1_sh_awpMNT<-addWpush(Capture_1_sh, Capture_1_MNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Capture_2_sh_awpMNT<-addWpush(Capture_2_sh, Capture_2_MNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Supply_1_sh_awpMNT<-addWpush(Supply_1_sh, Supply_1_MNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Capture_3_sh_awpMNT<-addWpush(Capture_3_sh, Capture_3_MNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Capture_4_sh_awpMNT<-addWpush(Capture_4_sh, Capture_4_MNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Supply_2_sh_awpMNT<-addWpush(Supply_2_sh, Supply_2_MNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Optim_1_sh_awpMNT<-addWpush(Optim_1_sh, Optim_1_MNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Optim_2_sh_awpMNT<-addWpush(Optim_2_sh, Optim_2_MNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	## remove the formative objects to save system memory
	rm(CO2DEL_sh)
	rm(CO2DEL_MNT)
	rm(Capture_1_sh)
	rm(Capture_1_MNT)
	rm(Capture_2_sh)
	rm(Capture_2_MNT)
	rm(Supply_1_sh)
	rm(Supply_1_MNT)
	rm(Capture_3_sh)
	rm(Capture_3_MNT)
	rm(Capture_4_sh)
	rm(Capture_4_MNT)
	rm(Supply_2_sh)
	rm(Supply_2_MNT)
	rm(Optim_1_sh)
	rm(Optim_1_MNT)
	rm(Optim_2_sh)
	rm(Optim_2_MNT)
	
	## Overlay Supply SimHistories as  on the applicable Capture and  Optim OpLines.
	Capture_1_sh_awpMNT_olSupply_1<-addOverlay(Capture_1_sh_awpMNT, Supply_1_sh_awpMNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Capture_2_sh_awpMNT_olSupply_1<-addOverlay(Capture_2_sh_awpMNT, Supply_1_sh_awpMNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Capture_3_sh_awpMNT_olSupply_2<-addOverlay(Capture_3_sh_awpMNT, Supply_2_sh_awpMNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Capture_4_sh_awpMNT_olSupply_2<-addOverlay(Capture_4_sh_awpMNT, Supply_2_sh_awpMNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Optim_1_sh_awpMNT_olSupply_1<-addOverlay(Optim_1_sh_awpMNT, Supply_1_sh_awpMNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	Optim_2_sh_awpMNT_olSupply_2<-addOverlay(Optim_2_sh_awpMNT, Supply_2_sh_awpMNT)
	p=p+1
	setTkProgressBar(pb, p, title=paste( round(p/33*100, 0),"% done"))
	## remove the formative objects to save system memory
	rm(Capture_1_sh_awpMNT)
	rm(Capture_2_sh_awpMNT)
	rm(Capture_3_sh_awpMNT)
	rm(Capture_4_sh_awpMNT)
	rm(Optim_1_sh_awpMNT)
	rm(Supply_1_sh_awpMNT)
	rm(Optim_2_sh_awpMNT)
	rm(Supply_2_sh_awpMNT)
close(pb)	
	## Prepare input objects for DetailOpLines
	Names<-c("Capture_1", "Capture_2", "Capture_3", "Capture_4", "Optim_1", "Optim_2", "CO2DEL") 
	CO2Capture_Model<-list(
	Capture_1_sh_awpMNT_olSupply_1,
	Capture_2_sh_awpMNT_olSupply_1,
	Capture_3_sh_awpMNT_olSupply_2,
	Capture_4_sh_awpMNT_olSupply_2,
	Optim_1_sh_awpMNT_olSupply_1,
	Optim_2_sh_awpMNT_olSupply_2,
	CO2DEL_sh_awpMNT
	)
	
	## Here is the final call to DetailOpLines
	finalModel<-DetailOpLines(CO2Capture_Model,Names, ProgRpt=TRUE)
	## remove the formative objects to save system memory
	rm(Capture_1_sh_awpMNT_olSupply_1)
	rm(Capture_2_sh_awpMNT_olSupply_1)
	rm(Capture_3_sh_awpMNT_olSupply_2)
	rm(Capture_4_sh_awpMNT_olSupply_2)
	rm(Optim_1_sh_awpMNT_olSupply_1)
	rm(Optim_2_sh_awpMNT_olSupply_2)
	rm(CO2DEL_sh_awpMNT)
	
	## calculate production levels for each row of the finalModel
	ProdLev<-finalModel[,10]*((finalModel[,4]+finalModel[,5])*0.15*(1+2/3*finalModel[,8])+
	    (finalModel[,6]+finalModel[,7])*0.15*(1+2/3*finalModel[,9]))
	
	## Prepare an overall capacity weighted availability calculation
	CapHrs<-ProdLev*finalModel[,3]
	totalHrs<-finalModel[length(finalModel[,1]),2]*finalModel[length(finalModel[,1]),1]
	CapAvailability<-sum(CapHrs)/totalHrs
	print(paste0("Capacity-Hours:   ", sum(CapHrs)))
	print(paste0("Total Hours:   ", totalHrs))
	print(paste0("Capacity Weighted Availability:   ", CapAvailability))
	
	
	
	lvls<-c(0, 0.15, 0.25, 0.3, 0.4, 0.5, 0.55, 0.6, 0.65, 0.75, 0.8, 1) 
	PctOfTime=NULL
	n=1
	for(n in 1:length(lvls) ) {
	PctOfTime<-c(PctOfTime,sum(finalModel[sapply(ProdLev,
	function(x) x>lvls[n]-.02&&x<lvls[n]+.025),3])/totalHrs)
	}
	WtdPct<-lvls*PctOfTime
	CO2ProdTable<-data.frame(lvls,PctOfTime,WtdPct)
	CO2ProdTable
 }	
