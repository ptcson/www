#!c:/perl64/bin/perl.exe

use CGI;
use CGI::Carp "fatalsToBrowser";

$obj=new CGI;
$params=$obj->Vars;

$visitor=$params->{'name'};

@timeFields=localtime time;
$hour=$timeFields[2];

print "Content-Type: text/html\n\n";

if ($hour<12){
    $greeting='Good morning';
} else{
    $greeting='Good afternoon';
}

if (!defined $visitor or $visitor !~ /\w/){
    $visitor='visitor';
}

print qq~
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"
       "http://www.w3.org/TR/REC-html40/loose.dtd">
<html>
    <head><title>Greetings</title></head>
    <body>
		<p>$greeting, $visitor!</p>
~;

my $myPath;

foreach $key (sort keys(%ENV)){
	print "<p>";
	if ( $key =~ m/PATH/){
	   $myPath=$ENV{$key};
	   $myPath=~ s/;/\<br\/\>/g;
	   print "$key = ";
	   print $myPath;
	} else{
	    print "$key = $ENV{$key}";
	}
	print "</p>";	
}

print qq~		
    </body>
</html>
~;