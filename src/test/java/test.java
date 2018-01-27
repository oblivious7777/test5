import com.task.dao.PersistentLoginsMapper;
import com.task.dao.UserMapper;
import com.task.model.PersistentLogins;
import com.task.model.User;
import com.task.service.PersistentLoginsService;
import com.task.service.UserService;
import com.task.units.AppMD5Util;
import com.task.units.unit;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.security.SecureRandom;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:context/applicationContext.xml")
public class test {

    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
   UserMapper userMapper;


    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    PersistentLoginsMapper persistentLoginsMapper;


    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    UserService userService;

    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    PersistentLoginsService persistentLoginsService;


    @Test
    public void a(){
        List<User> a=userMapper.list();
        for(User b : a){
            System.out.println(b.toString());
        }
    }

    @Test
    public void b(){
        List<PersistentLogins> a=persistentLoginsMapper.list();
        for(PersistentLogins b : a){
            System.out.println(b.toString());
        }
    }



    @Test
    public void c(){
        List<User> a=userService.list();
        for(User b : a){
            System.out.println(b.toString());
        }
    }

    @Test
    public void d(){
        List<PersistentLogins> a=persistentLoginsService.list();
        for(PersistentLogins b : a) {
            System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+b.toString());

        }

    }


    @Test
    public void a1(){

    }


    @Test
    public void time(){

        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.MONTH, 1); // 一个月
        Date validTime = calendar.getTime();
        // 精确到分的时间字符串
        String timeString = calendar.get(Calendar.YEAR) + "-" + calendar.get(Calendar.MONTH) + "-"
                + calendar.get(Calendar.DAY_OF_MONTH) + "-" + calendar.get(Calendar.HOUR_OF_DAY) + "-"
                + calendar.get(Calendar.MINUTE);


        System.out.println("111111111111111111111111111"+validTime);
        System.out.println("222222222222222222222222222"+timeString);
    }


    @Test
    public void a3(){

        User k=new User();
        k.setName("test");
        System.out.println(userMapper.getUserFromName(k).toString());


    }


    @Test
    public void a4(){
        User user=new User();
        user.setName("roo");
        User userProofread = userService.getUserFromName(user);
        System.out.println(userProofread.toString());
    }


    @Test
    public void a5(){
        User user=new User();
        user.setName("roo");
        User userProofread = userService.getUserFromName(user);
        System.out.println(userProofread.toString());
    }


    @Test
    public void a6(){


        User user=new User();
        user.setName("a");
        user.setPassword("bb");
         userService.addUser(user);
    }

    @Test
    public void a7(){


            System.out.println(persistentLoginsService.getUserFromName("1111"));

        }



    @Test
    public void a8(){

     System.out.println(persistentLoginsMapper.verifyUserFromtoken("18022ebf229f29412319d420395704e0"));

    }


}
