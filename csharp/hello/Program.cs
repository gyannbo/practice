﻿//using System;    // optionnel, parce que c'est System, qui est providé par c# probablement

// Main doit être dans une classe, pas réussi top level statement, compiler complaining
// les fonctions aussi d'ailleurs (Or içi)
// D'ailleurs les fonctions de peuvent pas commencer par des minuscules, le compiler dit que 
// c'est réservé pour la librairie standard ou quelque chose comme ça
// Main doit etre static
// pour appeler une fonction, je dois la mettre dans une classe, j'ai pas réussi à faire 
// autrement (donc Func.Or()

// <using> directives enable us to ommit the System in System.Console.WriteLine
// probably because Console.WriteLine is declared in the system namespace

class Program 		// pas obligé d'avoir Program içi, peut etre un autre mot
{
	static void Main()
	{
		bool a = false;
		bool b = true;
		if (Func.Or(a ,b))
		{
			Console.WriteLine("c'est bon");
		}
		else
		{
			Console.WriteLine("nope");
		}
	}
}


// içi j'essaie de reproduire le pattern matching montré dans le tutoriel de microsoft pur c#

public class Func
{
	public static bool Or(bool left, bool right) => (left, right)switch
	{
		(false, true) => true,
		(_, _) => false,
	};
}
