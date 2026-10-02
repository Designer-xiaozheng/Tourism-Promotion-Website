<template>
	<div>
		<el-form-item v-if="$check_register_field('add','seller_number','/seller/view')" label="卖家编号" prop="seller_number">
		<el-input id="seller_number" v-model="form['seller_number']" placeholder="请输入卖家编号"></el-input>
		</el-form-item>
		<el-form-item v-if="$check_register_field('add','seller_gender','/seller/view')" label="卖家性别" prop="seller_gender">
		<el-select id="seller_gender" v-model="form['seller_gender']">
			<el-option v-for="o in list_seller_gender" :key="o" :label="o" :value="o">
			</el-option>
		</el-select>
		</el-form-item>
		<el-form-item v-if="$check_register_field('add','age','/seller/view')" label="卖家年龄" prop="age">
		<el-input id="age" v-model="form['age']" placeholder="请输入卖家年龄"></el-input>
		</el-form-item>
		<el-form-item v-if="$check_register_field('add','seller_school','/seller/view')" label="卖家学校" prop="seller_school">
		<el-input id="seller_school" v-model="form['seller_school']" placeholder="请输入卖家学校"></el-input>
		</el-form-item>
		<el-form-item v-if="$check_register_field('add','address','/seller/view')" label="卖家地址" prop="address">
		<el-input id="address" v-model="form['address']" placeholder="请输入卖家地址"></el-input>
		</el-form-item>
		<el-form-item v-if="$check_register_field('add','seller_birthday','/seller/view')" label="卖家生日" prop="seller_birthday">
		<el-date-picker id="seller_birthday" v-model="form['seller_birthday']" type="date" placeholder="选择日期">
		</el-date-picker>
		</el-form-item>
		<el-form-item v-if="$check_register_field('add','brief_introduction','/seller/view')" label="卖家简介" prop="brief_introduction">
		<el-input id="brief_introduction" v-model="form['brief_introduction']" placeholder="请输入卖家简介"></el-input>
		</el-form-item>

	</div>
</template>

<script>
	import mixin from "@/mixins/component.js";

	export default {
		mixins: [mixin],
		props:{

			form:{
				type: Object,
				default: function(){
					return {
						"seller_number":'',
						"seller_gender":'',
						"age":'',
						"seller_school":'',
						"address":'',
						"seller_birthday":'',
						"brief_introduction":'',
					}
				}
			},

		},
		data() {
			return {
				field: "seller_id",
				url_add: "~/api/seller/add?",
				url_set: "~/api/seller/set?",
				url_upload: "~/api/seller/upload?",
				list_seller_gender: ['男','女'],

				rules: {
					"seller_number": [ {required: true,message: '卖家编号不能为空'}, ],
					"seller_gender": [ ],
					"age": [ ],
					"seller_school": [ ],
					"address": [ ],
					"seller_birthday": [ ],
					"brief_introduction": [ ],
				}

			}
		},
		methods: {

		},
		created() {
		}
	}
</script>
