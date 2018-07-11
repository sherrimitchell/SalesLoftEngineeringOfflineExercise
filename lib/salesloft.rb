class Salesloft
	include HTTParty
	base_uri = 'https://api.salesloft.com/v2'

# Get people data (name, email, job title). Setting page size to 2 to get first 50 results
	def get_people_info(page_size=2)
		options = {
			headers: headers,
			query: { page_size: page_size }
		}
		result = self.class.get("/people/#{display_name}/#{email_address}/#{title}", options)
	end

	private
# Auth is Bearer token. Access token stored as environment variable.
	def headers
      {
        "Authorization" => "Bearer #{ENV.fetch("SALESLOFT_ACCESS_TOKEN")}"
      }
    end
end
