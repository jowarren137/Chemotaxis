Snowflake[] snowstorm;

 void setup()   
 {     
 	size(500,500);
 	background(194);
 	snowstorm = new Snowflake[70]; 
 	for(int i = 0; i < snowstorm.length; i++)
 	{
 		snowstorm[i] = new Snowflake();
 	}
 }   
 void draw()   
 {    

 	stroke(0);
 	fill(255);
 	ellipse(250,250,300,300);
 	ellipse(250,185,40,40);
 	ellipse(250,235,70,70);
 	ellipse(250,310,90,90);
 	for(int i = 0; i < snowstorm.length; i++)
 	{
 		snowstorm[i].show();
 		snowstorm[i].move();
 	}   
 	noStroke();
 	fill(165,0,0);
 	rect(112,350,275,120);
 	textSize(20);
 	fill(0);
 	text("It's cold in here",170,420);
 }  
 class Snowflake    
 {     
 	int siz, myX, myY;
 	int myColor = color(175,255,255);
 	Snowflake()
 	{
		siz = 15;
 		myX = myY = 250;
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random() * 5) - 2;
 		myY = myY + (int)(Math.random() * 5) - 1;
 	}
 	void show()
 	{
		noStroke();
 		fill(myColor);
 		ellipse(myX,myY,siz,siz);
 		if(myX > 350 || myY > 325 || myX < 150 || myY < 150)
 		{
 			myX = (int)(Math.random() * 175) + 175;
 			myY = (int)(Math.random() * 150) + 150;
 		}
 	}
 }    