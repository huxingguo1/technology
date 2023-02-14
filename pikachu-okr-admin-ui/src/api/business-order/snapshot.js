import request from '@/utils/request'

/**
 * 查询首页统计最近7天
 * @param query
 */
export function getCountWeekInfo(query) {
  return request({
    url: '/business-order/snapshot/selectCountWeekInfo',
    method: 'get',
    params: query

  })
}
/**
 * 首页统计最近12个月
 * @param query
 */
export function getCountMonthInfo(query) {
  return request({
    url: '/business-order/snapshot/selectCountMonthInfo',
    method: 'get',
    params: query

  })
}
/**
 * 首页统计每人
 * @param query
 */
export function getCountUniUserInfo(query) {
  return request({
    url: '/business-order/snapshot/selectCountUniUserInfo',
    method: 'get',
    params: query

  })
}
/**
 * 首页查询总统计数字信息
 */
export function getCountInfo() {
  return request({
    url: '/business-order/snapshot/countInfo',
    method: 'get'
  })
}
// 查询消耗和利润
export function getConsumeAndProfit(query) {
  return request({
    url: '/business-order/snapshot/consumeAndProfit',
    method: 'get',
    params: query
  })
}
// 查询审批通过记录快照列表
export function listSnapshot(query) {
  return request({
    url: '/business-order/snapshot/list',
    method: 'get',
    params: query
  })
}

// 查询审批通过记录快照详细
export function getSnapshot(id) {
  return request({
    url: '/business-order/snapshot/' + id,
    method: 'get'
  })
}

// 新增审批通过记录快照
export function addSnapshot(data) {
  return request({
    url: '/business-order/snapshot',
    method: 'post',
    data: data
  })
}

// 修改审批通过记录快照
export function updateSnapshot(data) {
  return request({
    url: '/business-order/snapshot',
    method: 'put',
    data: data
  })
}

// 删除审批通过记录快照
export function delSnapshot(id) {
  return request({
    url: '/business-order/snapshot/' + id,
    method: 'delete'
  })
}

// 导出审批通过记录快照
export function exportSnapshot(query) {
  return request({
    url: '/business-order/snapshot/export',
    method: 'get',
    params: query
  })
}
