class Github
  def top_starred
    begin
      results = RestClient::Request.execute(method: :get, url: 'https://api.github.com/search/repositories?q=user:jonathanwthom&sort=stars&order=desc&per_page=100', headers: {Authorization: ENV['GITHUB_ACCESS_TOKEN']})
      JSON.parse(results)['items'].first(5)
    rescue RestClient::ExceptionWithResponse => e
      e.response
      puts e.response
      ## failure works, but hard to test with spec as there are no arguments to give
    end
  end

  def recently_updated
    begin
      results = RestClient::Request.execute(method: :get, url: 'https://api.github.com/search/repositories?q=user:jonathanwthom&sort=updated', headers: {Authorization: ENV['GITHUB_ACCESS_TOKEN']})
      JSON.parse(results)['items'].first(5)
    rescue RestClient::ExceptionWithResponse => e
      e.response
      puts e.response
        ## failure works, but hard to test with spec as there are no arguments to give
    end
  end
end
