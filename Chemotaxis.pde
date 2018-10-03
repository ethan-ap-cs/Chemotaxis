Bacteria [] bob;
void setup(){
	size(200,200);
	bob = new Bacteria[5];
	for (int i = 0; i < bob.length; i++){
		bob[i] = new Bacteria(100, 100);
	}
	
}   
void draw(){
	background(0);
	for (int i = 0; i < bob.length; i++){
		bob[i].move();
		bob[i].show();
	}

	
} 
class Bacteria{
	int myX, myY, myColor;
	Bacteria(int x,int y){
		myColor = color(255, 0, 0);
		myX = x;
		myY = y;
	}
	void move(){
		myX = myX + (int)(Math.random()*7)-3;
		myY = myY + (int)(Math.random()*7)-3;
	}
	void show(){
		fill(myColor);
		ellipse(myX,myY,20,20);
	}
}    