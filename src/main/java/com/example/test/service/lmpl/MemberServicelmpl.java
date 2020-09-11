package com.example.test.service.lmpl;

import com.example.test.dao.MemberDao;
import com.example.test.model.MemberModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServicelmpl implements MemberService {
    @Autowired
    private MemberDao dao;

    @Override
    public List<MemberModel> printMember(){
        List<MemberModel> member = dao.getMember();
        return member;
    }
}
