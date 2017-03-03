class Github
  def top_starred
    begin
      results = RestClient.get("https://api.github.com/users/jonathanwthom/repos?per_page=100", headers: {"authorization": ENV['GITHUB_ACCESS_TOKEN'] })
      stars = JSON.parse(results).sort_by { |k| k["stargazers_count"] }
      stars.last(5).reverse
    rescue RestClient::ExceptionWithResponse => e
      e.response['message']
    end
  end

  def recently_updated
    begin
      results = RestClient.get("https://api.github.com/users/jonathanwthom/repos?per_page=100", headers: {"authorization": ENV['GITHUB_ACCESS_TOKEN'] })
      recent = JSON.parse(results).sort_by { |k| k["updated_at"] }
      recent.last(5).reverse
    rescue RestClient::ExceptionWithResponse => e
      e.response['message']
    end
  end
end
