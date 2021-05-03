<?php
function changeXML($xmlFile, $xslFile){
    $proc=new XsltProcessor;
    $proc->importStylesheet(DOMDocument::load($xslFile));
    $proc->transformToUri(DOMDocument::load($xmlFile),$xmlFile);
}

function sortTables($xmlFile, $xslFile){
    $proc=new XsltProcessor;
    $proc->importStylesheet(DOMDocument::load($xslFile));
    $proc->transformToUri(DOMDocument::load($xmlFile),$xmlFile);
}

changeXML("XML/sample.xml", "styles/tasks2_4.xsl");
sortTables("XML/sample.xml", "styles/task5.xsl");
?>
