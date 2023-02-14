import request from '@/utils/request'

// 查询文件仓库-测试用列表
export function listFileStore(query) {
  return request({
    url: '/system/fileStore/list',
    method: 'get',
    params: query
  })
}

// 查询文件仓库-测试用详细
export function getFileStore(id) {
  return request({
    url: '/system/fileStore/' + id,
    method: 'get'
  })
}

// 新增文件仓库-测试用
export function addFileStore(data) {
  return request({
    url: '/system/fileStore',
    method: 'post',
    data: data
  })
}

// 修改文件仓库-测试用
export function updateFileStore(data) {
  return request({
    url: '/system/fileStore',
    method: 'put',
    data: data
  })
}

// 删除文件仓库-测试用
export function delFileStore(id) {
  return request({
    url: '/system/fileStore/' + id,
    method: 'delete'
  })
}

// 导出文件仓库-测试用
export function exportFileStore(query) {
  return request({
    url: '/system/fileStore/export',
    method: 'get',
    params: query
  })
}