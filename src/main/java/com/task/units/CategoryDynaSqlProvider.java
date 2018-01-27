package com.task.units;

import org.apache.ibatis.jdbc.SQL;

public class CategoryDynaSqlProvider {
    public String list() {
        return new SQL()
                .SELECT("*")
                .FROM("student")
                .toString();
    }
    public String listOccDirAll(){
        return new SQL()
                .SELECT("count(*)")
                .FROM("student")
                .WHERE("direction =#{direction}  and  occupation =#{occupation}")
                .toString();
    }
}
