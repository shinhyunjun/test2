package com.example.test.model;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MemberModel {

    private  int scc_num;
    private String scc_district;
    private String scc_phone;
    private String scc_name;


    public String getScc_name() {
        return scc_name;
    }

    public void setScc_name(String scc_name) {
        this.scc_name = scc_name;
    }

    public String getScc_phone() {
        return scc_phone;
    }

    public void setScc_phone(String scc_phone) {
        this.scc_phone = scc_phone;
    }

    public String getScc_district() {
        return scc_district;
    }

    public void setScc_district(String scc_district) {
        this.scc_district = scc_district;
    }

    public int getScc_num() {
        return scc_num;
    }

    public void setScc_num(int scc_num) {
        this.scc_num = scc_num;
    }


}
