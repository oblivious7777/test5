package com.task.service;


import com.task.model.Category;
import com.task.model.Category_;

import java.util.List;

public interface CategoryService {
    List<Category> list();

    public int listState();

    public int listStateLs();

    public int listStateAlready();

    public List<Category> listStateAll();

    public List<Category_> listOcc();

    public int listOccDir(Category category);

    public List<Category_> listOccId(int id);

    public int listOccDirAll(Category category);


    public int listOccDir1(Category category);

    public int listOccDir2(Category category);

    public int listOccDir3(Category category);

    public int listOccDir4();

    public int listOccDir5(Category category);

    public int listOccDir6(Category category);

    public int listOccDir7();

    public int listOccDir8();

    public int listOccDir9();


}

