package dao;

import model.Item;
import model.ItemUsage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ItemUsageDao {

    public ItemUsage SelectOne(@Param("itemusage") String itemusage);

    public List<ItemUsage> SelectAll();

    public Boolean InsertOne(ItemUsage itemUsage);

    public Boolean DeleteOne(@Param("itemusage") String itemusage);

    public Boolean UpdateOne(ItemUsage itemusage);

}