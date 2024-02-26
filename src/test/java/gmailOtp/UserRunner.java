package gmailOtp;

import com.intuit.karate.junit5.Karate;

public class UserRunner {

	
	  @Karate.Test
	    Karate testUsers() {
	        return Karate.run("gettingSubject.feature").relativeTo(getClass());
	
}
	  
}