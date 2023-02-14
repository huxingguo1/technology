import request from '@/utils/request'

// 查询业务订单记录列表
export function listRecords(query) {
  return request({
    url: '/business-order/records/list',
    method: 'get',
    params: query
  })
}

// 查询业务订单记录详细
export function getRecords(id) {
  return request({
    url: '/business-order/records/' + id,
    method: 'get'
  })
}

// 新增业务订单记录
export function addRecords(data) {
  return request({
    url: '/business-order/records',
    method: 'post',
    data: data
  })
}

// 修改业务订单记录
export function updateRecords(data) {
  return request({
    url: '/business-order/records',
    method: 'put',
    data: data
  })
}

// 审核业务订单记录
export function approvedRecords(data) {
  return request({
    url: '/business-order/records/approved',
    method: 'put',
    data: data
  })
}

// 删除业务订单记录
export function delRecords(id) {
  return request({
    url: '/business-order/records/' + id,
    method: 'delete'
  })
}

// 导出业务订单记录
export function exportRecords(query) {
  return request({
    url: '/business-order/records/export',
    method: 'get',
    params: query
  })
}
