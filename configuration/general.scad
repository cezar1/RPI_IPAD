include <../utils/hex_trap.scad>;
use <../utils/adapter0.scad>;
use <../battery.scad>;
EXPLODE=0;
exploded = $exploded == undef ? 0 : $exploded; // 1 for exploded view
EXPLODE_LENGTH1=30; 
//Screw standards
SCREW_STANDARD_M2=2;
SCREW_STANDARD_M3=3;
NUT_HEIGHT_M2=1.6;
NUT_HEIGHT_M3=2.5;

//HDMI screen cover
HDMI_HOLES_LENGTH=157;
HDMI_HOLES_WIDTH=108;
GAP_MAINSCREWS_HDMI=3;
BASE_OUTERPAD_HDMI=2;
FRONT_COVER_TRAPS_TOLERANCE=0.1;
HDMI_COVER_HEIGHT=8;
HDMI_SHALLOW_BOTTOM_LAYER=1;//very thin layer at the front of the hdmi cover

//Battery
BATT_LENGTH=167;
BATT_WIDTH=42;//Warning below SIDE_PANEL_EXTENSION_WIDTH_BATTERY is set to 44 to allow some margin
BATT_WIDTH_MAX=44;//Provisioned to allow slight changes on BATT_WIDTH without impacting design
BATT_INNER_WIDTH=25;
BATT_HEIGHT=23.5;
BATT_INNER_HEIGHT=15;
BATT_PWR_SWITCH_FROM_TOP=17.5;
BATT_USB_PORT_FROM_TOP=4.3;
BATT_EXTRA_USB_LENGTH=5;
BATT_SHIFT_FRONT=-8;

//Side plates
SIDE_HOLES_DIST=75;
SIDE_HOLES_GAP=20;
SIDE_PANEL_EXTENSION_WIDTH=30;
SIDE_PANEL_ZIPTIE_EXTRA=5;//on each side of the battery
SIDE_PANEL_EXTENSION_WIDTH_BATTERY=BATT_WIDTH_MAX+SIDE_PANEL_ZIPTIE_EXTRA*2;   
SIDE_PANEL_BATT_EXTRA_TOP=18;
//Back plate
BACK_PLATE_CENTER_BLOB=8;
BACK_PLATE_WALL=5;
BACK_PLATE_WALL_INNER=2.5;
BACK_PLATE_THICKNESS=9;
SCREW_BLOCK_SIZE=12;
BACK_PLATE_SENSORBOARD_X=40;
BACK_PLATE_SENSORBOARD_Y=10;
BACK_PLATE_RPI_BOARD_X=-40;
BACK_PLATE_RPI_BOARD_Y=10;
BACK_PLATE_ADAPTER0_THICKNESS=3;
BACK_PLATE_ADAPTER0_SPACING=100;
BACK_PLATE_SENSORBOARD_X=40;
BACK_PLATE_SENSORBOARD_Y=10;

//ZIP TIES
ZIPTIE_WIDTH=4;
ZIPTIE_HEIGHT=1.6;
ZIPTIE2_WIDTH=5;
ZIPTIE_LENGTH1=30;
ZIPTIE_LENGTH2=10;
ZIPTIE_LENGTH3=15;
ZIPTIE_LENGTH4=20;
ZIPTIE_SIDE_DIST1=7;
ZIPTIE_SIDE_DIST2=28;
ZIPTIE_SIDE_DIST3=45;
ZIPTIE_TB_DIST1=7;
ZIPTIE_TB_DIST2=38;
ZIPTIE_TB_DIST3=64;
ZIPTIE_MID_DIST1=14;
ZIPTIE_MID_DIST2=77;
ZIPTIE_MID_DIST3=85;
ZIPTIE_MID_VERT_DIST1=10;
ZIPTIE_MID_VERT_DIST2=20;
ZIPTIE_MID_VERT_DIST3=30;
ZIPTIE_MID_VERT_DIST4=40;
ZIPTIE_MID_VERT_DIST5=50;
ZIPTIE_MID_VERT_DIST6=60;
ZIPTIE_DIAG_DIST1=15;
ZIPTIE_DIAG_DIST2=40;
ZIPTIE_DIAG_DIST3=75;
ZIPTIE_DIAG_DIST4=90;


//PILLARS
PILLARS_HEIGHT=50;
PILLARS_THICKNESS=BASE_OUTERPAD_HDMI+SCREW_STANDARD_M3*2+2;
PILLARS_THICKNESS2=5;
PILLARS_BOTTOM_OFFSET_X=0;
PILLARS_BOTTOM_OFFSET_Y=0;
PILLARS_TOP_OFFSET_X=0;
PILLARS_TOP_OFFSET_Y=0;
PILLARS_SMALL_WALL_CONFIG_DEFAULT=1;
PILLARS_SMALL_WALL_CONFIG_BATTERY=2;
PILLARS_SMALL_WALL_CONFIG_BATTERY_BOTTOM=3;
PILLARS_TRAPS_HEIGHT_RATIO=6;
//Top panels
TOP_PANEL_DIST=50;
TOP_PANEL_GAP=25;
TOP_PANEL_EXTENSION_WITDH=38;
TOP_PANEL_THICKNESS=5;
TOP_PLATE_PCB_PUSH_LIFT=2*NUT_HEIGHT_M2;
//Bottom panel
BOTTOM_PANEL_EXTENSION_WITDH=30;


//General connectors
USB_PORT_WIDTH=15;
USB_PORT_HEIGHT=6.7;

//Adapter0
CIRCUIT_BOARD_SCREWSTANDARD0=SCREW_STANDARD_M2;
CIRCUIT_BOARD_ADAPTER0_SPACING=10;
CIRCUIT_BOARD_ADAPTER0_SCREW_HEIGHT=6-BACK_PLATE_ADAPTER0_THICKNESS;
CIRCUIT_BOARD_ADAPTER0_SCREW_TRAP_HEIGHT=1.6;
CIRCUIT_BOARD_ADAPTER0_PLUS_WIDTH=5;
CIRCUIT_BOARD_ADAPTER0_BASE_WIDTH=CIRCUIT_BOARD_ADAPTER0_SPACING+10;

//PCBs
PCB_MODE_SYMMETRIC_HOLES=1;
PCB_MODE_SHIFTED_FROM_TOP_HOLES=2;

//Pushbutton PCB Board
PCB_PUSHBUTTON_LENGTH=70;
PCB_PUSHBUTTON_WIDTH=30;
PCB_PUSHBUTTON_THICKNESS=1.6;
PCB_PUSHBUTTON_HOLES_LENGTH=66;
PCB_PUSHBUTTON_HOLES_WIDTH=26;

//Camera PCB Board
PCB_CAMERA_LENGTH=25;
PCB_CAMERA_WIDTH=24;
PCB_CAMERA_THICKNESS=1;
PCB_CAMERA_HOLES_LENGTH=21;
PCB_CAMERA_HOLES_WIDTH=12;
PCB_CAMERA_HOLES_FROM_TOP=1.8;//shift the holes from the top edge

//Outer shell
OUTER_SHELL_THICKNESS=5;
OUTER_CORNER_CONFIG_PLATE_BOTTOM=0;
OUTER_CORNER_CONFIG_NONE=0;
OUTER_CORNER_CONFIG_BATT_BOTTOM=1;
OUTER_BATTERY_WIDTH_WRAP=6;
OUTER_BATTERY_SUPPORT_WIDTH=BATT_WIDTH+OUTER_BATTERY_WIDTH_WRAP;
OUTER_CORNER_INTERFACE_WIDTH=7;

OUTER_BATTERY_BUILD_INTO=10;