class DevelopmentMailInterceptor
	 def self.delivering_email(message)
	 	message.subject = "#{message.to} #{message.subject}"
    message.to = 'seonggwan.lee@gmail.com'
  end
end