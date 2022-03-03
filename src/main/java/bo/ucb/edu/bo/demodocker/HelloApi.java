package bo.ucb.edu.bo.demodocker;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/hello")

public class HelloApi {
    @GetMapping(produces = "application/json")

    public Map<String, String> greeting (@RequestParam String name){
        HashMap<String,String> result = new HashMap<>();
        result.put("greeting", "Hello " +name);
        return result;
    }

}
