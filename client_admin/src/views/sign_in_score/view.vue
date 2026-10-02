<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','order_number') || $check_field('add','order_number') || $check_field('set','order_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="订单编号" prop="order_number">
					<el-input id="order_number" v-model="form['order_number']" placeholder="请输入订单编号"
							  v-if="user_group === '管理员' || (form['sign_in_score_id'] && $check_field('set','order_number')) || (!form['sign_in_score_id'] && $check_field('add','order_number'))" :disabled="disabledObj['order_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','order_number')">{{form['order_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','purchase_goods') || $check_field('add','purchase_goods') || $check_field('set','purchase_goods')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="购买商品" prop="purchase_goods">
					<el-input id="purchase_goods" v-model="form['purchase_goods']" placeholder="请输入购买商品"
							  v-if="user_group === '管理员' || (form['sign_in_score_id'] && $check_field('set','purchase_goods')) || (!form['sign_in_score_id'] && $check_field('add','purchase_goods'))" :disabled="disabledObj['purchase_goods_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','purchase_goods')">{{form['purchase_goods']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','commodity_price') || $check_field('add','commodity_price') || $check_field('set','commodity_price')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="商品价格" prop="commodity_price">
					<el-input id="commodity_price" v-model="form['commodity_price']" placeholder="请输入商品价格"
							  v-if="user_group === '管理员' || (form['sign_in_score_id'] && $check_field('set','commodity_price')) || (!form['sign_in_score_id'] && $check_field('add','commodity_price'))" :disabled="disabledObj['commodity_price_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','commodity_price')">{{form['commodity_price']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','sign_in_status') || $check_field('add','sign_in_status') || $check_field('set','sign_in_status')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="签收状态" prop="sign_in_status">
					<el-select id="sign_in_status" v-model="form['sign_in_status']"
						v-if="user_group === '管理员' || (form['sign_in_score_id'] && $check_field('set','sign_in_status')) || (!form['sign_in_score_id'] && $check_field('add','sign_in_status'))">
						<el-option v-for="o in list_sign_in_status" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','sign_in_status')">{{form['sign_in_status']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','star_rating') || $check_field('add','star_rating') || $check_field('set','star_rating')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="星级评分" prop="star_rating">
					<el-select id="star_rating" v-model="form['star_rating']"
						v-if="user_group === '管理员' || (form['sign_in_score_id'] && $check_field('set','star_rating')) || (!form['sign_in_score_id'] && $check_field('add','star_rating'))">
						<el-option v-for="o in list_star_rating" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','star_rating')">{{form['star_rating']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','purchase_user') || $check_field('add','purchase_user') || $check_field('set','purchase_user')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="购买用户" prop="purchase_user">
						<div v-if="user_group !== '管理员'">
							{{ get_user_session_purchase_user(form['purchase_user']) }}
							<!--<el-input id="business_name" v-model="form['purchase_user']" placeholder="请输入购买用户"-->
							<!--v-if="user_group === '管理员' || (form['sign_in_score_id'] && $check_field('set','purchase_user')) || (!form['sign_in_score_id'] && $check_field('add','purchase_user'))" :disabled="disabledObj['purchase_user_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','purchase_user')">{{form['purchase_user']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['sign_in_score_id'] && $check_field('set','purchase_user')) || (!form['sign_in_score_id'] && $check_field('add','purchase_user'))" id="purchase_user" v-model="form['purchase_user']" :disabled="disabledObj['purchase_user_isDisabled']">
								<el-option v-for="o in list_user_purchase_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','purchase_user')" id="purchase_user" v-model="form['purchase_user']" :disabled="true">
								<el-option v-for="o in list_user_purchase_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="purchase_user" v-model="form['purchase_user']" :disabled="disabledObj['purchase_user_isDisabled']">
							<el-option v-for="o in list_user_purchase_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','business') || $check_field('add','business') || $check_field('set','business')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="商家" prop="business">
						<el-select v-if="user_group === '管理员' || (form['sign_in_score_id'] && $check_field('set','business')) || (!form['sign_in_score_id'] && $check_field('add','business'))" id="business" v-model="form['business']" :disabled="disabledObj['business_isDisabled']">
							<el-option v-for="o in list_user_business" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','business')" id="business" v-model="form['business']" :disabled="true">
							<el-option v-for="o in list_user_business" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','remarks') || $check_field('add','remarks') || $check_field('set','remarks')" :xs="24" :sm="24" :lg="24">
				<el-form-item label="备注" prop="remarks">
					<quill-editor v-model.number="form['remarks']"
						v-if="user_group === '管理员' || (form['sign_in_score_id'] && $check_field('set','remarks')) || (!form['sign_in_score_id'] && $check_field('add','remarks')) ">
					</quill-editor>
					<div v-else-if="$check_field('get','remarks')" v-html="form['remarks']"></div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "sign_in_score_id",
				url_add: "~/api/sign_in_score/add?",
				url_set: "~/api/sign_in_score/set?",
				url_get_obj: "~/api/sign_in_score/get_obj?",
				url_upload: "~/api/sign_in_score/upload?",

				query: {
					"sign_in_score_id": 0,
				},

				form: {
					"order_number":'', // 订单编号
					"purchase_goods":'', // 购买商品
					"commodity_price":'', // 商品价格
					"sign_in_status":'', // 签收状态
					"star_rating":'', // 星级评分
					"purchase_user": 0, // 购买用户
					"business": 0, // 商家
					"remarks":'', // 备注
					"sign_in_score_id": 0, // ID

				},
				disabledObj:{
					"order_number_isDisabled": false,
					"purchase_goods_isDisabled": false,
					"commodity_price_isDisabled": false,
					"sign_in_status_isDisabled": false,
					"star_rating_isDisabled": false,
					"purchase_user_isDisabled": false,
					"business_isDisabled": false,
					"remarks_isDisabled": false,
				},
				//签收状态选项列表
				list_sign_in_status: ['以签收','未签收'],
				//星级评分选项列表
				list_star_rating: ['1星','2星','3星','4星','5星'],
				// 用户列表
				list_user_purchase_user: [],
				// 用户组
				group_user_purchase_user: "",
				// 用户列表
				list_user_business: [],

			}
		},
		methods: {
			/**
			 * 获取买家用户列表
			 */
			async get_list_user_purchase_user() {
                // if(this.user_group !== "管理员" && this.form["purchase_user"] === 0) {
                //     this.form["purchase_user"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=买家");
                if(json.result && json.result.list){
                    this.list_user_purchase_user = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			/**
			 * 获取买家用户组
			 */
			async get_group_user_purchase_user() {
				this.form["purchase_user"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=买家");
				if(json.result && json.result.obj){
					this.group_user_purchase_user = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_purchase_user(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_purchase_user.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
						for (let key in _this.form) {
							arrForm.push(key)
						}
						for (var i=0;i<arr.length;i++){
							for (var j=0;j<arrForm.length;j++){
								if (arr[i]===arrForm[j]){
									if (arr[i]!=="purchase_user") {
										_this.form[arrForm[j]] = res.result.obj[arr[i]]
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
										break;
									}else {
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
									}
								}
							}
						}
					}
				});
			},
			get_user_purchase_user(id){
				var obj = this.list_user_purchase_user.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			/**
			 * 获取卖家用户列表
			 */
			async get_list_user_business() {
                // if(this.user_group !== "管理员" && this.form["business"] === 0) {
                //     this.form["business"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=卖家");
                if(json.result && json.result.list){
                    this.list_user_business = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			get_user_business(id){
				var obj = this.list_user_business.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				/**
				* 请求列表前
				* @param {Object} param
				*/
				var user_group = this.user.user_group;
				if (user_group !== "管理员") {
					switch (user_group) {
						case "购买用户":
							if(param["purchase_user"] > 0){
								param["purchase_user"] = this.user.user_id;
							}
							break;
						case "商家":
							if(param["business"] > 0){
								param["business"] = this.user.user_id;
							}
							break;
					}
				}
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/sign_in_score/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/sign_in_score/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/sign_in_score/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/sign_in_score/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/sign_in_score/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
			this.get_list_user_purchase_user();
			this.get_group_user_purchase_user();
			this.get_list_user_business();
		}
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
