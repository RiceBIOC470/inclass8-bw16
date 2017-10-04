%AW: looks good. 1/1.

%Inclass assignment 8

%Using the swalign function
% A. Create a random DNA sequence of length 100. 
seqA=randdnaseq(100);

% B. Create a second sequence from the first one by changing the middle 20 basepairs (at positions 41-60)
seqB=[seqA(1:40) randdnaseq(20) seqA(61:100)];
%%
% C. run swalign on the two sequences with the default parameters
[score,align,start]=swalign(seqA,seqB,'Alphabet','nt','Showscore',true);

% D. run swalign with much higher and lower values of the GapOpen parameter
% and explain the results.
[score, align, start] = swalign(seqA, seqB, 'GapOpen', 1, 'Showscore', true);

[score, align, start] = swalign(seqA, seqB, 'GapOpen', 20, 'Showscore', true);

%%Bingyan Wu:a low GapOpen value allows the sequences to have more gaps
%%without penalizing the alignment for skipping the base pairs, while a
%%large GapOpen value siginificantly penalizes the gaps between the
%%alignment, therefore make essentially a 1-to-1 alignment because the gap
%%would reduce the score significantly.

%%
% E. run swalign with a low value of GapOpen but a high value of ExtendGap,
% explain the result
[score, align, start] = swalign(seqA, seqB, 'GapOpen', 1, 'ExtendGap', 15, 'Showscore', true);

%%Bingyan Wu: a high ExtendGap would penalize a gap of more than 1 bp and
%%low GapOpen does not penalize a lot for skipping base pairs. therefore,
%%the alignment tend to have small gaps with few skipping of large base
%%pairs

% F. run swalign align with the default value of GapOpen and a low value
% of ExtendGap and explain the result. 
[score, align, start] = swalign(seqA, seqB, 'ExtendGap', 1, 'Showscore', true);

%%Bingyan Wu:the ExtendGap scores gaps following the first gap,these gaps
%%tend to be larger

