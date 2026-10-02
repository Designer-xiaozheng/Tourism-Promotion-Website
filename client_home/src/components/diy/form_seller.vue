<template>
	<div>
		<b-form-group v-if="$check_register_field('add','seller_number','/seller/view')" id="input-group-0" label="卖家编号" label-for="input-0">
			<b-form-input id="input-0" v-model="form['seller_number']" type="text" placeholder="卖家编号" trim></b-form-input>
		</b-form-group>
		<b-form-group v-if="$check_register_field('add','seller_gender','/seller/view')" id="input-group-1" label="卖家性别" label-for="input-1">
			<b-form-select id="input-1" v-model="form['seller_gender']" :options="getDropList(list_seller_gender)"></b-form-select>
		</b-form-group>
		<b-form-group v-if="$check_register_field('add','age','/seller/view')" id="input-group-2" label="卖家年龄" label-for="input-2">
			<b-form-input id="input-2" v-model="form['age']" type="text" placeholder="卖家年龄" trim></b-form-input>
		</b-form-group>
		<b-form-group v-if="$check_register_field('add','seller_school','/seller/view')" id="input-group-3" label="卖家学校" label-for="input-3">
			<b-form-input id="input-3" v-model="form['seller_school']" type="text" placeholder="卖家学校" trim></b-form-input>
		</b-form-group>
		<b-form-group v-if="$check_register_field('add','address','/seller/view')" id="input-group-4" label="卖家地址" label-for="input-4">
			<b-form-input id="input-4" v-model="form['address']" type="text" placeholder="卖家地址" trim></b-form-input>
		</b-form-group>
		<b-form-group v-if="$check_register_field('add','seller_birthday','/seller/view')" id="input-group-5" label="卖家生日" label-for="input-5">
			<b-form-input id="input-5" v-model="form['seller_birthday']" type="date" placeholder="卖家生日" trim></b-form-input>
		</b-form-group>
		<b-form-group v-if="$check_register_field('add','brief_introduction','/seller/view')" id="input-group-6" label="卖家简介" label-for="input-6">
			<b-form-input id="input-6" v-model="form['brief_introduction']" type="text" placeholder="卖家简介" trim></b-form-input>
		</b-form-group>
	</div>
</template>

<script>
	import mixin from "@/mixins/component.js";

	export default {
		mixins: [mixin],
		model: {
			prop: "form",
			event: "change"
		},
		props: {
			form: {
				type: Object,
				default: () => {
					return {

					}
				}
			}
		},
		data(){
			return {
				url_upload: "~/api/seller/upload?",
						list_seller_gender: "男,女",
			}
		},
		methods: {
			// 下拉数据列表转换
			getDropList(e){
				let resultArr = [];
				if(e){
					let arr = e.split(",");
					arr.forEach(item => {
						resultArr.push({
							value: item,
							text: item
						})
					});
				}
				return resultArr;
			},
			/**
			 * 上传图片
			 * @param {Object} file 文件对象
			 * @param {key} 保存键名
			 */
			uploadFile(file, key = "img") {
				var _this = this;
				var form = new FormData() // FormData 对象
				form.append('file', file[0]) // 文件对象
				this.$upload(this.url_upload, form, function(json) {
					if (json.result) {
						// _this.form[key] = json.result.url;
						_this.$delete(_this.form,key);
						_this.$set(_this.form,key,json.result.url);
						console.log(_this.form[key])
					} else {
						_this.$toast('上传失败！');
					}
				});
			},
		}
	}
</script>

<style>
</style>
