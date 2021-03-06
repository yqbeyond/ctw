% function [P, W] = dtwBack(S)
% Trace back to compute alignment path.
%
% There are two versions implemented with the same interface:
%   (1) matlab version: dtwBackSlow.m
%   (2) c++ version:    dtwBack.cpp
%
% Example
%   input   -  S = [0 1 1 1 1 1 1 1 1; ...
%                   2 3 1 1 1 1 1 1 3; ...
%                   2 2 3 1 1 1 1 1 1; ...
%                   2 2 2 3 1 1 1 1 1; ...
%                   2 2 2 2 1 1 1 1 1; ...
%                   2 2 2 2 3 1 1 3 1; ...
%                   2 2 2 2 2 3 1 2 3]
%   call    -  [P, W] = dtwBack(S)
%   output  -   P = [1 2 3 4 5 5 5 5 6 7; ...
%                    1 2 3 4 4 5 6 7 8 9]'
%               W = [1 0 0 0 0 0 0 0 0; ...
%                    0 1 0 0 0 0 0 0 0; ...
%                    0 0 1 0 0 0 0 0 0; ...
%                    0 0 0 1 0 0 0 0 0; ...
%                    0 0 0 1 1 1 1 0 0; ...
%                    0 0 0 0 0 0 0 1 0; ...
%                    0 0 0 0 0 0 0 0 1]
%
% Input
%   S       -  step matrix, n1 x n2
%
% Output
%   P       -  warping path matrix, n0 x 2
%   W       -  warping matrix, n1 x n2
%
% History
%   create  -  Feng Zhou (zhfe99@gmail.com), 02-16-2009
%   modify  -  Feng Zhou (zhfe99@gmail.com), 10-09-2011

