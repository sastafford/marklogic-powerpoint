# marklogic-powerpoint
Generation of Powerpoint slides from data stored in MarkLogic

## Setup

### Add Mimetype in Admin Console
Create rels mimetype from the admin console
1. name = text/rels
2. extensions = rels
3. format = xml

### Deploy MarkLogic
Generate REST API application for 'pm-dashboard'
 > ./gradle mlDeploy 

### Load Sample Data
Ingest Sample data into MarkLogic
 > ./gradle importSampleData

### Load Powerpoint Template
Ingest Powerpoint template into MarkLogic
 > ./gradle importPresentationMlTemplate
 
### Download PPT File

 > http://<host>:8400/v1/resources/export-presentation-ml

