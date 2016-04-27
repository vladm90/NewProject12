package com.springapp.model;

import java.util.Arrays;
import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 26.04.2016
 * Time: 12:12
 */
public enum ProductCategoryEnum {

    NONE("NONE", "-"),
    BORCANE("MIERE", "Miere"),
    FAGURI("FAGURI", "Faguri"),
    SIROPURI("SIROPURI", "Siropuri"),
    SPECIALITATI("PRODUSE_APICOLE", "Produse Apicole");


    private String code;
    private String label;

    ProductCategoryEnum(String code, String label){
        this.code = code;
        this.label = label;
    }

    public String getCode(){
        return code;
    }

    public String getLabel() {
        return label;
    }

    public static List<ProductCategoryEnum> getVals(){
        return Arrays.asList(values());
    }

    public Integer getId() {
        return this.ordinal();
    }
}
