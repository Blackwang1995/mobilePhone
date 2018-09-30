<template>
    <div class="order">
        <mt-header fixed title="订单">
            <router-link to="/" slot="left">
                <mt-button icon="back">返回</mt-button>
            </router-link>
        </mt-header> 
        <ul class="mui-table-view">
            <li class="mui-table-view-cell mui-media">
                <a href="javascript:;">
                    <img class="mui-media-object mui-pull-left" src="http://172.163.4.84:3000/img/list/firut.png">
                    <div class="mui-media-body">
                        <div>
                            <p>尚品小碗菜 ></p>
                            <p>订单已送达</p>
                        </div>
                        <p class='mui-ellipsis'>2018-08-30 11:25</p>
                        <hr>
                        <div>
                            <p>孜然肥牛盖饭</p>
                            <p class="order-price">¥13.50</p>
                        </div>                     
                    </div>
                </a>
                <hr>
                <div class="again-parent">
                    <p class="again">
                        <a href="#">再来一单</a>
                    </p>
                </div>              
            </li>
        </ul>
        <ul class="mui-table-view">
            <li class="mui-table-view-cell mui-media">
                <a href="javascript:;">
                    <img class="mui-media-object mui-pull-left" src="http://172.163.4.84:3000/img/list/firut.png">
                    <div class="mui-media-body">
                        <div>
                            <p>尚品小碗菜 ></p>
                            <p>订单已送达</p>
                        </div>
                        <p class='mui-ellipsis'>2018-08-30 11:25</p>
                        <hr>
                        <div>
                            <p>孜然肥牛盖饭</p>
                            <p class="order-price">¥13.50</p>
                        </div>                     
                    </div>
                </a>
                <hr>
                <div class="again-parent">
                    <p class="again">
                        <a href="#">再来一单</a>
                    </p>
                </div>              
            </li>
        </ul>
        <ul class="mui-table-view">
            <li class="mui-table-view-cell mui-media">
                <a href="javascript:;">
                    <img class="mui-media-object mui-pull-left" src="http://172.163.4.84:3000/img/list/firut.png">
                    <div class="mui-media-body">
                        <div>
                            <p>尚品小碗菜 ></p>
                            <p>订单已送达</p>
                        </div>
                        <p class='mui-ellipsis'>2018-08-30 11:25</p>
                        <hr>
                        <div>
                            <p>孜然肥牛盖饭</p>
                            <p class="order-price">¥13.50</p>
                        </div>                     
                    </div>
                </a>
                <hr>
                <div class="again-parent">
                    <p class="again">
                        <a href="#">再来一单</a>
                    </p>
                </div>              
            </li>
        </ul>
        <ul class="mui-table-view">
            <li class="mui-table-view-cell mui-media">
                <a href="javascript:;">
                    <img class="mui-media-object mui-pull-left" src="http://172.163.4.84:3000/img/list/firut.png">
                    <div class="mui-media-body">
                        <div>
                            <p>尚品小碗菜 ></p>
                            <p>订单已送达</p>
                        </div>
                        <p class='mui-ellipsis'>2018-08-30 11:25</p>
                        <hr>
                        <div>
                            <p>孜然肥牛盖饭</p>
                            <p class="order-price">¥13.50</p>
                        </div>                     
                    </div>
                </a>
                <hr>
                <div class="again-parent">
                    <p class="again">
                        <a href="#">再来一单</a>
                    </p>
                </div>              
            </li>
        </ul>
        <ul class="mui-table-view">
            <li class="mui-table-view-cell mui-media">
                <a href="javascript:;">
                    <img class="mui-media-object mui-pull-left" src="http://172.163.4.84:3000/img/list/firut.png">
                    <div class="mui-media-body">
                        <div>
                            <p>尚品小碗菜 ></p>
                            <p>订单已送达</p>
                        </div>
                        <p class='mui-ellipsis'>2018-08-30 11:25</p>
                        <hr>
                        <div>
                            <p>孜然肥牛盖饭</p>
                            <p class="order-price">¥13.50</p>
                        </div>                     
                    </div>
                </a>
                <hr>
                <div class="again-parent">
                    <p class="again">
                        <a href="#">再来一单</a>
                    </p>
                </div>              
            </li>
        </ul>
        <ul class="mui-table-view">
            <li class="mui-table-view-cell mui-media">
                <a href="javascript:;">
                    <img class="mui-media-object mui-pull-left" src="http://172.163.4.84:3000/img/list/firut.png">
                    <div class="mui-media-body">
                        <div>
                            <p>尚品小碗菜 ></p>
                            <p>订单已送达</p>
                        </div>
                        <p class='mui-ellipsis'>2018-08-30 11:25</p>
                        <hr>
                        <div>
                            <p>孜然肥牛盖饭</p>
                            <p class="order-price">¥13.50</p>
                        </div>                     
                    </div>
                </a>
                <hr>
                <div class="again-parent">
                    <p class="again">
                        <a href="#">再来一单</a>
                    </p>
                </div>              
            </li>
        </ul>
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
    .mui-media-body>div{
        display:flex;
        flex-wrap:wrap;
        justify-content:space-between;
    }
    .order .mui-table-view{
        margin-top:10px;
    }
    .order-price{
        font-weight:bold;
        color:#000;
    }
    .order .mui-table-view .again-parent{
      float:right;
    }
    .order .mui-table-view .again-parent .again{
        border:1px solid #007aff;
        width:60px;
        text-align:center;
    }
</style>