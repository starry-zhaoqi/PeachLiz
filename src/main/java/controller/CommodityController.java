package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;

@Controller
public class CommodityController {

    /**
     * @param commodityAttribute 属性名
     * @param commodityAttributeDetails 属性值
     *
     * 通过某一个属性来查询产品，若属性值为空则查询全部产品。
     * */
    @RequestMapping("/queryCommodity")
    public ModelAndView queryCommodity(String commodityAttribute,String commodityAttributeDetails){
        //todo：上传图片的问题
        try {
            //处理字符串乱码问题
            commodityAttribute= new String(commodityAttribute.getBytes("ISO8859-1"), StandardCharsets.UTF_8);
            commodityAttributeDetails= new String(commodityAttributeDetails.getBytes("ISO8859-1"), StandardCharsets.UTF_8);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        return new ModelAndView();
    }

    @RequestMapping("/addCommodity")
    public ModelAndView addCommodity(String category,String model,String picture,String color,
                                     String topfabric,String underfabric,String factoryprice,
                                     String retailprice,String remark,String status){
        //todo：上传图片的问题
        try {
            //处理字符串乱码问题
            category= new String(category.getBytes("ISO8859-1"), StandardCharsets.UTF_8);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        return new ModelAndView();
    }

    @RequestMapping("/editCommodity")
    public ModelAndView editCommodity(String category,String model,String picture,String color,
                                     String topfabric,String underfabric,String factoryprice,
                                     String retailprice,String remark,String status){
        //todo：上传图片的问题
        try {
            //处理字符串乱码问题
            category= new String(category.getBytes("ISO8859-1"), StandardCharsets.UTF_8);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        return new ModelAndView();
    }

    @RequestMapping("/removeCommodity")
    public ModelAndView removeCommodity(String category,String model,String picture,String color,
                                      String topfabric,String underfabric,String factoryprice,
                                      String retailprice,String remark,String status){
        //todo：上传图片的问题
        try {
            //处理字符串乱码问题
            category= new String(category.getBytes("ISO8859-1"), StandardCharsets.UTF_8);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        return new ModelAndView();
    }

}
