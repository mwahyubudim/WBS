package team.one;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/kaishains")
public class KaishainController {
    @Autowired
    private KaishainService kaishainService;

    @GetMapping
    public List<Kaishain> getAllKaishains() {
        return kaishainService.getAllKaishains();
    }

    @PostMapping
    public Kaishain createKaishain(@RequestBody Kaishain kaishain) {
        return kaishainService.saveKaishain(kaishain);
    }

    @GetMapping("/{id}")
    public Kaishain getKaishainById(@PathVariable String id) {
        return kaishainService.getKaishainById(id);
    }

    @DeleteMapping("/{id}")
    public void deleteKaishainById(@PathVariable String id) {
        kaishainService.deleteKaishainById(id);
    }
}
