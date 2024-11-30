package web.features;

import com.intuit.karate.junit5.Karate;

public class WebTestCaseRunner {
    @Karate.Test
    Karate TC_01_Runner() {
        return Karate.run("classpath:web/features/web-testcase.feature")
                .tags("TC_01").reportDir("src/test/java/web/report");
    }

    @Karate.Test
    Karate TC_02_Runner() {
        return Karate.run("classpath:web/features/web-testcase.feature")
                .tags("TC_02").reportDir("src/test/java/web/report");
    }

    @Karate.Test
    Karate TC_03_Runner() {
        return Karate.run("classpath:web/features/web-testcase.feature")
                .tags("TC_03").reportDir("src/test/java/web/report");
    }

    @Karate.Test
    Karate TC_04_Runner() {
        return Karate.run("classpath:web/features/web-testcase.feature")
                .tags("TC_04").reportDir("src/test/java/web/report");
    }
}
