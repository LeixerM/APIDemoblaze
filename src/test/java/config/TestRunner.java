package config;

import com.intuit.karate.Results;
import com.intuit.karate.Runner; // Esta es la clase de la librería
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class TestRunner { // Cambiamos el nombre de la clase aquí

    @Test
    void principal() {

        Results results = Runner.path("classpath:features")
                .tags("@loginFailed")
                .outputHtmlReport(true)
                .parallel(1);

        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}