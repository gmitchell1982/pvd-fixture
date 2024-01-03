This project is a recreation of a single component of a client project I completed in 2018.

The project has been generalized and stripped of client details as per the requirements set forth by the client in the terms and conditions discussed in 2023 for the project inclusion in a public portfolio.

The client has expressed preference to remain anonymous and will remain so.

--------------------
The General Scenario
--------------------

During my time as a freelancer, I was approached to complete a complex business plan for a small-scale physical vapor deposition (PVD) coating facility due to my background and broad knowledge of such facilities and the processes involved in their operation.

Unlike previous business plans I had worked on up to this point, I was being offered an ownership percentage if I also assisted in the location, acquisition, design, and creation of physical objects necessary for a PVD facility to function within the specified startup budget limitations.

The project eventually failed feasibility in the real estate/building aqcuisition phase.

-------------------------------
The Details of This Sub-Project
-------------------------------

After locating an adequate and affordable PVD coating chamber that could be used as the basis for a custom-built machine, I was tasked with designing fixed-tool-position (non-rotational) fixtures for the engineering team while they focused on creating a list of all parts I would need to source to make a functional unit.

I needed to do this without the exact dimensions of the coating chamber or the clearances needed to avoid spark-gap generation and shadowing since the chamber was not yet purchased.

--------------------
Why I Did What I Did
--------------------

Due to all of these limitations and unknowns, I decided to build a parametric model in OpenSCAD that was capable of self-adjusting its 3D model to changes in the input variables.

This would allow design of the tooling before knowledge of the dimensions, constraints, and/or customer tooling sizes were known.

Even after deployment, it would allow the quick adaptation to new tooling sizes for customers.

After exact values were known, the 3D meshes could be exported for Computer Numeric Control (CNC) construction or for import to traditional drafting software.

--------
OpenSCAD
--------

To learn more about OpenSCAD, or to download it, check out their webpage: https://openscad.org/

-------
License
-------

pvd-fixture is a program written in OpenSCAD for the purpose of parametric design of PVD fixtures.

Copyright (C) 2024  Gerald L. Mitchell

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

