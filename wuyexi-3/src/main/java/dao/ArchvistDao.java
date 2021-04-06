package dao;

import model.Archvist;
import model.Item;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArchvistDao {
   public Archvist login(String id,String password);

   public Archvist SelectOne(@Param("archvist") String archvist);

   public List<Archvist> SelectAll();

   public Boolean InsertOne(Archvist archvist);

   public Boolean DeleteOne(@Param("archvist") String archvist);

   public Boolean UpdateOne(Archvist archvist);
}