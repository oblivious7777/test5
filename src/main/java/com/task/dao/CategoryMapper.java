package com.task.dao;

import com.task.model.Category;
import com.task.model.Category_;
import com.task.units.CategoryDynaSqlProvider;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;

import java.util.List;

public interface CategoryMapper {
    @Select("select * from   student")
    public List<Category> list();//查询学生表

    @Select("select count(*) from student")
    public int listState();//select总数

    @Select("select count(*) from student where state=1")
    public int listStateLs();//在学总数

    @Select("select count(*) from student where state=2")
    public int listStateAlready();//结业总数

    @Select("select * from student where state=2")
    public List<Category> listStateAll();//结业名单

    @Select("select count(*) from   student where direction =#{direction}  and  occupation =#{occupation}")
    public int listOccDir(Category category);//查询职业人数

    @Select("select * from   occupation")
    public List<Category_> listOcc();//查询职业表

    @Select("select * from   occupation where id = #{id}")
    public List<Category_> listOccId(int id);//按id查询


    @SelectProvider(type=CategoryDynaSqlProvider.class,method="listOccDirAll")
    public int listOccDirAll(Category category);//动态sql语句


    /////////////////////////////////////////////////
    @Select("select count(*) from   student where direction = \"前端\"  and  occupation =#{occupation}")
    public int listOccDir1(Category category);//查询职业人数

    @Select("select count(*) from   student where direction =#{direction}  and  occupation =\"web\"")
    public int listOccDir2(Category category);//查询职业人数


    @Select("select count(*) from   student where direction =\"前端\"  and  occupation =\"web\"")
    public int listOccDir3(Category category);//查询职业人数

    @Select("select count(*) from   student where direction =\"前端\"  and  occupation =\"web\"")
    public int listOccDir4();//查询职业人数

    @Select("select count(*) from   student where direction =\"前端\"  ")
    public int listOccDir5(Category category);//查询职业人数

    @Select("select count(*) from   student where  occupation =\"web\"")
    public int listOccDir6(Category category);//查询职业人数

    @Select("select count(*) from   student where direction =\"前端\"  ")
    public int listOccDir7();//查询职业人数

    @Select("select count(*) from   student where  occupation =\"web\"")
    public int listOccDir8();//查询职业人数

    @Select("select count(*) from   student where  id =1")
    public int listOccDir9();//查询职业人数





}