package com.task.service.impl;

import com.task.dao.CategoryMapper;
import com.task.model.Category;
import com.task.model.Category_;
import com.task.service.CategoryService;
import com.task.units.AppMD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl  implements CategoryService {
    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    CategoryMapper categoryMapper;


    public List<Category> list(){
        return categoryMapper.list();
    }
    public int listState(){return categoryMapper.listState();}
    public int listStateLs(){return categoryMapper.listStateLs();}
    public int listStateAlready(){return categoryMapper.listStateAlready();}
    public List<Category> listStateAll(){return categoryMapper.listStateAll();}
    public List<Category_> listOcc(){ return categoryMapper.listOcc(); }
    public int listOccDir(Category category){return categoryMapper.listOccDir(category);}
    public List<Category_> listOccId(int id){return categoryMapper.listOccId(id);}
    public int listOccDirAll(Category category){return categoryMapper.listOccDirAll(category);}



    public int listOccDir1(Category category){return categoryMapper.listOccDir1(category);}
    public int listOccDir2(Category category){return categoryMapper.listOccDir2(category);}
    public int listOccDir3(Category category){return categoryMapper.listOccDir3(category);}
    public int listOccDir4(){return categoryMapper.listOccDir4();}
    public int listOccDir5(Category category){return categoryMapper.listOccDir5(category);}
    public int listOccDir6(Category category){return categoryMapper.listOccDir6(category);}
    public int listOccDir7(){return categoryMapper.listOccDir7();}
    public int listOccDir8(){return categoryMapper.listOccDir8();}
    public int listOccDir9(){return categoryMapper.listOccDir9();}


}