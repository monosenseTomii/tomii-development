Rails.application.config.session_store :redis_store, {
  servers: [
   {
     host: ENV['REDIS_HOST'] || 'redis',
     port: ENV['REDIS_PORT'] || 6379,
     db: 0,
     namespace: 'session'
   }
  ],
  expire_after: 10.minutes
}
