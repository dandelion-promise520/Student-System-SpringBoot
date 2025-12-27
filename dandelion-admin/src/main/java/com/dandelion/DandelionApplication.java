package com.dandelion;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author dandelion
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class DandelionApplication
{
    public static void main(String[] args) {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(DandelionApplication.class, args);
        System.out.println(
                "       .  '  .          \n" +
                        "     '   \\ | /   '      * 项目如蒲公英般 \n" +
                        "    .  -- ( ) --  .        播撒希望... \n" +
                        "     '   / | \\   '     * \n" +
                        "       '  .|.  '            \n" +
                        "           |      * \n" +
                        "           |  /         \n" +
                        "           | /          \n" +
                        "    _____\\ |/ /____     \n" +
                        "   (      \\|/      )    \n" +
                        "    '------------- '    "
        );
    }
}
