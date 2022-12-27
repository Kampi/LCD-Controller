# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set CONFIG [ipgui::add_param $IPINST -name "CONFIG" -parent ${Page_0}]
  set_property tooltip {Select the default display configuration.} ${CONFIG}
  set CLOCK_FREQ [ipgui::add_param $IPINST -name "CLOCK_FREQ" -parent ${Page_0}]
  set_property tooltip {Clock frequency for the LCD interface.} ${CLOCK_FREQ}


}

proc update_PARAM_VALUE.CLOCK_FREQ { PARAM_VALUE.CLOCK_FREQ } {
	# Procedure called to update CLOCK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLOCK_FREQ { PARAM_VALUE.CLOCK_FREQ } {
	# Procedure called to validate CLOCK_FREQ
	return true
}

proc update_PARAM_VALUE.CONFIG { PARAM_VALUE.CONFIG } {
	# Procedure called to update CONFIG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONFIG { PARAM_VALUE.CONFIG } {
	# Procedure called to validate CONFIG
	return true
}


proc update_MODELPARAM_VALUE.CLOCK_FREQ { MODELPARAM_VALUE.CLOCK_FREQ PARAM_VALUE.CLOCK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLOCK_FREQ}] ${MODELPARAM_VALUE.CLOCK_FREQ}
}

proc update_MODELPARAM_VALUE.CONFIG { MODELPARAM_VALUE.CONFIG PARAM_VALUE.CONFIG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONFIG}] ${MODELPARAM_VALUE.CONFIG}
}

