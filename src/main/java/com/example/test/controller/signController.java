package com.example.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class signController {


    @RequestMapping("/sign")    //url을 컨트롤러의 메서드와 매핑할때 사용
    public String sign(Model model){

        //model 객체를 이용하여 view로 데이터 전달
        model.addAttribute("sign","msign");
        return "sign";  //view 파일 리턴
    }
}
