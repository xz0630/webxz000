package com.cykj.entity;


public class AdminLevel {

  private int id;
  private String acount;
  private String integral;
  private String level;

  public AdminLevel() {
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

  public String getIntegral() {
    return integral;
  }

  public void setIntegral(String integral) {
    this.integral = integral;
  }

  public String getLevel() {
    return level;
  }

  public void setLevel(String level) {
    this.level = level;
  }

  @Override
  public String toString() {
    return "Admin{" +
            "id=" + id +
            ", acount='" + acount + '\'' +
            ", integral='" + integral + '\'' +
            ", level='" + level + '\'' +
            '}';
  }
}
