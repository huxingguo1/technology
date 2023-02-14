<template>
  <div :class="className" :style="{height:height,width:width}" />
</template>

<script>
import echarts from 'echarts'
require('echarts/theme/macarons') // echarts theme
import resize from './mixins/resize'

const animationDuration = 3000
// 人名
//const data=['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
// 消耗
//const consumeAmount=[79, 52, 200, 334, 390, 330, 220]
// 客户打款
//const customerPayment=[80, 52, 200, 334, 390, 330, 220]
// 利润
//const profit =[30, 52, 200, 334, 390, 330, 220]
export default {
  mixins: [resize],
  props: {
    className: {
      type: String,
      default: 'chart'
    },
    width: {
      type: String,
      default: '100%'
    },
    height: {
      type: String,
      default: '300px'
    },
    chartData: {
      type: Object,
      required: true
    }
  },
  data() {
    return {
      chart: null
    }
  },
  watch: {
    chartData: {
      deep: true,
      handler(val) {
        this.setOptions(val)
      }
    }
  },
  mounted() {
    this.$nextTick(() => {
      this.initChart()
    })
  },
  beforeDestroy() {
    if (!this.chart) {
      return
    }
    this.chart.dispose()
    this.chart = null
  },
  methods: {
    initChart() {
      this.chart = echarts.init(this.$el, 'macarons')
      this.setOptions(this.chartData)
    },
    setOptions({ weekDays,consumeAmount, customerPayment,profit,channelPayment } = {}) {
      this.chart.setOption({
        title: {
          text: '最近7天统计'
        },
        tooltip: {
          trigger: 'axis',
          axisPointer: { // 坐标轴指示器，坐标轴触发有效
            type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
          }
        },
        grid: {
          top: 40,
          left: '2%',
          right: '2%',
          bottom: '3%',
          containLabel: true
        },
        xAxis: [{
          type: 'category',
          data: weekDays,
          axisTick: {
            alignWithLabel: true
          }
        }],
        yAxis: [{
          type: 'value',
          axisTick: {
            show: false
          }
        }],
        legend: {
          data: ['消耗', '利润','客户打款','渠道打款']
        },
        series: [{
          name: '消耗',
          type: 'bar',
          stack: 'vistors',
          barWidth: '60%',
          data: consumeAmount,
          animationDuration
        }, {
          name: '客户打款',
          type: 'bar',
          stack: 'vistors',
          barWidth: '60%',
          data: customerPayment,
          animationDuration
        }, {
          name: '利润',
          type: 'bar',
          stack: 'vistors',
          barWidth: '60%',
          data: profit,
          animationDuration
        }, {
          name: '渠道打款',
          type: 'bar',
          stack: 'vistors',
          barWidth: '60%',
          data: channelPayment,
          animationDuration
        }]
      })
    }
  }
}
</script>
