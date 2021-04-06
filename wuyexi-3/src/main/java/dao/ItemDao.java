package dao;

import model.Item;
import model.Region;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ItemDao {

    public Item SelectOne(@Param("item") String item);

    public List<Item> SelectByRegion(@Param("item") String item);

    public List<Item> SelectAll();

    public Boolean InsertOne(Item item);

    public Boolean DeleteOne(@Param("item") String item);

    public Boolean UpdateOne(Item item);

    public List<Item> SelectAll_Can_Use();

}