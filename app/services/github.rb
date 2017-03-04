class Github
  def initialize(user)
    @user = user
  end

  ### would prefer to not pass in an argument of the user, but that's what allowed me to test for failure condition of api
  def top_starred
    begin
      results = RestClient::Request.execute(method: :get, url: "https://api.github.com/search/repositories?q=user:#{@user}&sort=stars&order=desc&per_page=100", headers: {Authorization: ENV['GITHUB_ACCESS_TOKEN']})
      JSON.parse(results)['items'].first(5)
    rescue RestClient::ExceptionWithResponse => e
      puts e.response
      e.response
    end
  end

  def recently_updated
    begin
      results = RestClient::Request.execute(method: :get, url: "https://api.github.com/search/repositories?q=user:#{@user}&sort=updated", headers: {Authorization: ENV['GITHUB_ACCESS_TOKEN']})
      JSON.parse(results)['items'].first(5)
    rescue RestClient::ExceptionWithResponse => e
      puts e.response
      e.response
    end
  end
end
