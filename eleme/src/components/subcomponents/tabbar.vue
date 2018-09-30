<template>
    <div class="app-container">
     <nav class="mui-bar mui-bar-tab">
        <div class="mui-tab-item mui-active change" @click="goHome">
            <span class="mui-icon mui-icon-home"></span>
            <span class="mui-tab-label">首页</span>
        </div>         
        <div class="mui-tab-item change" @click="goFind">
            <span class="mui-icon mui-icon-extra mui-icon-extra-find"></span>
            <span class="mui-tab-label">发现</span>    
        </div>
        <div class="mui-tab-item change" @click="goOrder">
            <span class="mui-icon mui-icon-extra mui-icon-extra-order">
            <!--<span class="mui-badge">0</span>-->
            </span>
            <span class="mui-tab-label">订单</span>       
        </div>
        <div class="mui-tab-item change" @click="goMyself">
            <span class="mui-icon mui-icon-person"></span>
            <span class="mui-tab-label">我的</span>
        </div>
        </nav>
    </div>
</template>
<script>
     export default{
        data:function(){
            return{
               
            }
        },
       mounted(){
            this.change();
        },
        methods:{
            goMyself(){
                this.$router.push({path:"/myself"})
            },
            goOrder(){
                this.$router.push({path:"/order"})
            },
            goFind(){
                this.$router.push({path:"/find"})
            },
            goHome(){
                this.$router.push({path:"/home"})
            },
            change(){
                $(".app-container .change").click(function(){ 
                   var $btn =$(this);                
                   if(!$btn.hasClass("mui-active")){  
                       $btn.addClass("mui-active");
                       $btn.siblings().removeClass("mui-active");              
                    }else{   
                    $btn.siblings().removeClass("mui-active"); 
                    $btn.addClass("mui-active");  
                }                        
            })      
            }      
        }
    }
</script>
<style>
    
    .app-container{
       margin-top:40px;
    }
    .app-container .mui-input-row:last-child{     
        padding:0;
        height:35px;
    }
   
</style>
