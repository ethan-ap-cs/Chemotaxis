Bacteria [] bob;
int counter = 0;
void setup(){
	size(200,200);
	bob = new Bacteria[5];
	frameRate(30);
	for (int i = 0; i < bob.length; i++){
		bob[i] = new Bacteria(100, 100);
	}
	
}
void mousePressed(){
	counter++;
	//if((counter/5) > ){

	//}
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
		myX = myX + (int)(Math.random()*9)-4;
		myY = myY + (int)(Math.random()*9)-4;
		if (myX > 200)
			myX = 200;
		if (myX < 0)
			myX = 0;
		if (myY > 200)
			myY = 200;
		if (myY < 0)
			myY = 0;
	}
	void show(){
		fill(myColor);
		ellipse(myX,myY,20,20);
	}
}    