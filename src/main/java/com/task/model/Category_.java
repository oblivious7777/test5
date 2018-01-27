package com.task.model;

public class Category_ {

    int id;
    String introduce;
    String threshold;
    String classname;
    String difficulty;
    String cycle;
    String rare;
    String salaryO;
    String salaryW;
    String salaryT;
    String number;
    String prompt;
    String photo;
    String occupation;
    String direction;
    String thresholdStar;
    String difficultyStar;



    public String getDifficultyStar() {
        return difficultyStar;
    }

    public String getThresholdStar() {
        return thresholdStar;
    }

    public int getId() {
        return id;
    }

    public String getIntroduce() {
        return introduce;
    }

    public String getThreshold() {
        return threshold;
    }

    public String getClassname() {
        return classname;
    }

    public String getDifficulty() {
        return difficulty;
    }

    public String getCycle() {
        return cycle;
    }

    public String getRare() {
        return rare;
    }

    public String getSalaryO() {
        return salaryO;
    }

    public String getSalaryW() {
        return salaryW;
    }

    public String getSalaryT() {
        return salaryT;
    }

    public String getNumber() {
        return number;
    }

    public String getPrompt() {
        return prompt;
    }

    public String getPhoto() {
        return photo;
    }

    public String getOccupation() {
        return occupation;
    }

    public String getDirection() {
        return direction;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public void setThreshold(String threshold) {
        this.threshold = threshold;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public void setDifficulty(String difficulty) {
        this.difficulty = difficulty;
    }

    public void setCycle(String cycle) {
        this.cycle = cycle;
    }

    public void setRare(String rare) {
        this.rare = rare;
    }

    public void setSalaryO(String salaryO) {
        this.salaryO = salaryO;
    }

    public void setSalaryW(String salaryW) {
        this.salaryW = salaryW;
    }

    public void setSalaryT(String salaryT) {
        this.salaryT = salaryT;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public void setPrompt(String prompt) {
        this.prompt = prompt;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public void setDifficultyStar(String difficultyStar) {
        this.difficultyStar = difficultyStar;
    }

    public void setThresholdStar(String thresholdStar) {
        this.thresholdStar = thresholdStar;
    }

    @Override
    public String toString() {
        return "Category_{" +
                "id=" + id +
                ", introduce='" + introduce + '\'' +
                ", threshold='" + threshold + '\'' +
                ", classname='" + classname + '\'' +
                ", difficulty='" + difficulty + '\'' +
                ", cycle='" + cycle + '\'' +
                ", rare='" + rare + '\'' +
                ", salaryO='" + salaryO + '\'' +
                ", salaryW='" + salaryW + '\'' +
                ", salaryT='" + salaryT + '\'' +
                ", number='" + number + '\'' +
                ", prompt='" + prompt + '\'' +
                ", photo='" + photo + '\'' +
                ", occupation='" + occupation + '\'' +
                ", direction='" + direction + '\'' +
                '}';
    }
}
