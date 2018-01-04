package com.neuedu.lei;

/**
 * Created by ttc on 18-1-4.
 */
public class order {
   private String orderId;
    private  String goodsId;
    private   String goodsState;
    private String sendAddress;
    private String orderCreateTime;
    private String receiver;
    private String goodsName;
    private String goodsIntroduce;
    private   String goodsColor;
    private String goodsSize;
    private float goodsPrice;
    private int goodsAmount;
    private String phone;

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public void setGoodsState(String goodsState) {
        this.goodsState = goodsState;
    }

    public void setSendAddress(String sendAddress) {
        this.sendAddress = sendAddress;
    }

    public void setOrderCreateTime(String orderCreateTime) {
        this.orderCreateTime = orderCreateTime;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public void setGoodsIntroduce(String goodsIntroduce) {
        this.goodsIntroduce = goodsIntroduce;
    }

    public void setGoodsColor(String goodsColor) {
        this.goodsColor = goodsColor;
    }

    public void setGoodsSize(String goodsSize) {
        this.goodsSize = goodsSize;
    }

    public void setGoodsPrice(float goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public void setGoodsAmount(int goodsAmount) {
        this.goodsAmount = goodsAmount;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getOrderId() {
        return orderId;
    }

    public String getGoodsId() {
        return goodsId;
    }

    public String getGoodsState() {
        return goodsState;
    }

    public String getSendAddress() {
        return sendAddress;
    }

    public String getOrderCreateTime() {
        return orderCreateTime;
    }

    public String getReceiver() {
        return receiver;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public String getGoodsIntroduce() {
        return goodsIntroduce;
    }

    public String getGoodsColor() {
        return goodsColor;
    }

    public String getGoodsSize() {
        return goodsSize;
    }

    public float getGoodsPrice() {
        return goodsPrice;
    }

    public int getGoodsAmount() {
        return goodsAmount;
    }

    public String getPhone() {
        return phone;
    }
}
