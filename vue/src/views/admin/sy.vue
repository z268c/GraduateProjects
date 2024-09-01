<template>
    <div class="v-admin-sy">
<!--      {{setting.title}}-->
      System Backstage
    </div>
</template>
<style type="text/scss" lang="scss">
.v-admin-sy{

  font-family: Arial;
  font-size: x-large;
  font-weight: bold;
  color: #dce3e2;
  margin-left: 20px;

}
</style>
<script>
    const setting = require('@/setting')
    export default {
        name: "v-admin-sy",
        data() {
            return {
                setting
            }
        },
        watch: {},
        computed: {},
        methods: {},
        created() {

        },
        mounted() {
        },
        destroyed() {
        }
    }
</script>
