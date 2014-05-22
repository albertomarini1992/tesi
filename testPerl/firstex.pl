#!/usr/bin/perl 
# 
# Il nostro primo script in Perl 
# 
print "Funziona! \n";

# Passiamo il file come valore di una variabile
$var2 = "ciaosonoalberto";
$var = 'documento.txt';
#$var = 'dir';
#$var = 'nonsononefilenedir';

# Apertura del file 
open(INFO, $var);

# Lettura del file
@testo = <INFO>;

#se è leggibile
if(-r $var){

#se è un file
if(-f $var){

#sostituisce all'interno della stringa $var2 il valore sono con il valore SEI
$var2 =~ s/sono/SEI/g ;

#per ogni riga $testoo appartenente a quelle lette (@testo) dal file
foreach $testoo (@testo)
{
#sostituisci sono con SEI
$testoo =~ s/sono/SEI BELLISSIMA/g ;

}

print 'file';
print "\n".$var2;
}
elsif(-d $var){
print 'folder';
}
else {
print 'you\'re nothing';
}
}
# Chiusura del file
close(INFO);

# stampa a video del contenuto del file
print @testo;
