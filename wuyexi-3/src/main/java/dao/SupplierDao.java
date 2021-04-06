package dao;

import model.Supplier;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SupplierDao {

    public Supplier SelectOne(@Param("supplier") String supplier);

    public List<Supplier> SelectAll();

    public Boolean InsertOne(Supplier supplier);

    public Boolean DeleteOne(@Param("supplier") String supplier);

    public Boolean UpdateOne(@Param("suppliercode") String supplier_code,@Param("suppliernewcode") String supplier_newcode,@Param("suppliername") String supplier_name);
}