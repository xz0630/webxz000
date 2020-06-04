package com.cykj.entity;


public class Admin {

  private int id;
  private String acount;
  private String name;
  private String pass;

  public Admin() {
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }


  public String getAcount() {
    return acount;
  }

  public void setAcount(String acount) {
    this.acount = acount;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getPass() {
    return pass;
  }

  public void setPass(String pass) {
    this.pass = pass;
  }

  @Override
  public String toString() {
    return "Admin{" +
            "id=" + id +
            ", acount='" + acount + '\'' +
            ", name='" + name + '\'' +
            ", pass='" + pass + '\'' +
            '}';
  }
}
