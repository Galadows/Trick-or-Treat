/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
#macro view view_camera[0]
camera_set_view_size(view,ViewWidth,ViewHeight);

if instance_exists(objPlayer) {
	Speed = 0.1;
	TargetX = objPlayer.x - ViewWidth/2;
	TargetY = objPlayer.y - ViewHeight/2;
	camera_set_view_pos(view,TargetX,TargetY);
	
	CameraX = camera_get_view_x(view);
	CameraY = camera_get_view_y(view);

	camera_set_view_pos(view,lerp(CameraX,TargetX,Speed),lerp(CameraY,TargetY,Speed));
}

x = camera_get_view_x(view);
y = camera_get_view_y(view);