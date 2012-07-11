
Rails.application.config.middleware.use OmniAuth::Builder do
     provider :facebook, '326792767407844', 'b596abda8297948894ec22022d596ab0',
             :scope => %(email, publish_stream offline_access), 
             :client_options => {:ssl => {:ca_file => "fbgraph/cacert.pem"}}  #local FB api
end
