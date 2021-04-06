package dao;

import model.Purpose;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PurposeDao {
    public Boolean InsertOne(Purpose purpose);

    public List<Purpose> SelectAll();

    public Purpose SelectOne(@Param("purpose") String purpose);

    public Boolean UpdateOne(@Param("p1") String purpose_oldcode, @Param("p3") String purpose_name);

    public Boolean DelectOne(@Param("purpose") String purpose);
}