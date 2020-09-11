package com.example.test.controller;


import com.example.test.model.MemberModel;
import com.example.test.service.lmpl.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class MemberController {

    @Autowired
    MemberService memberService;

    @RequestMapping("/list")   //list url에 매핑되도록
    public String list(Model model){
        List<MemberModel> member = memberService.printMember();

        model.addAttribute("memberList",member);
        return "list";
    }
}
