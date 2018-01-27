package com.task.service.impl;

import com.task.dao.PersistentLoginsMapper;
import com.task.model.PersistentLogins;
import com.task.model.User;
import com.task.service.PersistentLoginsService;
import com.task.units.AppMD5Util;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PersistentLoginsServiceImpl implements PersistentLoginsService {

    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    PersistentLoginsMapper persistentLoginsMapper;


   public List<PersistentLogins> list(){
        return persistentLoginsMapper.list();
    }


    /**
     *
     * 获得用户输入的数据并加密
     * @param user
     * @return
     */
        public int addPersistent_logins(User user){
           PersistentLogins p=new PersistentLogins();
           p.setUsername(user.getName());
           String a=AppMD5Util.getMD5(user.getName(),user.getPassword());
           System.out.println(a);
           p.setToken(a);
           return persistentLoginsMapper.addPersistent_logins(p);
        }



       public PersistentLogins getUserFromName(String username){
                List<PersistentLogins> getPersistentLogins= persistentLoginsMapper.getUserFromName(username);

           if(getPersistentLogins.size()!=1){
               return  new PersistentLogins();
           }else{
               return getPersistentLogins.get(0);
           }
       }

        public PersistentLogins verifyUserFromName(String username){
            List<PersistentLogins> getPersistentLogins= persistentLoginsMapper.verifyUserFromName(username);

            if(getPersistentLogins.size()!=1){
                return  new PersistentLogins();
            }else{
                return getPersistentLogins.get(0);
            }
        }


      public boolean verifyUserFromtoken(String token) {
          List<PersistentLogins> persistentLogins = persistentLoginsMapper.verifyUserFromtoken(token);
          System.out.println(persistentLogins.size());
          System.out.println(persistentLogins);
          if (persistentLogins.size() != 0) {
              return true;
          } else {
              return false;
          }

      }
    }

