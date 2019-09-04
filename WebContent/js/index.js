/**
 * 
 */

var panel_count = 1;

function larrow_MouseOver(){
	var l_arrow = document.getElementById("np_larrow");
	l_arrow.style.opacity = 0.3;
	l_arrow.style.backgroundColor = "gray";

}

function larrow_MouseLeave(){
	var l_arrow = document.getElementById("np_larrow");
	l_arrow.style.opacity = 1.0;
	l_arrow.style.backgroundColor = "transparent";
}

function rarrow_MouseOver(){
	var r_arrow = document.getElementById("np_rarrow");
	r_arrow.style.opacity = 0.3;
	r_arrow.style.backgroundColor = "gray"
}

function rarrow_MouseLeave(){
	var r_arrow = document.getElementById("np_rarrow"); 
	r_arrow.style.opacity = 1.0;
	r_arrow.style.backgroundColor = "transparent"
}

function larrow_Click(){
	var bck_image = document.getElementById("bck_image"); 
	if(panel_count > 1)
		panel_count = panel_count - 1;	
	bck_image.style.backgroundImage = "url('./img/newspanel/np_" + panel_count + ".png')";		 
}	

function setPanelImage(){
	var bck_image = document.getElementById("bck_image");
	if(panel_count < 2){			    
		panel_count += 1;
	}
	else if(panel_count > 1){
		panel_count = 1;
	}	
	bck_image.style.backgroundImage = "url('./img/newspanel/np_" + panel_count + ".png')"; // *
}

function body_onLoad(){
	setInterval("setPanelImage()", 5000);
}

function rarrow_Click(){
	var bck_image = document.getElementById("bck_image");
	if(panel_count < 2){			    
		panel_count += 1;
	}
	else if(panel_count > 1){
		panel_count = 1;
	}
	bck_image.style.backgroundImage = "url('./img/newspanel/np_" + panel_count + ".png')"; // *
}
