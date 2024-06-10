package team.one;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KaishainService {
    @Autowired
    private KaishainRepository kaishainRepository;

    public List<Kaishain> getAllKaishains() {
        return kaishainRepository.findAll();
    }

    public Kaishain saveKaishain(Kaishain kaishain) {
        return kaishainRepository.save(kaishain);
    }

    public Kaishain getKaishainById(String id) {
        return kaishainRepository.findById(id).orElse(null);
    }

    public void deleteKaishainById(String id) {
        kaishainRepository.deleteById(id);
    }
}
