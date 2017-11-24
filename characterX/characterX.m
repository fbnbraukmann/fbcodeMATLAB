%%get the x character from a fasta file
clc
clear
% load fasta file
Seq = fastaread('/Users/braukmann/Documents/MATLAB/characterX/test.fa');

%defines start and end of desired sequence
match_start = 20;
match_end = 30;

%stores desired sequence
seq_match = Seq(2).Sequence(match_start:match_end);
disp(seq_match)