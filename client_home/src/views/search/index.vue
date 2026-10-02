<template>
  <div class="page_search">
	<div class="warp">
	  <div class="container">
		<div class="row">
		  <div class="col-12">
			<div class="card_result_search">
			  <div class="title">搜索结果</div>
				<!-- 商品搜索结果 -->
			  <list_result_search
				:list="result_goods"
				title="二手商城"
				source_table="goods"
			  ></list_result_search>
				<!-- 文章搜索结果 -->
			  <list_result_search
				:list="result_article"
				title="商城资讯"
				source_table="article"
			  ></list_result_search>
				<!-- 论坛搜索结果 -->
			  <list_result_search
				:list="result_forum"
				title="二手交易论坛"
				source_table="forum"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/second_hand_mall/list', 'get')"
				:list="result_second_hand_mall_remarks"
				title="二手商城备注"
				source_table="second_hand_mall"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/sign_in_score/list', 'get')"
				:list="result_sign_in_score_order_number"
				title="签收评分订单编号"
				source_table="sign_in_score"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/sign_in_score/list', 'get')"
				:list="result_sign_in_score_purchase_goods"
				title="签收评分购买商品"
				source_table="sign_in_score"
			  ></list_result_search>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</template>

<script>
import mixin from "../../mixins/page.js";
import list_result_search from "../../components/diy/list_result_search.vue";

export default {
  mixins: [mixin],
  data() {
	return {
	  "query": {
		word: "",
	  },
	  "result_goods": [],
	  "result_article": [],
	  "result_forum": [],
			"result_second_hand_mall_remarks":[],
			"result_sign_in_score_order_number":[],
			"result_sign_in_score_purchase_goods":[],
	};
  },
  methods: {
	/**
	 * 获取二手商城
	 */
	get_goods() {
	  this.$get("~/api/goods/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_goods = json.result.list;
		}
	  });
	},
	/**
	 * 获取文章
	 */
	get_article() {
	  this.$get("~/api/article/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_article = json.result.list;
		}
	  });
	},
	/**
	 * 获取二手交易论坛
	 */
	get_forum() {
	  this.$get("~/api/forum/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_forum = json.result.list;
		}
	  });
	},
	/**
	 * 获取remarks
	 */
	get_second_hand_mall_remarks(){
		this.$get("~/api/second_hand_mall/get_list?like=0", { page: 1, size: 10, "remarks": this.query.word }, (json) => {
		  if (json.result) {
			var result_second_hand_mall_remarks = json.result.list;
			result_second_hand_mall_remarks.map(o => o.title = o['remarks'])
	  			this.result_second_hand_mall_remarks = result_second_hand_mall_remarks
		 	}
		});
	},
	/**
	 * 获取order_number
	 */
	get_sign_in_score_order_number(){
		this.$get("~/api/sign_in_score/get_list?like=0", { page: 1, size: 10, "order_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_sign_in_score_order_number = json.result.list;
			result_sign_in_score_order_number.map(o => o.title = o['order_number'])
	  			this.result_sign_in_score_order_number = result_sign_in_score_order_number
		 	}
		});
	},
	/**
	 * 获取purchase_goods
	 */
	get_sign_in_score_purchase_goods(){
		this.$get("~/api/sign_in_score/get_list?like=0", { page: 1, size: 10, "purchase_goods": this.query.word }, (json) => {
		  if (json.result) {
			var result_sign_in_score_purchase_goods = json.result.list;
			result_sign_in_score_purchase_goods.map(o => o.title = o['purchase_goods'])
	  			this.result_sign_in_score_purchase_goods = result_sign_in_score_purchase_goods
		 	}
		});
	},

  },
  components: { list_result_search },
	created(){
    this.query.word = this.$route.query.word || "";
  },
  mounted() {
	this.get_goods();
	this.get_article();
	this.get_forum();
		this.get_second_hand_mall_remarks();
		this.get_sign_in_score_order_number();
		this.get_sign_in_score_purchase_goods();
  },
  watch: {
	$route() {
	  $.push(this.query, this.$route.query);
	  this.get_goods();
	  this.get_article();
	  this.get_forum();
	  this.get_second_hand_mall_remarks();
	  this.get_sign_in_score_order_number();
	  this.get_sign_in_score_purchase_goods();
	},
  },
};
</script>

<style scoped>
.card_search {
  text-align: center;
}
.card_result_search>.title {
  text-align: center;
  padding: 10px 0;
}
</style>
