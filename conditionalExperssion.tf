# conditional Experssion

variable env{
	
	name = "Pro'
	type = string
}

root_block_device {
	
	#  volume_size = var.env == "Pro" ? <True> : <false>  ?= if := else

	volume_size = var.env == "Pro" ? 20 : var.root_volume_size
}




