import java.util.Scanner;

public class MadLibs {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		String color = "";
		String pastTenseVerb = "";
		String adjective = "";
		String noun = "";
		
		// Prompting user to insert data
		System.out.println("Type color: ");
		color = scan.next();
		System.out.println("Type past tense verb: ");
		pastTenseVerb = scan.next();
		System.out.println("Type adjective: ");
		adjective = scan.next();
		System.out.println("Type noun: ");
		noun = scan.next();
		scan.close();
		
		// Print result
		System.out.print("The " + color + " dragon " + pastTenseVerb + " at the " + adjective);
		System.out.println(" knight, who rode on a sturdy, giant " + noun + ".");
	}

}
