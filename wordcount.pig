grunt>Wordcount:- wordcount = FOREACH A GENERATE (TOKENIZE(line));
grunt> flat = FOREACH A GENERATE FLATTEN(TOKENIZE(line)) as word;
grunt> grouped = GROUP flat by word;
grunt> countword = FOREACH grouped GENERATE group , COUNT(flat);
grunt> STORE countword into 'home/acadgild/' USING PigStorage(',');
grunt>Dump countword;
