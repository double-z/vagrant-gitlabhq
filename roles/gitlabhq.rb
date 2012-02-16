name "gitlabhq"
description "gitLabhq web app"

run_list(
  "recipe[gitolite]",
  "recipe[gitlabhq]"
)
