package com.spring.board;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

@Controller
public class HomeController {
    @RequestMapping("/")
    public String home(Locale locale, Model model){
        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
        String formattedDate = dateFormat.format(date);

        model.addAttribute("serverTime", formattedDate);
        return "home";

    }

//    @RequestMapping("classlist")
//    public String list(Model model){
//        List<String> list = new ArrayList<String>();
//        list.add("실전프로젝트1");
//        list.add("컴퓨터구조");
//        list.add("컴퓨터비전");
//        list.add("이산수학");
//
//        model.addAttribute("classlist", list);
//        String msg = "2학년 2학기 교과목 리스트";
//        model.addAttribute("title", msg);
//        return "board/list";
    }

