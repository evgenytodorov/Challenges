public class Calculator {
    
    public Integer Add(Integer a, Integer b){
        return a + b;
    }
    
    public Integer Multiply(Integer a, Integer b){
        Integer product = 0;
        
        if (a < 0){
            a = 0 - a;
            b = 0 - b;
        }
        
        for (Integer i = 0; i < a; i++){
            product = Add(product, b);
        }
        
        return product;
    }
    
    public Integer Divide(Integer a, Integer b){
        if (b == 0){
            return 0;
        }
        else {
        	Integer quotient = 0;
        	Integer sum = 0;
        	Boolean isNegative = false;
        	if ((a < 0 || b < 0) && (a > 0 || b > 0)){
            	isNegative = true;
            	if (a < 0){
              	  a = 0 - a;
            	}
            	else {
               		b = 0 - b;
            	}
        	}
        	else if (a < 0 && b < 0){
            	a = 0 - a;
            	b = 0 - b;
        	}
        	while (sum + b <= a) {
            		sum = add(sum, b);
                	quotient++;
        	}
        	if (isNegative == true){
            	quotient = 0 - quotient;
        	}
        	return quotient;
        }
    }
    
    public Integer Mod(Integer a, Integer b){
        if (b == 0){
            return null;
        }
        else {
            return a - Multiply(b, Divide(a,b));
    	}
    }
}