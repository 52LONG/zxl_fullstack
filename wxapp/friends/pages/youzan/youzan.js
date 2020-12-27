// pages/youzan/youzan.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
     goods:{
       title:'美国伽力果（约680g/3个）',
       price:2680,
       formaPrice:'',
       remain:19,
       thumb: 'https://img.yzcdn.cn/public_files/2017/10/24/e5a5a02309a41f9f5def56684808d9ae.jpeg',
     },
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad() {
    const {goods} = this.data;
    const formatPrice = '¥${(goods.price / 100).toFixed(2)}';
    this.setData({
      goods: {
        ...goods,
        formatPrice,
      },
    });
  },
  onClickCart() {
    wx.navigateTo({
      url: '/pages/cart/index',
      success: () => {},
      error: () => {
        wx.showToast({
          icon: 'none',
          title: '打开购物车失败',
        });
      },
    });
  },

  onClickUser() {
    wx.navigateTo({
      url: '/pages/user/index',
      success: () => {},
      error: () => {
        wx.showToast({
          icon: 'none',
          title: '打开个人中心失败',
        });
      },
    });
  },

  onClickButton() {
    wx.showToast({
      title: '暂无后续逻辑~',
      icon: 'none',
    });
  },

  sorry() {
    wx.showToast({
      title: '暂无后续逻辑~',
      icon: 'none',
    });
  },
});
