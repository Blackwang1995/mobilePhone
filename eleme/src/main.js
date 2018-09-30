import Vue from 'vue'
import App from './App.vue'
//加载路由模块
import router from './router'
//1.1 加载模块 vueresource(发送ajax请求)
import VueResource from 'vue-resource'
import MintUI from 'mint-ui'
Vue.use(MintUI)
//1.2 将VueResource注册vue
Vue.use(VueResource);
import Vuex from "vuex"
Vue.use(Vuex)
//1.2.1 设置请求根路径(服务器地址)
Vue.http.options.root = "http://127.0.0.1:3000/";
//1.2.2 创建全局过滤器
Vue.filter("datetimeFilter",function(val){
    var date=new Date(val);
    var y=date.getFullYear();
    var m=date.getMonth()+1;
    m<10&&(m="0"+m);
    var d=date.getDate();
    d<10&&(d="0"+d);
    var h=date.getHours();
    h>12&&(h-=12);
    h<10&&(h="0"+h);
    var M=date.getMinutes();
    M<10&&(M="0"+M);
    return  `${y}-${m}-${d} ${h}:${M}`
})
//1.3将Mintui加载项目

//1.4按需引入组件Header  顶部固定导航栏
// import {Header,Swipe,SwipeItem,Button,Lazyload} from "mint-ui"
// //1.5注册组件
// Vue.component(Header.name,Header)//注册header
// Vue.component(Swipe.name,Swipe)//注册swipe
// Vue.component(SwipeItem.name,SwipeItem)//注册swipeitem
// Vue.component(Button.name,Button)
// Vue.component(Lazyload)

//1.6引入mui css js fonts
import "./lib/mui/css/mui.css"
import "./lib/mui/css/icons-extra.css"
import "mint-ui/lib/style.css"
import "./lib/mui/js/jquery-3.2.1"
//2.是否是生产模式false
Vue.config.productionTip = false


//3.创建vue实现对象挂载public/index.html#app
new Vue({
    router,
    render: h => h(App)
}).$mount('#app')
/*
var store = new Vuex.Store({
  state:{count:0},//购物车中共享数据
  mutations:{   //vue  methods
    increment(state){
      state.count++;
    },
    subtract(state){
      state.count--;
    }
  },
  getters:{
    optCount:function(state){
      return state.count;
    }
  }
})

this.$store.commit("increment");
this.$store.commit("substract");
//<h1>{{$store.getters.optCount}}</h1>*/