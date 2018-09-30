new Vue({
    el:"#app",
    data:function(){
      return {
        msg:"ok",
        list:[
        "img/banner1.png",
        "img/banner2.png",
        "img/banner3.png",
        "img/banner4.png"]
      }
    },
    methods:{
       show(){
         console.log("show()");
       }
    }
  })