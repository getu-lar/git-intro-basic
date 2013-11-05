package tictactoe;

import tictactoe.base.*;

public class Application
{
	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		Application a = new Application();
		
		try
		{
			a.run();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public Application()
	{
	}
	
	public void run()
	{
		System.out.println("Hello World!");
	}
}
