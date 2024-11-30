package api.features;

import com.intuit.karate.junit5.Karate;

public class RequestRunner {
    @Karate.Test
    public Karate TC_01Runner() {
        return Karate.run("classpath:api/features/reqres.feature").tags("TC_01").reportDir("src/test/java/api/reports");
    }
}
