
 package = "lua-gozerian"
 version = "scm-1"
 source = {
    url = "git://github.com/30x/lua-gozerian"
 }
 description = {
    summary = "Call gozerian runtime from nginx/openresty",
    detailed = [[
      This module runs gozerian functions from ngx/openresty
    ]],
    homepage = "https://github.com/30x/lua-gozerian",
    license = "Apache-2.0"
 }
 dependencies = {
    "lua ~> 5.1"
 }
 build = {
    type = "builtin",
    modules = {
      ["lua-gozerian"] = "lib/resty/gozerian/lua-gozerian.lua"
    },
    install = {
      lua = {
        ["gozerian-init"] = "lib/resty/gozerian/gozerian-init.lua",
        ["c"] = "lib/resty/gozerian/c.lua",
        ["gozerian-body-filter"] = "lib/resty/gozerian/gozerian-body-filter.lua",
        ["gozerian-common"] = "lib/resty/gozerian/gozerian-common.lua",
        ["gozerian-header-filter"] = "lib/resty/gozerian/gozerian-header-filter.lua",
        ["gozerian-request"] = "lib/resty/gozerian/gozerian-request.lua"
      }
    }

 }