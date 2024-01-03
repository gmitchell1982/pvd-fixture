//set global control variables for minimum angle and length in mesh generation and preview output fidelity (don't change these unless you want your CNC output fidelity to be wrong)
$fa = 0.5; //degrees
$fs = 0.5; //mm

//set input control variables (these are the variables you can change)
main_fixture_od = 6.25 * 25.4; //inches converted to mm for maximum fidelity
main_fixture_thick = 0.5 * 25.4;
arbor_center_od = 0.5 * 25.4;
tool_hole_edge_clearance = 0.25 * 25.4;
tool_hole_self_clearance = 0.25 * 25.4;
tool_hole_id = 0.75 * 25.4; //if too big, render will cancel with echoed error warning in console output
securing_screw_hole_dia = 0.25 * 25.4; //do not change this unless smaller screws are necessary to make thinner fixtures (do not include tap-threads in measurement since it will need to be tapped by hand after creation

//defining purely calculated variables
max_tool_hole_id = (main_fixture_od - arbor_center_od)/2 - tool_hole_edge_clearance*2;
max_tools = floor(180/(asin((tool_hole_id + (tool_hole_self_clearance/2))/(main_fixture_od - tool_hole_edge_clearance - tool_hole_id))));
tool_hole_spacing = 360/max_tools;


//print an error and stop output if tool_hole_id > max_tool_hole_id; continue if everything is okay
if(tool_hole_id > max_tool_hole_id){echo("tool too large for operation - render aborted");} else {
  
//subtracting the negative geometries from the main fixture wheel
difference(){
//defining the main fixture wheel
cylinder(h = main_fixture_thick, d = main_fixture_od, center = true);

//defining the arbor hole negative geometry
cylinder(h = main_fixture_thick + 2, d = arbor_center_od, center = true);

//for loop to make all the tool negative geometries
for(i = [max_tools-1:-1:0]){
  //rotate each tool hole into its position
  rotate([0, 0, -tool_hole_spacing * (i)]){
    //move negaitve geometery to maximum edge of fixture
    translate([-tool_hole_id/2 + main_fixture_od/2 - tool_hole_edge_clearance, 0, 0]){
      //defining the tooling hole negative geometry
      cylinder(h = main_fixture_thick + 2, d = tool_hole_id, center = true);
    }
  
    //move tool-securing screw hole negative geometry into correct position
    translate([-(tool_hole_edge_clearance + tool_hole_id/2 + 2)/2 + main_fixture_od/2 + 1 , 0, 0]){
      //rotate tool-securing screw hole negative geometry into correct rotation
      rotate([0, 90, 0]){
        //define tool-securing screw hole negative geometery
        cylinder(h = tool_hole_edge_clearance + tool_hole_id/2 + 2, d = securing_screw_hole_dia, center = true);
      }
    }
  }
}
}
}
//
















