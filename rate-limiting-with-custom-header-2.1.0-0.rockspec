package = "rate-limiting-with-custom-header"
version = "2.1.0-0"

source = {
 url    = "git@github.com:carnei-ro/rate-limiting-with-custom-header.git",
 branch = "master"
}

description = {
  summary = "Rate Limiting with support to Custom Header Identifier",
}

dependencies = {
  "lua ~> 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.rate-limiting-with-custom-header.migrations"] = "src/migrations/init.lua",
    ["kong.plugins.rate-limiting-with-custom-header.migrations.000_base_rate_limiting"] = "src/migrations/000_base_rate_limiting.lua",
    ["kong.plugins.rate-limiting-with-custom-header.migrations.003_10_to_112"] = "src/migrations/003_10_to_112.lua",
    ["kong.plugins.rate-limiting-with-custom-header.handler"] = "src/handler.lua",
    ["kong.plugins.rate-limiting-with-custom-header.schema"] = "src/schema.lua",
    ["kong.plugins.rate-limiting-with-custom-header.daos"] = "src/daos.lua",
    ["kong.plugins.rate-limiting-with-custom-header.policies"] = "src/policies/init.lua",
    ["kong.plugins.rate-limiting-with-custom-header.policies.cluster"] = "src/policies/cluster.lua",
  }
}
