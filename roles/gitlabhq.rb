name "gitlabhq"
description "gitLabhq web app"

run_list(
  "recipe[ruby]",
  "recipe[ruby::gem_package]",
  "recipe[gitlabhq::passenger]"
)

default_attributes "passenger" => { "version" => "3.0.11" } 
