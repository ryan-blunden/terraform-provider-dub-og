data "dub_tag" "my_tag" {
  array_of_str = [
    "..."
  ]
  page       = 1
  page_size  = 50
  search     = "...my_search..."
  sort_by    = "createdAt"
  sort_order = "desc"
  str        = "...my_str..."
}