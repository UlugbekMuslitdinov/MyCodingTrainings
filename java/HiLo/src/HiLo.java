import java.util.Scanner;

public class HiLo {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		String playAgain = "";
		do {
			// Create the random number for user to guess
			int theNumber = (int)(Math.random() * 200 - 100);
			//		System.out.println( theNumber );
			int guess = 0;
			int numberOfTries = 0;
			while (guess != theNumber) {
				System.out.println("Guess a number between -100 and 100: ");
				guess = scan.nextInt();
				numberOfTries = numberOfTries + 1;
				if (guess < theNumber) {
					System.out.println(guess + " is too low. Try again.");
				} else if (guess > theNumber) {
					System.out.println(guess + " is too high. Try again.");
				} else {
					System.out.println(guess + " is correct. You win! It took you " + numberOfTries + " number of tries");
				}
			}
			System.out.println("Would you like to play again (y/n)?");
			playAgain = scan.next();
		} while (playAgain.equalsIgnoreCase("y"));
		System.out.println("Thank you for playing! Goodbye.");
		scan.close();
	}
}