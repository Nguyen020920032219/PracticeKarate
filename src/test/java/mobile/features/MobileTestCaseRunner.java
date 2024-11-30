package mobile.features;

import com.intuit.karate.junit5.Karate;

public class MobileTestCaseRunner {

    @Karate.Test
    public Karate TC_01_Runner() {
        return Karate.run("classpath:mobile/features/mobile-testcase.feature")
                .tags("TC_01").reportDir("src/test/java/mobile/reports");
    }

    @Karate.Test
    public Karate TC_02_Runner() {
        return Karate.run("classpath:mobile/features/mobile-testcase.feature")
                .tags("TC_02").reportDir("src/test/java/mobile/reports");
    }

    @Karate.Test
    public Karate TC_03_Runner() {
        return Karate.run("classpath:mobile/features/mobile-testcase.feature")
                .tags("TC_03").reportDir("src/test/java/mobile/reports");
    }
}
