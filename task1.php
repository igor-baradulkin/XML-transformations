 <?php
$xml = new DOMDocument;
$xml->load('XML/sample.xml');

$xsl = new DOMDocument;
$xsl->load('styles/task1.xsl');

$proc = new XSLTProcessor;

$proc->importStyleSheet($xsl);

echo $proc->transformToXML($xml);
?> 
