// miniprogram/pages/category/category.js
Page({

  /**
   * 页面的初始数据
   */
  // data: {
  //   activeKey: 0,
  // },
  data: {
    active:0,
    currentTab:0
  },
  // 去详情页 
  tapToDetail(e) {
    const id = e.currentTarget.dataset.fid;
    console.log(id);
    wx.navigateTo({
      url: '/pages/detail/detail?_id='+id,
    })
  },
  typeSwitch(e) {
    this.setData({
      activeTypeId: e.currentTarget.dataset.id
    })
  },


  switchNav: function (e) {
    var page = this;
    var id = e.target.id;
    if (this.data.currentTab == id) {
      return false;
    } else {
      page.setData({
        currentTab: id
      });
    }
    page.setData({
      active: id
    });
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})