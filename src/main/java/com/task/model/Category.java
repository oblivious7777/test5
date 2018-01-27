package com.task.model;

public class Category {

    int id;
    String name;
    int state;
    String photo;
    String motto;
    String introduce;
    String occupation;
    String direction;

    public void setId(int id){
        this.id=id;
    }
    public int getId(){
        return id;
    }

    public void setName(String name){
        this.name=name;
    }
    public String getName(){
        return name;
    }

    public void setState(int state){
        this.state=state;
    }
    public int getState(){
        return state;
    }

    public void setPhoto(String photo){
        this.photo=photo;
    }
    public String getPhoto(){
        return photo;
    }

    public void setMotto(String motto){
        this.motto=motto;
    }
    public String getMotto(){
        return motto;
    }

    public void setIntroduce(String introduce){
        this.introduce=introduce;
    }
    public String getIntroduce() {
        return introduce;
    }

    public void setOccupation(String occupation){
        this.occupation=occupation;
    }
    public String getOccupation() {
        return occupation;
    }

    public void setDirection(String direction){
        this.direction=direction;
    }
    public String getDirection() {
        return direction;
    }


    @Override
    public String toString() {
        return "学员信息 [Id=" + id + ",Name="+name+  ",State="+state+",Photo="+photo+",Motto="+motto+",Introduce="+introduce+",occupation="+occupation+",direction="+direction+"]";
    }

}
