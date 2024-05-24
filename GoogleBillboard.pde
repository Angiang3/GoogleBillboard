import java.math.BigInteger;

public final static String e = "27182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";

public void setup() {            
    for (int i = 0; i <= e.length() - 10; i++) {
        String digits = e.substring(i, i + 10);
        BigInteger num = new BigInteger(digits);
        if (isPrime(num)) {
            System.out.println("First 10-digit prime in e: " + num);
            break;
        }
    }
}  

public void draw() {
    // Not needed for this assignment
}

public boolean isPrime(BigInteger num) {
    return num.isProbablePrime(20); // Using BigInteger's built-in prime check
}
