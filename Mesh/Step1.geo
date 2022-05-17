// Gmsh project created on Sat May 07 21:58:13 2022
SetFactory("OpenCASCADE");
//+
H = DefineNumber[ 0.1, Name "Parameters/H" ];
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0, H, 0, 1.0};
//+
Point(3) = {-4*H, H, 0, 1.0};
//+
Point(4) = {-4*H, 2*H, 0, 1.0};
//+
Point(5) = {35*H, 2*H, 0, 1.0};
//+
Point(6) = {35*H, 0, 0, 1.0};
//+
Point(7) = {0, 2*H, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 1};
//+
Line(7) = {7, 2};
//+
Line(8) = {4, 7};
//+
Line(9) = {7, 5};
//+
Curve Loop(1) = {9, 5, 6, 1, -7};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {8, 7, 2, 3};
//+
Plane Surface(2) = {2};
//+
Physical Surface("Fluid", 11) = {2, 1};
//+
Physical Curve("Inlet", 8) = {3};
//+
Physical Curve("Outlet", 9) = {5};
//+
Physical Curve("Walls", 10) = {4, 2, 1, 6};
//+
N = DefineNumber[ 10, Name "Parameters/N" ];
//+
Transfinite Curve {3} = N Using Progression 1;
//+
Transfinite Curve {5} = 2*N Using Progression 1;
//+
Transfinite Curve {1} = N Using Progression 1;
//+
Transfinite Curve {4} = 10*N Using Progression 1;
//+
Transfinite Curve {6} = 10*N Using Progression 1;
//+
Transfinite Curve {2} = 4*N Using Progression 1;
//+
Transfinite Curve {6} = 35*N Using Progression 1;
//+
Transfinite Curve {4} = 39*N Using Progression 1;

//+
Transfinite Curve {8} = 4*H Using Progression 1;
//+
Transfinite Curve {9} = 35*H Using Progression 1;
//+
Recombine Surface {2};
//+
Recombine Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {2};
//+
Transfinite Surface {1};
//+
Transfinite Curve {9} = 35*N Using Progression 1;
//+
Transfinite Curve {8} = 4*N Using Progression 1;
//+
Transfinite Curve {7} = 1*N Using Progression 1;
