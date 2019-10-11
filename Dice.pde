//Die bob = new Die

void setup()
{
	size(610,650);
	noLoop();
}
void draw()
{
	background(0);
	int total = 0;
	for(int y = 20; y <= 600; y+=100)
	{
		for(int x = 20; x <= 600; x += 100){
			Die bob = new Die(x, y);
			bob.show();
			total += bob.value;
		}
	}
	fill(255);
	textSize(20);
	text("The total of your roll is: " + total, 180, 625);

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	
	int myX, myY, value;

	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		value = (int)(Math.random() * 6 + 1);
	}
	void show()
	{
		noStroke();
		fill((int)(Math.random() * 255 + 1), (int)(Math.random() * 255 + 1), (int)(Math.random() * 255 + 1));
		rect(myX, myY, 60, 60, 5);
		fill(0);
		if(value == 1)
		{
			ellipse(myX + 30, myY + 30, 10, 10);
		}
		if(value == 2)
		{
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
		}
		if(value == 3)
		{
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
		}
		if(value == 4)
		{
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
			ellipse(myX + 15, myY + 45, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
		}
		if(value == 5)
		{
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
			ellipse(myX + 15, myY + 45, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
		}
		if(value == 6)
		{ 
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 15, myY + 30, 10, 10);
			ellipse(myX + 15, myY + 45, 10, 10);
			ellipse(myX + 45, myY + 15, 10, 10);
			ellipse(myX + 45, myY + 30, 10, 10);
			ellipse(myX + 45, myY + 45, 10, 10);
			
		}
	}
}
