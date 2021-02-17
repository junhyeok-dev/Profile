package junhyeokdev.profile;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
    private PaperRepository paperRepository;

    public HomeController(PaperRepository paperRepository) {
        this.paperRepository = paperRepository;
    }

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/papers")
    public String papers(@RequestParam(required = false) String type, @RequestParam(required = false) String keyword, Model model) {
        Iterable<Paper> result;

        if (keyword == null) {
            result = paperRepository.findAll();
        } else {
            switch (type) {
                case "title":
                    result = paperRepository.findByTitleContainingIgnoreCase(keyword);
                    break;
                case "user":
                    result = paperRepository.findByAuthorContainingIgnoreCase(keyword);
                    break;
                case "content":
                    result = paperRepository.findByAbsContainingIgnoreCase(keyword);
                    break;
                default:
                    result = paperRepository.findAll();
            }
        }

        model.addAttribute("papers", result);

        return "papers";
    }
}
