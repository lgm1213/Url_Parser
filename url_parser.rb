class UrlParser

	def initialize(new_url)
		@new_url = new_url
	end

	def scheme
		@scheme = @new_url.split(":").first
	end

	def domain
		@domain = @new_url.split("//").last.split(":").first
	end

	def port
		@port = @new_url.split(":").last.split("/").first
		if @port == "" && scheme == "http"
			return "80"
		elsif @port == "" && scheme == "https"
			return "443"
		else
			@port
		end
	end

	def path
		@path = @new_url.split("/").last.split("?").first
		if @path == ""
			return nil
		else
			@path
		end
	end

	def query_string
		@query_string = @new_url.split("?").last.split("#").first
    	@query_string_zero = @query_string.split("&")
    	@query_string_zero.map! do |value|
       		value.split("=")
   		end
		@query_string_zero.to_h
	end

	def fragment_id
		@fragment_id = @new_url.split("#").last
	end


end

#comment



#~/Desktop/WynCode/url_parser/url_parser.rb
