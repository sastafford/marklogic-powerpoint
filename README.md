# marklogic-powerpoint
Generation of Powerpoint slides from data stored in MarkLogic

## Setup

Create rels mimetype from the admin console
1. name = text/rels
2. extensions = rels
3. format = xml

## Commands

Generate REST API application for 'pm-dashboard'
 > ./gradle mlDeploy 

Generate a Powerpoint file from the markup located under src/main/resources
 > ./gradle run

Ingest Powerpoint template into MarkLogic
 > ./gradle importPresentationMlTemplate
 
Ingest Sample data into MarkLogic
 > ./gradle importSampleData

Trigger the PresentationML export
 > http://<host>:8400/v1/resources/export-presentation-ml

