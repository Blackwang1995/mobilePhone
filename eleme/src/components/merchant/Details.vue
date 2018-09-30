<template>
    <div class="order">
        <div class="order-top">
            <mt-header class="order-title">
                <router-link to="/" slot="left">
                    <mt-button icon="back"></mt-button>
                </router-link>
            </mt-header> 
            <div class="logo"></div>
        </div>
        <div class="order-info">
            <div class="order-jianjie">
            <h4>巨饿便当(杨家厂路二店)</h4>  
            <p>评价4.8 月售2941单 蜂鸟专送约25分钟</p>  
            </div>
            <div class="order-youhui" @click="handleClick">
                <p>满30减5，满60减10</p>
                <p>10个优惠</p>
                <span style="width:0px;height:0px;border-top:4px solid #8f8f94;border-left:4px solid transparent;border-right:4px solid transparent;margin-left:-100px;margin-top:7px"></span>
                
            </div>
            <mt-popup v-model="popupVisible" position="bottom" style="height:40%;width:100%;background:rgb(242,242,246);">
                <div class="pop-top">
                    <p style="color:#000;text-align:center;padding-top:10px;">优惠活动</p>
                </div>
                <div class="pop-bottom">
                    <div class="pop-scroll">
                        <p>满39减20</p>
                        <p>苹果一个2.5元</p>
                        <p>新用户下单立减15元(不与其它活动共享)</p>
                        <p>精选香蕉500g 4.9元</p>
                        <p>精瘦肉250g 8.6元</p>
                        <p>新鲜西虹市500g 4.9元</p>
                        <p>精选大米500g 4.2元</p>
                        <p>冬瓜约500g 3.6元</p>
                        <p>切片南瓜 约500g 2.99元</p>
                        <p>空心菜 300g 2.99元</p>
                        <p>鸡蛋2元1个</p>
                    </div>
                </div>
            </mt-popup>
            <div class="gonggao">
                公告：重要通知！我店已经上线电子票据，POS小票上已经...
            </div>
        </div>
        <div class="nav">
            <div @click="active = 'tab-container1'" class="nav-active change">点餐</div>
            <div @click="active = 'tab-container2'" class="change">评价</div>
            <div @click="active = 'tab-container3'" class="change">商家</div>
        </div>
        <hr>
        <div class="page-tab-container" style="height:500px;">
            <mt-tab-container v-model="active">
                <mt-tab-container-item id="tab-container1">
                    <div class="order-img">
                        <img src="http://172.163.4.84:3000/img/slider/1.png">
                    </div>
                    <h5>商家推荐</h5>
                    <div class="tab-container1">
                     <div class="mui-card">
                        <div class="mui-card-header mui-card-media" style="height:30vw;background-image:url()"></div>
                        <div class="mui-card-content">
                            <div class="mui-card-content-inner">
                                <p style="color: #333;">红烧大排骨+照烧鸡腿</p>
                                <p>月售9999 好评率100%</p>				
                            </div>
                        </div>
                        <div class="mui-card-footer">
                            <div>¥49.6<span>起</span></div>
                            <div class="mui-icon mui-icon-plus"></div>
				        </div>
			         </div>
                     <div class="mui-card">
                        <div class="mui-card-header mui-card-media" style="height:30vw;background-image:url()"></div>
                        <div class="mui-card-content">
                            <div class="mui-card-content-inner">
                                <p style="color: #333;">红烧大排骨+照烧鸡腿</p>
                                <p>月售9999 好评率100%</p>				
                            </div>
                        </div>
                        <div class="mui-card-footer">
                            <div>¥49.6<span>起</span></div>
                            <div class="mui-icon mui-icon-plus"></div>
				        </div>
			         </div>
                     <div class="mui-card">
                        <div class="mui-card-header mui-card-media" style="height:30vw;background-image:url()"></div>
                        <div class="mui-card-content">
                            <div class="mui-card-content-inner">
                                <p style="color: #333;">红烧大排骨+照烧鸡腿</p>
                                <p>月售9999 好评率100%</p>				
                            </div>
                        </div>
                        <div class="mui-card-footer">
                            <div>¥49.6<span>起</span></div>
                            <div class="mui-icon mui-icon-plus"></div>
				        </div>
			         </div>    
                    </div>
                    <div class="details-list">
                        <div class="list-left-wai">
                             <div class="list-left">
                                <div class="background-active" @click="activeList='rexiao'"><p>热销</p></div>
                                <div @click="activeList='youhui'"><p>优惠</p></div>
                                <div @click="activeList='bimai'"><p>进店必买</p></div>
                                <div @click="activeList='classic'"><p>经典</p></div>
                                <div @click="activeList='zhekou'"><p>折扣</p></div>
                                <div @click="activeList='a1'"><p>经典烤肉拌饭</p></div>
                                <div @click="activeList='a2'"><p>秘制鸡排烤肉双拼饭</p></div>
                                <div @click="activeList='a3'"><p>烤肉拌饭套餐A</p></div>
                                <div @click=""><p>烤肉拌饭套餐B</p></div>
                                <div @click=""><p>超值双人套餐</p></div>
                                <div @click=""><p>圣诞尊享双人餐</p></div>
                                <div @click=""><p>饮品</p></div>
                                <div @click=""><p>添加米饭点这里</p></div>
                                <div @click=""><p>配餐 单点不配送</p></div>
                            </div>
                        </div>
                       <div class="list-right">
                        <mt-tab-container v-model="activeList">
                            <mt-tab-container-item id="rexiao">
                                <div style="display:flex;">
                                    <p style="color:#000;font-weight:bold;">热销</p>
                                    <p style="font-size:12px;margin-left:5px;">大家喜欢吃，才叫真好吃</p>
                                </div>   
                                <div class="right-media">
                                    <ul class="mui-table-view">
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                         <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </mt-tab-container-item>
                            <mt-tab-container-item id="youhui">
                                 <div style="display:flex;">
                                    <p style="color:#000;font-weight:bold;">热销</p>
                                    <p style="font-size:12px;margin-left:5px;">大家喜欢吃，才叫真好吃</p>
                                </div>   
                                <div class="right-media">
                                    <ul class="mui-table-view">
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/flower.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                         <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/flower.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/flower.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/flower.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/flower.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/flower.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </mt-tab-container-item>
                            <mt-tab-container-item id="bimai">
                                 <div style="display:flex;">
                                    <p style="color:#000;font-weight:bold;">热销</p>
                                    <p style="font-size:12px;margin-left:5px;">大家喜欢吃，才叫真好吃</p>
                                </div>   
                                <div class="right-media">
                                    <ul class="mui-table-view">
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/eat.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                         <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/eat.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/eat.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/eat.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/eat.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/eat.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </mt-tab-container-item>
                            <mt-tab-container-item id="classic">
                                 <div style="display:flex;">
                                    <p style="color:#000;font-weight:bold;">热销</p>
                                    <p style="font-size:12px;margin-left:5px;">大家喜欢吃，才叫真好吃</p>
                                </div>   
                                <div class="right-media">
                                    <ul class="mui-table-view">
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                         <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </mt-tab-container-item>
                            <mt-tab-container-item id="zhekou">
                                 <div style="display:flex;">
                                    <p style="color:#000;font-weight:bold;">热销</p>
                                    <p style="font-size:12px;margin-left:5px;">大家喜欢吃，才叫真好吃</p>
                                </div>   
                                <div class="right-media">
                                    <ul class="mui-table-view">
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                         <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </mt-tab-container-item>
                            <mt-tab-container-item id="a1">
                                 <div style="display:flex;">
                                    <p style="color:#000;font-weight:bold;">热销</p>
                                    <p style="font-size:12px;margin-left:5px;">大家喜欢吃，才叫真好吃</p>
                                </div>   
                                <div class="right-media">
                                    <ul class="mui-table-view">
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                         <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </mt-tab-container-item>
                            <mt-tab-container-item id="a2">
                                 <div style="display:flex;">
                                    <p style="color:#000;font-weight:bold;">热销</p>
                                    <p style="font-size:12px;margin-left:5px;">大家喜欢吃，才叫真好吃</p>
                                </div>   
                                <div class="right-media">
                                    <ul class="mui-table-view">
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                         <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </mt-tab-container-item>
                            <mt-tab-container-item id="a3">
                                 <div style="display:flex;">
                                    <p style="color:#000;font-weight:bold;">热销</p>
                                    <p style="font-size:12px;margin-left:5px;">大家喜欢吃，才叫真好吃</p>
                                </div>   
                                <div class="right-media">
                                    <ul class="mui-table-view">
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                         <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mui-table-view-cell mui-media" style="display:flex;">
                                            <img src="../../../public/img/list/firut.png">
                                            <div class="mui-media-body">
                                                <div>
                                                    <h4>(有料大杯)奥利奥</h4>
                                                </div>
                                                <p class='mui-ellipsis'>口味尤赞，产品以实物为准</p>
                                                <p class='mui-ellipsis'>月售50份 好评率100%</p>
                                                <div class="mui-card-footer">
                                                    <div>¥49.6<span>起</span></div>
                                                    <div class="mui-icon mui-icon-plus"></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>                              
                            </mt-tab-container-item>
                        </mt-tab-container>                  
                       </div>
                    </div> 
                    <div class="details-cart">
                        <div class="cart-top">
                            <span>满25减24，满50减26，满100减45</span>
                        </div>
                        <div class="cart-bottom">
                            <div class="cart-icon">
                              <span class="mui-icon-extra mui-icon-extra-cart" style="color:gray;"></span>
                            </div>
                            <div class="cart-dan">
                                <p>未选购商品</p>
                                <div style="display:none;">¥17.99 <del>¥38.99</del></div>
                            </div>
                            <div class="cart-pei">
                                <p>¥20起送</p>
                                <p class="dis gre">去结算</p>
                            </div>
                        </div>
                    </div>                 
               </mt-tab-container-item>            
               <mt-tab-container-item id="tab-container2">
                    <div class="order-ping">
                      <h2>4.9</h2>
                      <div>
                        <p>商家评分</p>
                        <p></p>
                      </div>
                      <div>
                        <p>味道</p>
                        <p>4.2</p>
                      </div> 
                      <div>
                        <p>包装</p>
                        <p>4.3</p>
                      </div> 
                      <div style="border:1px solid #8f8f94;height:52px;"></div>  
                      <div>
                        <p>配送</p>
                        <p>4.1</p>
                      </div>  
                    </div>
                    <div class="ping-btn">
                        <button @click="activePing = 'tab-pingjia-container1'"  class="checked pingChange">
					        <p>全部 </p>
				        </button>
                        <button @click="activePing = 'tab-pingjia-container2'" class="pingChange">
                             <p>满意 </p>
                        </button>
                        <button @click="activePing = 'tab-pingjia-container3'" class="pingChange">
                             <p>不满意 </p>
                        </button>
                        <button @click="activePing = 'tab-pingjia-container4'" class="pingChange">
                             <p>有图 </p>
                        </button>                    
                    </div>
                    <hr>
                    <mt-tab-container v-model="activePing"  style="margin-top:-19px;">
                        <mt-tab-container-item id="tab-pingjia-container1">
                            <ul class="mui-table-view">
                                <li class="mui-table-view-cell mui-media">
                                    <img class="mui-media-object mui-pull-left" src="../../../public/img/list/firut.png">
                                    <div class="mui-media-body">
                                        <div>
                                            <div>4*******0</div>
                                            <div>2018-09-09</div>
                                        </div>
                                        <p>
                                            <img src="">
                                            <span>超赞</span>
                                        </p>
                                        <p class='mui-ellipsis'>还不错</p>
                                        <img src="../../../public/img/list/flower.png" style="width:100px;height:100px;">
                                    </div>                    
                                </li>
                                <li class="mui-table-view-cell mui-media"> 
                                    <img class="mui-media-object mui-pull-left" src="../../../public/img/list/firut.png">
                                    <div class="mui-media-body">
                                        <div>
                                            <div>4*******0</div>
                                            <div>2018-09-09</div>
                                        </div>
                                        <p>
                                            <img src="">
                                            <span>超赞</span>
                                        </p>
                                        <p class='mui-ellipsis'>还不错</p>
                                        <img src="../../../public/img/list/flower.png" style="width:100px;height:100px;">
                                    </div> 
                                </li>
                                <li class="mui-table-view-cell mui-media">
                                    <img class="mui-media-object mui-pull-left" src="../../../public/img/list/firut.png">
                                    <div class="mui-media-body">
                                        <div>
                                            <div>4*******0</div>
                                            <div>2018-09-09</div>
                                        </div>
                                        <p>
                                            <img src="">
                                            <span>超赞</span>
                                        </p>
                                        <p class='mui-ellipsis'>还不错</p>
                                        <img src="../../../public/img/list/flower.png" style="width:100px;height:100px;">
                                    </div>   
                                </li>
                            </ul>
                        </mt-tab-container-item>
                        <mt-tab-container-item id="tab-pingjia-container2">
                            <ul class="mui-table-view">
                                <li class="mui-table-view-cell mui-media">
                                    <img class="mui-media-object mui-pull-left" src="../../../public/img/list/flower.png">
                                    <div class="mui-media-body">
                                        <div>
                                            <div>4*******0</div>
                                            <div>2018-09-09</div>
                                        </div>
                                        <p>
                                            <img src="">
                                            <span>超赞</span>
                                        </p>
                                        <p class='mui-ellipsis'>还不错</p>
                                        <img src="../../../public/img/list/delicious.png" style="width:100px;height:100px;">
                                    </div>                    
                                </li>
                                <li class="mui-table-view-cell mui-media"> 
                                    <img class="mui-media-object mui-pull-left" src="../../../public/img/list/flower.png">
                                    <div class="mui-media-body">
                                        <div>
                                            <div>4*******0</div>
                                            <div>2018-09-09</div>
                                        </div>
                                        <p>
                                            <img src="">
                                            <span>超赞</span>
                                        </p>
                                        <p class='mui-ellipsis'>还不错</p>
                                        <img src="../../../public/img/list/delicious.png" style="width:100px;height:100px;">
                                    </div> 
                                </li>
                                <li class="mui-table-view-cell mui-media">
                                    <img class="mui-media-object mui-pull-left" src="../../../public/img/list/flower.png">
                                    <div class="mui-media-body">
                                        <div>
                                            <div>4*******0</div>
                                            <div>2018-09-09</div>
                                        </div>
                                        <p>
                                            <img src="">
                                            <span>超赞</span>
                                        </p>
                                        <p class='mui-ellipsis'>还不错</p>
                                        <img src="../../../public/img/list/delicious.png" style="width:100px;height:100px;">
                                    </div>   
                                </li>
                            </ul>
                        </mt-tab-container-item>
                        <mt-tab-container-item id="tab-pingjia-container3">
                            <ul class="mui-table-view">
                                <li class="mui-table-view-cell mui-media">
                                    <img class="mui-media-object mui-pull-left" src="../../../public/img/list/noontea.png">
                                    <div class="mui-media-body">
                                        <div>
                                            <div>4*******0</div>
                                            <div>2018-09-09</div>
                                        </div>
                                        <p>
                                            <img src="">
                                            <span>超赞</span>
                                        </p>
                                        <p class='mui-ellipsis'>还不错</p>
                                        <img src="../../../public/img/list/smalleat.png" style="width:100px;height:100px;">
                                    </div>                    
                                </li>
                                <li class="mui-table-view-cell mui-media"> 
                                    <img class="mui-media-object mui-pull-left" src="../../../public/img/list/noontea.png">
                                    <div class="mui-media-body">
                                        <div>
                                            <div>4*******0</div>
                                            <div>2018-09-09</div>
                                        </div>
                                        <p>
                                            <img src="">
                                            <span>超赞</span>
                                        </p>
                                        <p class='mui-ellipsis'>还不错</p>
                                        <img src="../../../public/img/list/smalleat.png" style="width:100px;height:100px;">
                                    </div> 
                                </li>
                                <li class="mui-table-view-cell mui-media">
                                    <img class="mui-media-object mui-pull-left" src="../../../public/img/list/noontea.png">
                                    <div class="mui-media-body">
                                        <div>
                                            <div>4*******0</div>
                                            <div>2018-09-09</div>
                                        </div>
                                        <p>
                                            <img src="">
                                            <span>超赞</span>
                                        </p>
                                        <p class='mui-ellipsis'>还不错</p>
                                        <img src="../../../public/img/list/smalleat.png" style="width:100px;height:100px;">
                                    </div>   
                                </li>
                            </ul>
                        </mt-tab-container-item>
                        <mt-tab-container-item id="tab-pingjia-container4">
                            <ul class="mui-table-view">
                                <li class="mui-table-view-cell mui-media">
                                    <img class="mui-media-object mui-pull-left" src="../../../public/img/list/firut.png">
                                    <div class="mui-media-body">
                                        <div>
                                            <div>4*******0</div>
                                            <div>2018-09-09</div>
                                        </div>
                                        <p>
                                            <img src="">
                                            <span>超赞</span>
                                        </p>
                                        <p class='mui-ellipsis'>还不错</p>
                                        <img src="../../../public/img/list/flower.png" style="width:100px;height:100px;">
                                    </div>                    
                                </li>
                                <li class="mui-table-view-cell mui-media"> 
                                    <img class="mui-media-object mui-pull-left" src="../../../public/img/list/firut.png">
                                    <div class="mui-media-body">
                                        <div>
                                            <div>4*******0</div>
                                            <div>2018-09-09</div>
                                        </div>
                                        <p>
                                            <img src="">
                                            <span>超赞</span>
                                        </p>
                                        <p class='mui-ellipsis'>还不错</p>
                                        <img src="../../../public/img/list/flower.png" style="width:100px;height:100px;">
                                    </div> 
                                </li>
                                <li class="mui-table-view-cell mui-media">
                                    <img class="mui-media-object mui-pull-left" src="../../../public/img/list/firut.png">
                                    <div class="mui-media-body">
                                        <div>
                                            <div>4*******0</div>
                                            <div>2018-09-09</div>
                                        </div>
                                        <p>
                                            <img src="">
                                            <span>超赞</span>
                                        </p>
                                        <p class='mui-ellipsis'>还不错</p>
                                        <img src="../../../public/img/list/flower.png" style="width:100px;height:100px;">
                                    </div>   
                                </li>
                            </ul>
                        </mt-tab-container-item>
                    </mt-tab-container>      
                </mt-tab-container-item>
                <mt-tab-container-item id="tab-container3" style="margin-left:10px;">          <div class="order-peisong">
                   <h4>配送信息</h4>
                        <div>由蜂鸟快送提供配送，约26分钟送达，距离821m</div>
                        <div>配送费¥0</div>                        
                   </div>            
                   <div class="order-huo">
                        <h4>活动与服务</h4>
                        <div><img src="">满35减15，满55减20，满100减35，满200减60，满300减80</div>
                        <div><img src="">新用户下单立减17元(不与其他活动共享)</div>
                        <div><img src="">该商户食品安全已由国泰产险承担，视频安全有保障</div>
                        <div><img src="">该商家支持开发票，请在下单时填写好发票抬头</div>
                   </div>
                   <div class="order-shijing">
                        <h4>商家实景</h4>
                        <div class="order-pictures">
                            <div class="pic1">
                                <img src="../../../public/img/list/flower.png">
                                <div class="pictures-details1">
                                    <span>门面(1张)</span>
                                </div>
                            </div>
                            <div class="pic2">
                                <img src="../../../public/img/list/flower.png"> 
                                <div class="pictures-details2">
                                <span>大堂(1张)</span>
                                </div>
                            </div>       
                        </div>               
                   </div>
                   <div class="xiangxi">
                        <h4>商家信息</h4>
                        <div>
                        <p>暂无简介</p>
                        </div>
                        <div>
                            <h5>品类</h5>
                            <p>包子粥店，饺子馄饨</p>
                        </div>
                        <div>
                            <h5>商家电话</h5>
                            <p>18600769873</p>
                        </div>
                        <div>
                            <h5>地址</h5>
                            <p>北京市海淀区万寿路1号1-27号</p>
                        </div>
                        <div>
                            <h5>营业时间</h5>
                            <p>01:45-10:10</p>
                        </div>
                   </div>
                   <div class="zizhi">
                        <h4>营业资质</h4>
                   </div>
                </mt-tab-container-item>
            </mt-tab-container>
        </div>  
           
    </div>
    
</template>
<script>
    export default{
        name:'page-tab-container',
        data:function(){
            return{
                active:'tab-container1',
                activePing:'tab-pingjia-container1',
                activeList:'rexiao',
                selected:"1",
                popupVisible:false,
            }
        },
        mounted(){
            this.change();
            this.pingChange();
            this.backgroundChange();         
        },
       
        methods:{
            handleClick(){
                this.popupVisible = true;
            },
            backgroundChange(){
                $(".order .page-tab-container .details-list .list-left-wai .list-left div").click(function(){
                    var $btn = $(this);
                    if(!$btn.hasClass("background-active")){
                        $btn.addClass("background-active");
                        $btn.siblings().removeClass("background-active");
                    }else{
                         $btn.addClass("background-active");
                        $btn.siblings().removeClass("background-active");
                    }
                });
            },
            change(){
                $(".change").click(function(){
                    var $btn = $(this);
                    if(!$btn.hasClass("nav-active")){
                        $btn.addClass("nav-active");
                        $btn.siblings().removeClass("nav-active");
                    }else{
                         $btn.addClass("nav-active");
                        $btn.siblings().removeClass("nav-active");
                    }
                });
            },
            pingChange(){
                $(".pingChange").click(function(){
                    var $change = $(this);
                    if(!$change.hasClass("checked")){
                        $change.addClass("checked");
                        $change.siblings().removeClass("checked");
                    }else{
                        $change.addClass("checked");
                        $change.siblings().removeClass("checked");
                    }
                });
            }
        }
    }
</script>
<style>
    .order-top{
        position:relative;
    }
    .order .order-title{
        height:105px;
        margin-top:-50px;
        background-image:url("http://172.163.4.84:3000/img/slider/1.png");
        background-repeat:no-repeat;
    }
    .order .order-top .mint-header-button.is-left{
        margin-top:-40px;
    }
    .order .logo{
        width:60px;
        height:60px;
        background-image:url("http://172.163.4.84:3000/img/list/firut.png");
        background-repeat:no-repeat;
        position:absolute;
        top:60px;
        left:160px;
    }
    .order .order-info .order-jianjie h4{
        text-align:center;
        margin-top:20px;
    }
    .order .order-jianjie p{
        text-align:center;
        font-size:12px;
    }
    .order .order-youhui{
        display:flex;
        justify-content:space-around;
        margin-top:-10px;
    }
     .order .order-youhui p{
         font-size:12px;
     }
     .order .order-youhui p:first-child{
         color:#000;
     }
    .order .gonggao{
        text-align:center;
        font-size:12px;
        color:#8f8f94;
    }
    .order .nav{
        margin-top:20px;
        margin-bottom:-9px;
        display:flex;
        justify-content:space-around;
        font-size:14px;
        color:#8f8f94;
    }
    .order .nav>div{
        padding-bottom:10px;
    }
    .order .page-tab-container .tab-container1{
        display:flex;
        justify-content:space-between;
        padding:0;
    }
    .order .page-tab-container .tab-container1>.mui-card{
        width:33%;
        margin:2px;
    }
    .order .page-tab-container .tab-container1>.mui-card>.mui-card-header.mui-card-media{
        height:120px;
    }
    .order .mui-card-content-inner{
        padding:0;  
    }
     .order .mui-card-content-inner>p{
        font-size:12px;
     }
    .order .mui-card-footer{
       min-height:20px;
       padding:2px 5px;
       position:static;
    }
    .order .mui-card-footer>div:first-child{
        font-size:16px;
        color:red;
    }
    .order .tab-container1 .mui-card-footer>div>span{
       font-size:12px;
    }
    .order .nav .nav-active{
        border-bottom:2px solid blue;
    }
    .order .page-tab-container h5{
        color:#000;
        font-weight:bold;
    }
    .order .order-img{
        text-align:center;
        height:100px;
    }
    .order .order-img>img{
        width:350px;
    }
    .order .order-ping{
        display:flex;
        justify-content:space-around;
        text-align:center;
        margin-top:10px;
    }
    .order .order-ping>h2{
        color:red;
        margin-top:10px;
    }
    .order .page-tab-container .ping-btn p{
        color:#fff;
    }
    .order .page-tab-container .ping-btn .checked{
        background:#f60;
    }
     .order .page-tab-container .ping-btn{
         margin-top:10px;
     }
    .order .page-tab-container .ping-btn button{
        margin-left:10px;
        width:64px;
        height:30px;
        background-color:lightblue;
    }
    .page-tab-container .ping-btn button:nth-child(3){
        background-color:darkgray;
    }
    .order .page-tab-container .order-peisong div{
        font-size:12px;
        margin-top:10px;
    }
    .order .page-tab-container #tab-container3{
       margin-left:5px;
    }
    .order .mint-tab-container{
        position:normal;
    }
    .order .page-tab-container .order-huo,.order .page-tab-container .order-shijing,.order .page-tab-container .xiangxi,.order .page-tab-container .zizhi{
        margin-top:20px;
    }
    .order .page-tab-container .order-huo>div{
        font-size:12px;
        color:#8f8f94;
        width:100%;
        margin-top:10px;
    }
    .order .page-tab-container .order-huo>div>img{
        width:30px;
        height:15px;
        vertical-align:middle;
        margin-right:5px;
    }
    .order .page-tab-container .order-pictures{
        display:flex;
        position:relative;
        width:100%;
    }
    .order .page-tab-container .order-shijing .order-pictures .pic1,.order .page-tab-container .order-shijing .order-pictures .pic2{
        width:24%;
        margin-right:5px;
    }
    .order .page-tab-container .order-shijing .order-pictures .pic1 img,.order .page-tab-container .order-shijing .order-pictures .pic2>img{
        width:100%;     
    }
    .order .page-tab-container .order-shijing .pictures-details1{
        font-size:12px;
        background-color:darkgray;
        width:24%;
        height:19%;
        color:#fff;
        text-align:center;
        position:absolute;
        top:76%;
        opacity:.5;
    }
    .order .page-tab-container .order-shijing .pictures-details2{
        font-size:12px;
        background-color:darkgray;
        width:24%;
        height:19%;
        color:#fff;
        text-align:center;
        position:absolute;
        top:76%;
        left:25%;
        opacity:.5;
    }
    .order .page-tab-container .xiangxi>div{
        display:flex;
        justify-content:space-between;
        margin-top:5px;
        padding-right:20px;
    }
    .order .page-tab-container .details-list{
        display:flex;    
    }
    .order .page-tab-container .details-list .list-left-wai{
        overflow:hidden;
        width:85px;
    }
    .order .page-tab-container .details-list .list-left-wai .list-left{
        width:116%;
        margin-top:20px;
        overflow-y:scroll;
        overflow-x:hidden;
        height:470px;
        padding-right:10px;     
    }
    .order .page-tab-container .details-list .list-left-wai .list-left div{ 
        padding:10px 0 1px 5px;
    }
    .order .page-tab-container .details-list .list-right{
        height:500px;
        width:100%;
        margin-top:20px;
        background-color:#fff;
    }
    .order .page-tab-container .details-list .list-left-wai .background-active{
        background-color:#fff;
    }
    .order .list-right .mui-table-view .mui-media-object.mui-pull-left{
        margin-right:72px;
    }
    .order .mint-tab-container-item{
        overflow-y:scroll;
        height:500px;
    }
    .order .page-tab-container .details-list .list-right h4{
        color:#000;
        font-size:15px;
    }
    .order .page-tab-container .details-list .list-right .right-media img{
        height:100px;
        width:100px;
    }
    .order .page-tab-container .details-list .list-right .right-media .mui-media-body{
        margin-left:20px;
    }
    .order .mui-table-view-cell{
        position:static;
    }
    .order .order-info .pop-bottom .pop-scroll{
        height:220px;
        overflow-y:scroll;
        margin-left:10px;
    }
    .order .order-info .pop-bottom .pop-scroll>p{
        font-size:12px;
    }
    .details-cart{
        position:relative;
    }
    .details-cart .cart-top{
        background:#f2f0a9;
        text-align:center;
    }
    .details-cart .cart-top>span{
        font-size:12px;
    }
    .details-cart .cart-bottom{
        display:flex;
        background:#242323;
        justify-content:space-between;
    }
    .details-cart .cart-bottom .cart-icon{
        background:#161515;
        border-radius:50%;
        padding:7px;
        position:absolute;
        top:15px;
        left:10px;
        box-shadow:0 0 20px rgba(96,96,96,.7);
    }
    .details-cart .cart-bottom .cart-dan{
        margin-left:60px;
        margin-top:10px;
    }
    .details-cart .cart-bottom .cart-pei{
        background:#2b2929;
        width:60px;
        padding:10px 0 0 7px;
    }
    .details-cart .cart-bottom .cart-pei>p{
        font-size:12px;
    }
    .details-cart .dis{
        display:none;
    }
    .details-cart .cart-bottom .cart-pei.gre{
        background:green;
    }
    .order .page-tab-container .details-list .list-left-wai .list-left p{
        font-size:12px;
    }
</style>