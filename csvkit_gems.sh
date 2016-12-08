 curl https://api.github.com/users/spinupol/starred | jq '[.[] | {name: .name, type: .owner.type, stars: .stargazers_count, forks: .forks, lang: .language}]' |in2csv -f json -v | csvsort -r -c stars | csvlook

