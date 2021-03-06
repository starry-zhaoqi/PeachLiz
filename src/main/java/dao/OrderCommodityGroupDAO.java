package dao;

import model.OrderCommodityGroup;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public interface OrderCommodityGroupDAO {
    List<OrderCommodityGroup> getSqlidorderCommodityGroup(int idorder) throws Exception;

    void setidorderCommodityGroupList(List<OrderCommodityGroup> orderCommodityGroupList) throws SQLException;
    void setidorderCommodityGroupListBack(List<OrderCommodityGroup> orderCommodityGroupList, Connection connection) throws SQLException;

}
