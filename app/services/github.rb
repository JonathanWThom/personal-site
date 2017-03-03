class Github
  def top_starred
    begin
      results = RestClient::Request.execute(method: :get, url: 'https://api.github.com/users/jonathanwthom/repos?per_page=100', headers: {Authorization: ENV['GITHUB_ACCESS_TOKEN']})
      stars = JSON.parse(results).sort_by { |k| k["stargazers_count"] }
      stars.last(5).reverse
    rescue RestClient::ExceptionWithResponse => e
      e.response
      puts e.response
    end
  end

  def recently_updated
    begin
      results = RestClient::Request.execute(method: :get, url: 'https://api.github.com/users/jonathanwthom/repos?per_page=100', headers: {Authorization: ENV['GITHUB_ACCESS_TOKEN']})
      recent = JSON.parse(results).sort_by { |k| k["updated_at"] }
      recent.last(5).reverse
    rescue RestClient::ExceptionWithResponse => e
      e.response
      puts e.response
    end
  end

  def profile_pic
    begin
      results = RestClient::Request.execute(method: :get, url: "https://api.github.com/users/jonathanwthom", headers: {Authorization: ENV['GITHUB_ACCESS_TOKEN']})
      profile_pic = JSON.parse(results)['avatar_url']
    rescue RestClient::ExceptionWithResponse => e
      e.response
      puts e.response
    end
  end
end
