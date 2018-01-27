import com.task.dao.PersistentLoginsMapper;
import com.task.dao.UserMapper;
import com.task.model.User;
import com.task.service.PersistentLoginsService;
import com.task.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:context/applicationContext.xml")
public class tastA {

    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    UserService userService;

    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    PersistentLoginsService persistentLoginsService;

    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    UserMapper userMapper;


    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    PersistentLoginsMapper persistentLoginsMapper;

    @Test
    public void a(){

        User a=new User();
        a.setName("root");
        a.setPassword("123456");
        a.setEmail("123@qq.com");
        userMapper.addUser(a);

    }

}
