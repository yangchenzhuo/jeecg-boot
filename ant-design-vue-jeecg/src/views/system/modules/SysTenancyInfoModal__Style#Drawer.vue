<template>
  <a-drawer
    :title="title"
    :width="width"
    placement="right"
    :closable="false"
    @close="close"
    :visible="visible">
  
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">

        <a-form-item label="域名" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'domain', validatorRules.domain]" placeholder="请输入域名"></a-input>
        </a-form-item>
        <a-form-item label="租户简称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'tenancyName', validatorRules.tenancyName]" placeholder="请输入租户简称"></a-input>
        </a-form-item>
        <a-form-item label="租户详情" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="['tenancyInfo', validatorRules.tenancyInfo]" rows="4" placeholder="请输入租户详情"/>
        </a-form-item>
        <a-form-item label="用户上限" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'userLimit', validatorRules.userLimit]" placeholder="请输入用户上限" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="过期时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择过期时间" v-decorator="[ 'expire', validatorRules.expire]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="租户类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['tenancyType', validatorRules.tenancyType]" :trigger-change="true" dictCode="tenancy_type" placeholder="请选择租户类型"/>
        </a-form-item>
        
      </a-form>
    </a-spin>
    <a-button type="primary" @click="handleOk">确定</a-button>
    <a-button type="primary" @click="handleCancel">取消</a-button>
  </a-drawer>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDate from '@/components/jeecg/JDate'  
  import JDictSelectTag from "@/components/dict/JDictSelectTag"
  
  export default {
    name: "SysTenancyInfoModal",
    components: { 
      JDate,
      JDictSelectTag,
    },
    data () {
      return {
        form: this.$form.createForm(this),
        title:"操作",
        width:800,
        visible: false,
        model: {},
        labelCol: {
          xs: { span: 24 },
          sm: { span: 5 },
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 16 },
        },
        confirmLoading: false,
        validatorRules: {
          domain: {rules: [
          ]},
          tenancyName: {rules: [
          ]},
          tenancyInfo: {rules: [
          ]},
          userLimit: {rules: [
           {pattern:/^-?\d+\.?\d*$/, message: '请输入数字!'},
          ]},
          expire: {rules: [
          ]},
          tenancyType: {rules: [
          ]},
        },
        url: {
          add: "/system/sysTenancyInfo/add",
          edit: "/system/sysTenancyInfo/edit",
        }
      }
    },
    created () {
    },
    methods: {
      add () {
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'domain','tenancyName','tenancyInfo','userLimit','expire','tenancyType'))
        })
      },
      close () {
        this.$emit('close');
        this.visible = false;
      },
      handleOk () {
        const that = this;
        // 触发表单验证
        this.form.validateFields((err, values) => {
          if (!err) {
            that.confirmLoading = true;
            let httpurl = '';
            let method = '';
            if(!this.model.id){
              httpurl+=this.url.add;
              method = 'post';
            }else{
              httpurl+=this.url.edit;
               method = 'put';
            }
            let formData = Object.assign(this.model, values);
            console.log("表单提交数据",formData)
            httpAction(httpurl,formData,method).then((res)=>{
              if(res.success){
                that.$message.success(res.message);
                that.$emit('ok');
              }else{
                that.$message.warning(res.message);
              }
            }).finally(() => {
              that.confirmLoading = false;
              that.close();
            })
          }
         
        })
      },
      handleCancel () {
        this.close()
      },
      popupCallback(row){
        this.form.setFieldsValue(pick(row,'domain','tenancyName','tenancyInfo','userLimit','expire','tenancyType'))
      }
      
    }
  }
</script>

<style lang="less" scoped>
/** Button按钮间距 */
  .ant-btn {
    margin-left: 30px;
    margin-bottom: 30px;
    float: right;
  }
</style>