package com.it.springboot.daodto;

public class EvaluationDto {
    private String user;
    private String product;
    private String score;


    public String getUSer() {
        return user;
    }

    public void setUSer(String name) {
        this.user = user;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public String getScore(){ return score;}

    public void setScore(){this.score = score;}
}
