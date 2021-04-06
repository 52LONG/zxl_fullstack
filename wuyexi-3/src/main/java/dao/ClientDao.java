package dao;

import model.Client;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClientDao {
    public Client SelectOne(@Param("client") String client);

    public List<Client> SelectAll();

    public Boolean InsertOne(Client client);

    public Boolean DeleteOne(@Param("client") String client);

    public Boolean UpdateOne(@Param("clientcode") String client_code,@Param("clientnewcode") String client_newcode,@Param("clientname") String client_name);
}
