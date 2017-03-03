class Github
  def top_starred
    results = RestClient.get("https://api.github.com/users/jonathanwthom/repos?per_page=100", headers: {"authorization": ENV['GITHUB_ACCESS_TOKEN'] })
    stars = JSON.parse(results).sort_by { |k| k["stargazers_count"] }
    stars.last(5).reverse
  end

  def recently_updated
    results = RestClient.get("https://api.github.com/users/jonathanwthom/repos?per_page=100", headers: {"authorization": ENV['GITHUB_ACCESS_TOKEN'] })
    recent = JSON.parse(results).sort_by { |k| k["updated_at"] }
    recent.last(5).reverse
  end
end
