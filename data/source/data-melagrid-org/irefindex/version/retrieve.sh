#!/bin/bash
#
#3> <> prov:wasGeneratedBy [ 
#3>    a prov:Activity;
#3>    prov:qualifiedAssociation [ 
#3>       a prov:Association;
#3>       prov:hadPlan <https://github.com/timrdf/csv2rdf4lod-automation/tree/master/bin/cr-retrieve.sh>;
#3>    ];
#3> ] .
#3> <#>
#3>    a doap:Project; 
#3>    dcterms:description 
#3>      "Script to retrieve and convert a new version of the dataset.";
#3>    rdfs:seeAlso 
#3>      <https://github.com/timrdf/csv2rdf4lod-automation/wiki/Automated-creation-of-a-new-Versioned-Dataset>;
#3> .

$CSV2RDF4LOD_HOME/bin/cr-create-versioned-dataset-dir.sh cr:auto \
  'ftp://ftp.no.embnet.org/irefindex/data/current/psi_mitab/MITAB2.6/All.mitab.03022013.txt.zip' \
#                                                       --comment-character '#' \
                                                       --header-line        0  \
                                                       --delimiter         '\t'
