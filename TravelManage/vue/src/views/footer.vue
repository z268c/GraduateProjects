<template>
<div class="footer mt10">
            <div class="copyrightnr link">
            友情链接&nbsp;
            <a v-for="v in likeList" :href="v.wangzhi" target="_blank">{{  v.wangzhanmingcheng  }}</a> &nbsp;
        </div>
    
    <div class="copyrightnr">
        地址：湖南省长沙市　　电话：0000-00000000　　手机：12312312312
            <br />
            版权所有：旅游管理系统设计与实现 　　ICP备********号    </div>
</div>
</template>

<style type="text/scss" scoped lang="scss">
    .footer{
        padding: 15px;
        color: #767676;
        text-align: center;
        .link{
            a:after{
                content: ' | ';
            }
            a:last-child:after{
                content: '';
            }
        }
    }
</style>
<script>
    import api from '@/api';
    import {extend} from '@/utils/extend';
    const setting = require('@/setting');

    export default {
        data(){
            return {
                likeList:[]
            };
        },
        methods:{
            loadListMenu(module, target) {
                this.$post(api.search.all, {table: module, order: 'id desc'}).then(res => {
                    this[target] = res.data;
                });
            },
        },
        created(){
                        this.loadListMenu("youqinglianjie",'likeList');
                    }
    }

</script>
