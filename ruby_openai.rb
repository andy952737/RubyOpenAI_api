require "ruby/openai"
# puts "hello world"



print "請說話 say_name: "
say_name = gets

if say_name != "" 

	client = OpenAI::Client.new(
		access_token: "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"
	)  

	response = client.completions( 
	    parameters: {
	        model: "text-davinci-003",
	        prompt: say_name, 
	        max_tokens: 4000
	    })

	puts response["choices"].map { |c| c["text"] }
	# exec response["choices"].map { |c| c["text"] }
	system "say #{response["choices"].map { |c| c["text"] }}"
end
