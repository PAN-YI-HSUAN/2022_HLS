# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
numVert { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
numEdge { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 32
	offset_end 43
}
column { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 44
	offset_end 55
}
btwn { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 56
	offset_end 67
}
tmp0 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 68
	offset_end 79
}
tmp1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 80
	offset_end 91
}
tmp2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 92
	offset_end 103
}
tmp3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 104
	offset_end 115
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


