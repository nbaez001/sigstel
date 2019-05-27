/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.da;

import java.io.IOException;
import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 *
 * @author VICTOR
 */
public class MyBatisUtil {
    private final String resource="pe/gob/munihuamanga/sigstel/da/mybatis-config.xml";
    private SqlSession session=null;
    
    public SqlSession getSession(){
        try {
            Reader reader = Resources.getResourceAsReader(resource);
            SqlSessionFactory sqlMapper=new SqlSessionFactoryBuilder().build(reader);
            session = sqlMapper.openSession();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return session;
    }
}