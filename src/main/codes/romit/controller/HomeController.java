package codes.romit.controller;

import codes.romit.model.Credentials;
import codes.romit.model.User;
import codes.romit.model.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.NoSuchElementException;

@Controller
public class HomeController {
    @Autowired
    private UserDAO crud;

    @GetMapping("/registration")
    public ModelAndView newUser(ModelAndView model){
        User user = new User();
        model.addObject("user", user);
        model.setViewName("registration");
        return model;
    }
    @PostMapping("/save")
    public ModelAndView saveToDB(@ModelAttribute User user){
        user.generateHash();
        crud.saveOrUpdate(user);
        return new ModelAndView("redirect:/");
    }

    @GetMapping("/")
    public ModelAndView showHome(ModelAndView model){
        Credentials cred = new Credentials();
        model.addObject("cred", cred);
        model.setViewName("index");
        return model;
    }

    @PostMapping("/validate")
    public ModelAndView extractFromDB(@ModelAttribute Credentials cred){
        cred.generateHash();
        ModelAndView model = new ModelAndView();
        try {
            User user = crud.get(cred.getEmail(), cred.getKey());
            model.addObject("user",user);
            model.addObject("userCopy",user);
            model.setViewName("profile");
        }catch (NoSuchElementException e){
            model.addObject("cred", new Credentials());
            model.setViewName("indexFAIL");
        }
        return model;
    }

    @PostMapping("/edit")
    public ModelAndView editProfile(@ModelAttribute User user){
        ModelAndView model = new ModelAndView();
        model.addObject("user",user);
        model.setViewName("edit");
        return model;
    }
    @PostMapping("/update")
    public ModelAndView update(@ModelAttribute User user){
        ModelAndView model = new ModelAndView();
        crud.saveOrUpdate(user);
        model.addObject("user",user);
        model.setViewName("profile");
        return model;
    }


}
