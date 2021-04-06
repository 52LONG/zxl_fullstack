package dao;

import model.Item;
import model.ItemUsepartment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ItemUsepartmentDao {

    public ItemUsepartment SelectOne(@Param("itemusedepartment") String itemusedepartment);

    public List<ItemUsepartment> SelectAll();

    public Boolean InsertOne(ItemUsepartment itemusedepartment);

    public Boolean DeleteOne(@Param("itemusedepartment") String itemusedepartment);

    public Boolean UpdateOne(ItemUsepartment itemusedepartment);
}