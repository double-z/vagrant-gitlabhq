name "gitlabhq"
description "gitLabhq web app"

run_list(
  "recipe[ruby]",
  "recipe[gitolite]",
  "recipe[gitlabhq]"
)