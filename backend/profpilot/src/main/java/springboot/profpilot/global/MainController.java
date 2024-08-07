package springboot.profpilot.global;

import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import springboot.profpilot.global.Utils.MakeJsonResponse;
import springboot.profpilot.model.DTO.page.MainPageDTO;
import springboot.profpilot.model.lecture.Lecture;
import springboot.profpilot.model.member.Member;
import springboot.profpilot.model.member.MemberService;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
public class MainController {
    private final MemberService memberService;

    @GetMapping("/sendToken/{token}")
    @ResponseBody
    public Map<String, String> sendToken(@PathVariable String token, HttpServletResponse res) {
        Map<String, String> response = new HashMap<>();
        response.put("token", token);
        return response;
    }

    @GetMapping("/main/page")
    @ResponseBody
    public Map<String, Object> mainPage(Principal principal) {
        Member member = memberService.findByEmail(principal.getName());
        Map<String, Object> response = new HashMap<>();
        List<Lecture> lectures = member.getLectures();

        List<MainPageDTO> mainPageDTOList = lectures.stream().map(lecture -> new MainPageDTO(
                lecture.getId().toString(),
                lecture.getName(),
                lecture.getDay(),
                lecture.getStart_time(),
                lecture.getEnd_time(),
                lecture.getBuilding(),
                lecture.getRoom(),
                lecture.getProfessor().getName()
        )).collect(Collectors.toList());

        response.put("name", member.getName());
        response.put("email", member.getEmail());
        response.put("role", member.getRole());
        response.put("lectures-size", lectures.size());
        response.put("mainPageDTOList", mainPageDTOList);
        return response;
    }


    @GetMapping("/WhoAmI")
    @ResponseBody
    public String whoAmI(Principal principal) {
        Member member = memberService.findByEmail(principal.getName());
        if (member == null) {
            System.out.println("member is null");
            return "null";
        } else if (member.getRole().equals("ROLE_ADMIN")) {
            return "ROLE_ADMIN";
        } else if (member.getRole().equals("ROLE_PROFESSOR")) {
            return "ROLE_PROFESSOR";
        } else if (member.getRole().equals("ROLE_STUDENT")) {
            return "ROLE_STUDENT";
        } else {
            return "null";
        }
    }

}
