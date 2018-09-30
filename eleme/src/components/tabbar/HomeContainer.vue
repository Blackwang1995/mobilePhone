<template>
    <div class="app">
         <mt-header fixed class="header-container" title="饿了么"></mt-header>
            <div class="mui-content-padded" style="margin: 5px;">
                <div class="mui-input-row mui-search">
                    <input type="search" class="mui-input-clear" placeholder="搜索">
                </div>
            </div>
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3" v-for="item in bannerlist" :id="item.id">
                <router-link :to="item.router_link">
                    <span class="mui-icon">
                    <img :src="item.img_url">
                    </span>
                    <div class="mui-media-body">{{item.title}}</div>
                </router-link>
            </li>
           <!-- <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <a>
                <span class="mui-icon">
                <img src="../../../public/img/list/shopping.png">
                </span>
                    <div class="mui-media-body">商超便利</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <a>
            <span class="mui-icon ">
                <img src="../../../public/img/list/firut.png">
            </span>
                    <div class="mui-media-body">水果</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <a href="#">
                <span class="mui-icon ">
                    <img src="../../../public/img/list/noontea.png">
                </span>
                    <div class="mui-media-body">下午茶</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <a href="#">
                <span class="mui-icon ">
                    <img src="../../../public/img/list/yiliao.png">
                </span>
                <div class="mui-media-body">医药健康</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <a href="#">
                <span class="mui-icon ">
                    <img src="../../../public/img/list/flower.png">
                </span>
                <div class="mui-media-body">浪漫鲜花</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <a href="#">
                <span class="mui-icon ">
                    <img src="../../../public/img/list/kitchen.png">
                </span>
                    <div class="mui-media-body">厨房生鲜</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <a href="#">
                <span class="mui-icon ">
                    <img src="../../../public/img/list/smalleat.png">
                </span>
                    <div class="mui-media-body">地方小吃</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <a href="#">
                <span class="mui-icon ">
                    <img src="../../../public/img/list/eat.png">
                </span>
                    <div class="mui-media-body">地方菜系</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <a href="#">
                <span class="mui-icon ">
                    <img src="../../../public/img/list/noodles.png">
                </span>
                    <div class="mui-media-body">麻辣烫</div>
                </a>
            </li>-->
        </ul>
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="list in imagelist" :id="list.id">
                <img :src="list.img_url" :alt="list.title">
            </mt-swipe-item>
            <!--<mt-swipe-item><img src="../../../public/img/slider/2.png"></mt-swipe-item>
            <mt-swipe-item> <img src="../../../public/img/slider/3.png"></mt-swipe-item>
            <mt-swipe-item> <img src="../../../public/img/slider/4.png"></mt-swipe-item>-->
        </mt-swipe>
        <div class="shangjia">
            — &nbsp;&nbsp;<span>推荐商家</span>&nbsp;&nbsp; —
        </div>
        <div class="floor">    
            <ul class="mui-table-view">
				<li class="mui-table-view-cell mui-media" v-for="s in merchantlist" :id="s.id">
					<div @click="goDetails()">
						<img class="mui-media-object mui-pull-left" :src="s.img_url">
						<div class="mui-media-body">
                            <div class="d1">
                                <h5 style="font-size:13px;font-weight:bold;color:#000;">{{s.title}}</h5>
                                <span style="font-size:8px;color:#8f8f94;">票</span>
                            </div>
                            <div class="d2">
                                <p class='mui-ellipsis'>
                                    <img src="">
                                    <span>{{s.pingfen}}</span>
                                    <span>月售{{s.sale}}单</span>
                                </p>                        
                            </div>
                            <div class="d3">
                                <p>
                                    ¥{{s.dispatching}}起送 | 配送费¥{{s.peisong}}
                                </p>
                                <p>
                                    {{s.distance}}km | {{s.time}}分钟
                                </p>
                            </div>
                            <div class="d4">
                                <p>{{s.type}}</p> 
                            </div>
                            <hr>
                            </div>
                        </div>                
                        <div class="cuxiao">
                            <p>满15减15,满28减17,满48减23,满65减32</p>
                        </div>                         
				</li> 
                 <mt-button size="large" @click="Loadmore">加载更多</mt-button>
			</ul>
          
        </div>
        <div class="app-cart" @click="goCart">
            <span class="mui-icon-extra mui-icon-extra-cart"></span>
        </div>
        <tabbar></tabbar>
    </div>
</template>

<script>
    import {Toast} from 'mint-ui'
    import {Loadmore} from 'mint-ui'
    import tabbar from '../subcomponents/tabbar.vue'
    export default{
        data:function(){
            return{
                bannerlist:[],
                imagelist:[],
                merchantlist:[],
                pno:1,
                pageSize:4    
            }
        },
        created(){
            this.getBannerList();
            this.getImageList();
            this.getMerchantList();
        },
        methods:{ 
            Loadmore(){
                if(this.pno<=2){  
                    this.pno++;  
                    this.getMerchantList();
                }else{
                    Toast("没有更多数据了");
                }
                
            },
            getBannerList(){
                var url = "banner/list";
                this.$http.get(url).then(result=>{
                    if(result.body.code == 1)
                    this.bannerlist = result.body.msg;
                    else
                    Toast("数据加载失败");
                });
            },
            getImageList(){
                var url = "imagelist/list";
                this.$http.get(url).then(result=>{
                    if(result.body.code == 1)
                    this.imagelist = result.body.msg;
                    else
                    Toast("数据加载失败");
                });
            },
            getMerchantList(){
                var pno = this.pno;
                var url = `merchant/list?pno=${pno}`;
                this.$http.get(url).then(result=>{
                    if(result.body.code == 1)
                    this.merchantlist = this.merchantlist.concat(result.body.msg);
                    else
                    Toast("数据加载失败");
                });
            },
            goDetails(){
                this.$router.push({path:"/details"})
            },
            goCart(){
                this.$router.push({path:"/cart"});
            }
        },
       components:{
           "tabbar":tabbar
       }
    }
</script>

<style>
    .app{
        height:105px;
        position:relative;
    }
    .app .app-cart{
        position:fixed;
        top:520px;
        left:330px;
        background-color:#fff;
        border:1px solid #8f8f94;
        border-radius:50%;
        padding:5px;
    }
    .app img{
        width:100%;
    }
    .mui-icon>img{
        width:30px;
        height:30px;
    }
    ul.mui-grid-view.mui-grid-9{
        background-color:#fff;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    ul.mui-grid-view.mui-grid-9>li{
        width:19%;
    }
    .mui-grid-view.mui-grid-9 li.mui-table-view-cell{
        border:0;
        padding:0;
    }
    .mui-table-view.mui-grid-view .mui-table-view-cell div.mui-media-body{
        font-size:12px;
    }
    .shangjia{
        display: flex;
        justify-content: center;
        margin-bottom:10px;
    }
    .shangjia>span{
        font-size:10px;
        color:#000;
    }
    .d1,.d2,.d3{
        display:flex;
        justify-content:space-between;
    }
    .mui-table-view-cell p{
        font-size:12px;
    }
    .mui-table-view-cell p>span:last-child{
        margin-left:10px;
    }
    .app .cuxiao{
        margin-left:52px;
    }
    .app .mui-table-view-cell{
        position:static;
        padding:8px 15px 0px 15px;
    }
    .app .floor{
        height:608px;
        overflow:hidden;
    }
    .app .floor .mui-table-view{
        overflow-y:scroll;
        height:560px;
    }
</style>