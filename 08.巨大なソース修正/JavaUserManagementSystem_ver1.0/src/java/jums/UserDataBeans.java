/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;

import java.sql.Timestamp;


/**
 *フォームから受け取ったデータ自体を格納できるJavaBeans
 * @author 1999itukinao
 */
public class UserDataBeans {
    private String name;
    private Integer year;
    private Integer month;
    private Integer day;
    private Integer type;
    private String tell;
    private String comment;
    private Timestamp newDate;

    UserDataBeans() {
    }
    
    public String getName() {
        return name;
    } 
    public void setName(String name) {
        this.name = name;
    } 
    
    public Integer getYear() {
        return year;
    } 
    public void setYear(int year) {
        this.year = year;
    } 
    
    public Integer getMonth() {
        return month;
    } 
    public void setMonth(int month) {
        this.month = month;
    } 
    
    public Integer getDay() {
        return day;
    } 
    public void setDay(int day) {
        this.day = day;
    } 

    public Integer getType() {
        return type;
    } 
    public void setType(int type){
        this.type = type;
    }
    
    public String getTell() {
        return tell;
    }
    public void setTell(String tell){
        this.tell = tell;
    }
    
    public String getComment() {
        return comment;
    } 
    public void setComment(String comment){
        this.comment = comment;
    }
    
    public Timestamp getNewDate() {
        return newDate;
    } 
    public void setNewDate(Timestamp newDate) {
        this.newDate = newDate;
    }
}
