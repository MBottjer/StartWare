json.products @products do |json, product|

  json.name product.product_name
  json.description product.description
  json.category product.category_id
  json.photo product.photo.url
  json.company product.company_name
  json.company_url product.company_url
  json.facebook product.facebook_url
  json.twitter product.twitter_url
  json.product_url product.product_url

end