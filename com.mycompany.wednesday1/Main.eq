
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main: SEScene
{
	SESprite bg; 
	SESprite fg;
	SESprite kg;
	SESprite cg;
	int right=1;
	int left=0;
	int up=0;
	int down=1;
//	bool move_right=true;
//	bool move_left=false;
//	bool move_down=true;
//	bool move_up=false;
	int speed;
	double rot;
	SESprite text;
	int bounce;
	String display;

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		speed = 100;
		rot=0;
		bg = add_sprite_for_color(Color.instance("black"),get_scene_width(),get_scene_height());
		bg.move(0,0);

	//	fg = add_sprite_for_color(Color.instance("#6633FF"),150,150);
		rsc.prepare_image("my_image","myimage",150,150);
		fg = add_sprite_for_image(SEImage.for_resource("my_image"));
		fg.move(100,100);

	//	kg = add_sprite_for_color(Color.instance("green"),150,150);
	//	kg.move(100,250);

	//	cg = add_sprite_for_color(Color.instance("red"),150,150);
	//	cg.move(100,400);

		rsc.prepare_font("myfont","arial bold color=white", 40);
		display = "BOUNCE = %d".printf().add(Primitive.for_integer(bounce)).to_string();
		text = add_sprite_for_text(display,"myfont");
		text.move(0,get_scene_height()-text.get_height());

		
	}
	public void update(TimeVal now, double delta) {
		speed+=20;
		rot+=MathConstant.M_PI_4;
		fg.set_rotation(rot);
	//	cg.set_rotation(rot);
	
	/*	if(move_right) {
				fg.move(fg.get_x()+delta*speed,fg.get_y()+delta*100);
				kg.move(kg.get_x()+delta*speed,kg.get_y()+delta*200);
				cg.move(cg.get_x()+delta*speed,cg.get_y()+delta*300);
				if(fg.get_x()+fg.get_width()>get_scene_width())
				{
					move_left=true;
					move_right=false;
				}
		}
		if(move_left) {
			fg.move(fg.get_x()-delta*speed,fg.get_y()-delta*50);
		//	kg.move(kg.get_x()-delta*speed,kg.get_y()-delta*100);
		//	cg.move(cg.get_x()-delta*speed,cg.get_y()-delta*150);
			if(fg.get_x() < 0 || cg.get_y() < 0) {
				move_right=true;
				move_left=false;
				speed=20;
				bounce++;
			}
		}
		if(move_down) {
			fg.move(fg.get_x(),fg.get_y()-delta*20);
		//	kg.move(kg.get_x(),kg.get_y()-delta*40);
		//	cg.move(cg.get_x(),cg.get_y()-delta*60);
			if(fg.get_y()+fg.get_height()>get_scene_width())
			{
				move_up=true;;
				move_down=false;
			}	
					}
		if(move_up) {
			fg.move(fg.get_x(),fg.get_y()+delta*100);
		//	kg.move(kg.get_x(),kg.get_y()+delta*100);
		//	cg.move(cg.get_x(),cg.get_y()+delta*100);
			if(fg.get_y() < 0) {
				move_up=false;
				move_down=true;
			}			
		}*/

		if(right==1) {
			fg.move(fg.get_x()+delta*700,fg.get_y());
		//	kg.move(fg.get_x()+delta*700,fg.get_y());
		//	cg.move(fg.get_x()+delta*700,fg.get_y());
		}
		else if(left==1) {
			fg.move(fg.get_x()-delta*700,fg.get_y());
		//	kg.move(fg.get_x()-delta*700,fg.get_y());
		//	cg.move(fg.get_x()-delta*700,fg.get_y());
		}
			if(fg.get_x()+fg.get_width() >= get_scene_width()) {
			right=0;
			left=1;
			bounce++;
		}
			if(fg.get_x()<=0) {
			right=1;
			left=0;
			bounce++;
			}
		
		if(up==1) {
			fg.move(fg.get_x(),fg.get_y()+delta*700);
		//	kg.move(fg.get_x(),fg.get_y()+delta*700);
		//	cg.move(fg.get_x(),fg.get_y()+delta*700);
		}
		if(down==1) {
			fg.move(fg.get_x(),fg.get_y()-delta*700);
		//	kg.move(fg.get_x(),fg.get_y()-delta*700);
		//	cg.move(fg.get_x(),fg.get_y()-delta*700);
		}
			if(fg.get_y()+fg.get_height() >= get_scene_height()) {
			up=0;
			down=1;
			bounce++;
		}
			if(fg.get_y()<=0) {
			up=1;
			down=0;
			bounce++;
			}
			
		display = "BOUNCE = %d".printf().add(Primitive.for_integer(bounce)).to_string();
		text.set_text(display,"myfont");
	


				
		}	
}	
	

