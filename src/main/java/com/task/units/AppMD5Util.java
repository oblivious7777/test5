package com.task.units;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.SecureRandom;

public class AppMD5Util {
    final static String USERKEY = "123456";

    /**
     * 对字符串md5加密(小写+字母)
     *
     * @param str 传入要加密的字符串
     * @return MD5加密后的字符串
     */
    public static String MD5(String str) {
        try {
// 生成一个MD5加密计算摘要
            MessageDigest md = MessageDigest.getInstance("MD5");//返回实现指定摘要算法的 MessageDigest 对象。
            // 计算md5函数
            md.update(str.getBytes());
            //update使用指定的byte更新摘要
            //getBytes函数是将一个字符串转化为一个字节数组byte[]的方法
            // digest()最后确定返回md5 hash值，返回值为8为字符串。因为md5 hash值是16位的hex值，实际上就是8位的字符
            // BigInteger函数则将8位的字符串转换成16位hex值，用字符串来表示；得到字符串形式的hash值
            return new BigInteger(1, md.digest()).toString(16);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] getSALT() {
        SecureRandom a = new SecureRandom();
        return a.generateSeed(1);
    }


    public static String getMD5(String str,String str_) {
        return MD5(MD5(str) +MD5(str_) +USERKEY);
    }
}