package team.one;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WbsController {

    @GetMapping("/")
    public String index() {
        return "index"; // This corresponds to src/main/resources/templates/index.html
    }
}
