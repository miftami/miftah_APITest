package apitest;

import com.intuit.karate.junit5.Karate;

public class RunSingle {
   
    @Karate.Test
    public Karate runGetWithTag() {
        // getRequest is name feature files
        return Karate.run("putRequest").relativeTo(getClass());
    }
}
