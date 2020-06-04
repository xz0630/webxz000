package com.cykj.Test;

import com.cykj.entity.Admin;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class Test {
    public static void main(String[] args) {
        String config = "SqlMapConfig.xml";
        SqlSession sqlSession=null;
        try {
            InputStream inputStream = Resources.getResourceAsStream(config);
            SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
            sqlSession = sqlSessionFactory.openSession();
            Admin admin=new Admin();
            //登录
            admin.setAcount("admin");
            admin.setPass("123");
            Admin adminlog=sqlSession.selectOne("adminSpace.login",admin);
            if(adminlog!=null){
                System.out.println("登录成功");

            }
            System.out.println(adminlog);
//            添加
//            Admin admin=new Admin();
//            admin.setAcount("admin2");
//            admin.setPass("123");
//            admin.setName("肖祯");
//            int res=sqlSession.insert("adminSpace.add",admin);
//            if(res>0){
//                System.out.println("添加成功");
//            }else {
//                System.out.println("添加失败");
//            }
////            查询全部
//            List<Admin> adminList=sqlSession.selectList("adminSpace.query");
//            System.out.println("adminList:"+adminList);
//            sqlSession.commit();
        } catch (IOException e) {
            sqlSession.rollback();
            e.printStackTrace();
        }

    }
}
