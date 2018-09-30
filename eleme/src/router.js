import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import About from './views/About.vue'
//1.1 加载home组件
import HomeContainer from "./components/tabbar/HomeContainer.vue"
import Find from "./components/tabbar/Find.vue"
import Myself from "./components/tabbar/Myself.vue"
import Order from "./components/tabbar/Order.vue"
import Details from "./components/merchant/Details.vue"
import Delicious from "./components/bannerRouter/Delicious.vue"
import Eat from "./components/bannerRouter/Eat.vue"
import Firut from "./components/bannerRouter/Firut.vue"
import Flower from "./components/bannerRouter/Flower.vue"
import Kitchen from "./components/bannerRouter/Kitchen.vue"
import Noodles from "./components/bannerRouter/Noodles.vue"
import Noontea from "./components/bannerRouter/Noontea.vue"
import Shopping from "./components/bannerRouter/Shopping.vue"
import Smalleat from "./components/bannerRouter/Smalleat.vue"
import Yiliao from "./components/bannerRouter/Yiliao.vue"
import Cart from "./components/cart/Cart.vue"
import Login from "./components/login/Login.vue"
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      redirect: "/home"
    },
    {
      path:'/home',
      component:HomeContainer
    },
    {
      path:'/order',
      component:Order
    },
    {
      path:'/find',
      component:Find
    },
    {
      path:'/myself',
      component:Myself
    },
    {
      path:'/details',
      component:Details
    },
    {
      path:'/delicious',
      component:Delicious
    },
    {
      path:'/eat',
      component:Eat
    },
    {
      path:'/firut',
      component:Firut
    },
    {
      path:'/flower',
      component:Flower
    },
    {
      path:'/kitchen',
      component:Kitchen
    },
    {
      path:'/noodles',
      component:Noodles
    },
    {
      path:'/noontea',
      component:Noontea
    },
    {
      path:'/shopping',
      component:Shopping
    },
    {
      path:'/smalleat',
      component:Smalleat
    },
    {
      path:'/yiliao',
      component:Yiliao
    },
    {
      path:'/cart',
      component:Cart
    },
    {
      path:'/login',
      component:Login
    }
  ]
})
