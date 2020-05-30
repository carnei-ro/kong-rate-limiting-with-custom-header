return {
  postgres = {
    up = [[
      CREATE INDEX IF NOT EXISTS ratelimiting_with_custom_header_metrics_idx ON ratelimiting_with_custom_header_metrics (service_id, route_id, period_date, period);
    ]],
  },

  cassandra = {
    up = [[
    ]],
  },
}
