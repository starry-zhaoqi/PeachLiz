package controller;

import dao.PageModelDAO;
import dao.impl.OrderDAOImpl;
import model.Order;
import model.PageModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;

@Controller
public class OrderController {

    /**
     * @param whereName 属性名
     * @param whereValue 属性值
     * */
    @RequestMapping("/queryOrder")
    public ModelAndView queryOrder(String whereName, String whereValue){
        ModelAndView modelAndView=new ModelAndView();

        if (null==whereValue||"".equals(whereValue)){
            whereValue="%";
        }

        PageModel<Order> pageModel;
        PageModelDAO pageModelDAO=new OrderDAOImpl();

        try {
            pageModel= new PageModel<>(1, pageModelDAO.getTotalRecord(whereName, whereValue), 8);
            pageModel.setWhereName(whereName);
            pageModel.setWhereValue(whereValue);
            pageModel.setList(pageModelDAO.getPageList(whereName,whereValue,pageModel.getIndex(),pageModel.getPageSize()));
            modelAndView.setViewName("order/manage");
            modelAndView.addObject("PageModel",pageModel);
        } catch (Exception e) {
            e.printStackTrace();
            modelAndView.setViewName("error");
            modelAndView.addObject("errormessage",e.getMessage());
        }

        return modelAndView;
    }

    /**
     * @param whereName 属性名
     * @param whereValue 属性值
     * */
    @RequestMapping("/updateOrderPageList")
    public ModelAndView updateOrderPageList(int pageNumber,int totalRecord,int pageSize,String whereName,String whereValue){
        // TODO: 2018/12/6 陈亮  同上面与以前的一样    ·

        PageModelDAO pageModelDAO = new OrderDAOImpl();
        PageModel<Order> pageModel;
        ModelAndView modelAndView=new ModelAndView();
        if (null==whereValue||"".equals(whereValue)){
            whereValue="%";
        }
        try {
            pageModel= new PageModel<>(pageNumber, totalRecord, pageSize);
            pageModel.setWhereName(whereName);
            pageModel.setWhereValue(whereValue);
            pageModel.setList(pageModelDAO.getPageList(pageModel.getWhereName(), pageModel.getWhereValue(), pageModel.getIndex(),pageModel.getPageSize()));
            modelAndView.setViewName("commodity/manage");
            modelAndView.addObject("PageModel",pageModel);
        } catch (Exception e) {
            e.printStackTrace();
            modelAndView.setViewName("error");
            modelAndView.addObject("errormessage",e.getMessage());
        }

        return modelAndView;
    }
}
