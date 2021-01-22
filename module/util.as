#module util util_pid, util_w, util_h

#modinit int pid, int pw, int ph
	util_pidx=pid : util_w=pw : util_h=ph
	buffer util_pidx, util_w, util_h
	return

#defcfunc getstring_horizonmiddle str string, str font_name, int font_size, int font_style
	gsel util_pidx
	font font_name, font_size, font_style
	mes string
	return ginfo_mesx / 2

#defcfunc getstring_verticalmiddle str string, str font_name, int font_size, int font_style
	gsel util_pidx
	font font_name, font_size, font_style
	mes string
	return ginfo_mesy / 2


#global
	newmod v, util, 9000, 640,480
	