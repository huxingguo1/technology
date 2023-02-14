import request from '@/utils/request'

// 查询动态配置列表
export function listDynamicConfig(query) {
  return request({
    url: '/system/dynamicConfig/list',
    method: 'get',
    params: query
  })
}

// 查询动态配置详细
export function getDynamicConfig(id) {
  return request({
    url: '/system/dynamicConfig/' + id,
    method: 'get'
  })
}

// 新增动态配置
export function addDynamicConfig(data) {
  return request({
    url: '/system/dynamicConfig',
    method: 'post',
    data: data
  })
}

// 修改动态配置
export function updateDynamicConfig(data) {
  return request({
    url: '/system/dynamicConfig',
    method: 'put',
    data: data
  })
}

// 删除动态配置
export function delDynamicConfig(id) {
  return request({
    url: '/system/dynamicConfig/' + id,
    method: 'delete'
  })
}

// 导出动态配置
export function exportDynamicConfig(query) {
  return request({
    url: '/system/dynamicConfig/export',
    method: 'get',
    params: query
  })
}