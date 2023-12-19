package apitest;

import static org.junit.jupiter.api.Assertions.assertTrue;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
// import com.intuit.karate.Results;
// import com.intuit.karate.Runner;
// import com.intuit.karate.junit5.Karate;

// import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.jupiter.api.Test;

//@KarateOptions(tags = "@createData")
public class RunAllTest {
    
    @Test
    void testParallel() {
        Results results = Runner.path("classpath:apitest")
                .parallel(1);
        assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }
}
