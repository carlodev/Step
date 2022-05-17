// Gmsh project created on Sat May 07 22:13:22 2022
SetFactory("OpenCASCADE");
//+
N = DefineNumber[ 10, Name "Parameters/N" ];
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
Point(5) = {0, 2*H, 0, 1.0};
//+
Point(6) = {35*H, 2*H, 0, 1.0};
//+
Point(7) = {35*H, H, 0, 1.0};
//+
Point(8) = {35*H, 0, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 7};
//+
Line(7) = {7, 8};
//+
Line(8) = {8, 1};
//+
Line(9) = {7, 2};
//+
Line(10) = {2, 5};
//+
Curve Loop(4) = {4, -10, 2, 3};
//+
Plane Surface(1) = {4};
//+
Curve Loop(5) = {10, 5, 6, 9};
//+
Plane Surface(2) = {5};
//+
Curve Loop(6) = {7, 8, 1, -9};
//+
Plane Surface(3) = {6};
//+
Physical Surface("Fluid_S", 15) = {1, 2, 3};
//+
Physical Curve("Inlet", 12) = {3};
//+
Physical Curve("Walls", 13) = {4, 5, 8, 1, 2};
//+
Physical Curve("Outlet", 14) = {6, 7};
//+
Transfinite Curve {3, 10, 6, 7, 1} = 1*N Using Progression 1;
//+
Transfinite Curve {5, 9, 8} = 35*N Using Progression 1;
//+
Transfinite Curve {4, 2} = 4*N Using Progression 1;

//+
Transfinite Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {3};
//+
Transfinite Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {3};
//+
Recombine Surface {1, 2, 3};
