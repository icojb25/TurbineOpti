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

function x_r = simplexReflection(simplex,NM_model)

% simplexReflection.m - Matlab function to compute reflection point for Nelder Mead optimisation algorithm
%
% Input:
%   simplex -       matrix of simplex vertices x parameters (npar+1 x npar)
%
% Output:
%   x_r -           vector (npar x 1) of reflected point coordinates


% Calculate simplex centroid of best points for reflection
simplex_bar = sum(simplex(1:NM_model.npar,:))/NM_model.npar;

% Calculate reflection vertex
x_r = (1 + NM_model.rho) * simplex_bar - NM_model.rho * simplex(NM_model.npar+1,:);

