


@new_url = "http://www.google.com:60/search?q=cat&q=overwrite#img=FunnyCat"
#.split("?").last.split("#").first.split("&").first.split("=")


# def query_string
# 	@query_string = @new_url.split("?").last.split("#").first
#     @split1 = @query_string.split("&")
#     @split1.map! do |value|
#        value.split("=")
#    end
# @split1.to_h
# end


def query_string
		@query_string = @new_url.split("?").last.split("#").first.split("&").first.split("=")
		@query_string = Hash[*query_string_zero.flatten]
	end	

p query_string
# Bhash = Hash[keys, value]
