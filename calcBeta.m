% TurbineOpti
% Copyright (C) 2019  J. Bergh
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program. If not, see <http://www.gnu.org/licenses/>.

function beta = calcBeta(f,R,Y)

% Function to calculate 'beta' of kriging predictor
%
% Input:
%   f -     function handle to regression function
%   R -     correlation matrix (n x n)
%   Y -     vector (n x 1) of known data point values
%
% Ouput:
%   beta -  beta value in kriging predictor
%
% J Bergh, 2013

% Calculate estimate of beta
beta = (f'/R*Y)/(f'/R*f);
