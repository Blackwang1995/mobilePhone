<template>
    <div class="myself">
       <mt-header fixed title="我的">
            <router-link to="/" slot="left">
                <mt-button icon="back">返回</mt-button>
            </router-link>
        </mt-header>
        <div class="user">
            <ul class="mui-table-view mui-table-view-chevron dis">
				<li class="mui-table-view-cell mui-media">
					<a class="mui-navigate-right" style="color:#fff;">
						<img class="mui-media-object mui-pull-left" src="http://172.163.4.84:3000/img/list/firut.png">
						<div class="mui-media-body">
							<h5>用户名</h5>
							<p class='mui-ellipsis'>186****1995</p>     
                        </div>
					</a>
				</li>
			</ul>
            <ul class="mui-table-view mui-table-view-chevron">
				<li class="mui-table-view-cell mui-media">
					<router-link class="mui-navigate-right" style="color:#fff;" to="/login">
						<img class="mui-media-object mui-pull-left" src="http://172.163.4.84:3000/img/list/flower.png">
						<div class="mui-media-body">
							<h5>登录/注册</h5>
							<p class='mui-ellipsis'>登陆后享受更多特权</p>     
                        </div>
					</router-link>
				</li>
			</ul>
        </div>
        <div class="myself-list dis">
            <div class="qianbao">
                <span class="money">0.00</span><span>元</span>
                <p>钱包</p>
            </div>
            <div class="hongbao">
                <span class="money">1</span><span>个</span>
                <p>红包</p>
            </div>
            <div class="jinbi">
                <span class="money">25</span><span>个</span>
                <p>金币</p>
            </div>
        </div>
         <div class="myself-list">
            <div class="qianbao">
                
                <p>钱包</p>
            </div>
            <div class="hongbao">
               
                <p>红包</p>
            </div>
            <div class="jinbi">
               
                <p>金币</p>
            </div>
        </div>
        <div class="myself-all">
            <ul class="mui-table-view">
                <li class="mui-table-view-cell mui-media">
                    <a href="javascript:;">
                        <img class="mui-media-object mui-pull-left" src="">
                        <div class="mui-media-body">
                            <p>我的地址</p>
                            <a class="mui-navigate-right"></a>
                        </div>
                    </a>
                </li>
            </ul>
             <ul class="mui-table-view">
                <li class="mui-table-view-cell mui-media">
                    <a href="javascript:;">
                        <img class="mui-media-object mui-pull-left" src="">
                        <div class="mui-media-body">
                            <p>金币商城</p>
                            <a class="mui-navigate-right"></a>
                        </div>
                    </a>
                </li>
            </ul>
            <ul class="mui-table-view">
                <li class="mui-table-view-cell mui-media">
                    <a href="javascript:;">
                        <img class="mui-media-object mui-pull-left" src="">
                        <div class="mui-media-body">
                            <p>分享拿10元现金</p>
                            <a class="mui-navigate-right"></a>
                        </div>
                    </a>
                </li>
            </ul>
            <ul class="mui-table-view">
                <li class="mui-table-view-cell mui-media">
                    <a href="javascript:;">
                        <img class="mui-media-object mui-pull-left" src="">
                        <div class="mui-media-body">
                            <p>我的客服</p>
                            <a class="mui-navigate-right"></a>
                        </div>
                    </a>
                </li>
            </ul>
            <ul class="mui-table-view">
                <li class="mui-table-view-cell mui-media">
                    <a href="javascript:;">
                        <img class="mui-media-object mui-pull-left" src="">
                        <div class="mui-media-body">
                            <p>下载饿了么APP</p>
                            <a class="mui-navigate-right"></a>
                        </div>
                    </a>
                </li>
            </ul>
            <ul class="mui-table-view">
				<li class="mui-table-view-cell mui-media">
					<a href="javascript:;">
						<img class="mui-media-object mui-pull-right" src="">
						<div class="mui-media-body">
							远眺
							<p class='mui-ellipsis'>静静的看这个世界，最后终于疯了</p>
						</div>
					</a>
				</li>
			</ul>   
        </div> 
         <tabbar></tabbar>
    </div>
</template>
<script>
    import tabbar from '../subcomponents/tabbar.vue'
    export default{
        data:function(){
            return{}
        },
        created(){

        },
        methods:{

        },
        components:{
            "tabbar":tabbar
        }
    }
</script>
<style>
    .myself .user .mui-media-body>p{
        color:#fff;
    }
    .myself .user .mui-navigate-right:after, .mui-push-right:after{
        color:#fff;
    }
    .myself .user h5{
        color:#fff;
    }
    .myself .user .mui-table-view-chevron{
       background-color:#26a2ff;
       padding-top:20px;
       padding-bottom:20px;
    }
    .myself .myself-list{
        display:flex;
        justify-content:space-between;
        height:70px;
    }
    .myself .myself-list .qianbao,.myself .myself-list .hongbao,.myself .myself-list .jinbi{
        text-align:center;
        padding-top:15px;
        width:33%;
    }
    .myself .myself-list .qianbao>span{
        color:#26a2ff;
        font-size:12px;
    }
    .myself .myself-list .qianbao .money{
        font-size:30px;
    }
    .myself .myself-list .qianbao>p,.myself .myself-list .hongbao>p,.myself .myself-list .jinbi>p{
        color:#000;
        font-size:12px;
    }
   .myself .myself-list .hongbao .money,.myself .myself-list .jinbi .money{
       font-size:30px;
   }
   .myself .myself-list .hongbao>span{
       color:red;
       font-size:12px;
   }
   .myself .myself-list .jinbi>span{
       color:green;
       font-size:12px;
   }
    .myself .myself-list{
        border-bottom:1px solid #9a9a9a;
        margin:0;
    }
   .myself-list .hongbao{
       border-left:1px solid #9a9a9a;
       border-right:1px solid  #9a9a9a; 
   }
   .myself .myself-all .mui-media-body{
       display:flex;
       justify-content:space-between;
   }
    .myself .mui-navigate-right:after, .mui-push-right:after{
      top:20px;
      right:15px;
      contnet:'\E583';
    }
   .myself .myself-all .mui-table-view{
       height:40px;
       margin-top:10px;
   }
   .myself .user .mui-navigate-right:after, .mui-push-right:after{
       top:30px;
       right:15px;
   }
   .myself .dis{
       display:none;
   }
</style>