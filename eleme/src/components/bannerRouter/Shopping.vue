<template>
    <div class="app">
         <mt-header fixed title="商超便利">
            <router-link to="/" slot="left">
                <mt-button icon="back">返回</mt-button>
            </router-link>
        </mt-header>
        <div class="delicious-banner">
        </div>
        <div class="floor">
            <mt-loadmore :bottom-method="loadBottom"  @bottom-status-change="handleBottomChange" ref="loadmore" :auto-fill="false"> 
            <div class="delicious">
                <ul class="mui-table-view">
                    <li class="mui-table-view-cell mui-media" v-for="s in merchantlist" :key="s.id">
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
                </ul>
            </div>  
            </mt-loadmore>
        </div>
        <div class="app-cart">
            <span class="mui-icon-extra mui-icon-extra-cart"></span>
        </div>
    </div>
</template>

<script>
    import {Toast} from 'mint-ui'
    import {Loadmore} from 'mint-ui'
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
            handleBottomChange(){
                this.bottomShow = status;
            },
            loadBottom(){
                if(this.pno<=2){
                this.pno ++;
                this.getMerchantList();
                }else{
                    Toast("没有更多的数据了");
                }
               
                setTimeout(()=>{
                     this.$refs.loadmore.onBottomLoaded();
                },500); 
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
            }
        },
        components:{
            'mt-loadmore':Loadmore
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
    .app .delicious .mui-table-view{
        height:578px;
        overflow-y:scroll;
    }
    .app .floor .delicious .mui-table-view-cell{
        padding:11px 15px;
    }
</style>