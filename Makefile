GO     := GO15VENDOREXPERIMENT=1 go


all: namenode_exporter resourcemanager_exporter 

namenode_exporter:
	@echo ">> build namenode_exporter"
	@$(GO) build namenode_exporter.go


resourcemanager_exporter:
	@echo ">> build resourcemanager_exporter"
	@$(GO) build resourcemanager_exporter.go

clean:
	@echo ">> remove namenode_exporter resourcemanager_exporter"
	@rm namenode_exporter resourcemanager_exporter
