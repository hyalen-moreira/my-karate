package org.hyalen.karate.feature;

import com.intuit.karate.FileUtils;
import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import com.intuit.karate.netty.FeatureServer;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import java.io.File;

@RunWith(Karate.class)
@KarateOptions(features = "C:\\Users\\hyalen.moreira\\workspace\\karate\\src\\test\\resources\\org\\hyalen\\karate\\feature\\user.feature")
public class UserRunner {
    private static FeatureServer server;

    @BeforeClass
    public static void beforeClass() {
        File file = FileUtils.getFileRelativeTo(MockServerTest.class, "_mock.feature");
        server = FeatureServer.start(file, 0, false, null);
        int port = server.getPort();
        System.setProperty("karate.server.port", port + "");
    }
}
