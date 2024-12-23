#!/bin/bash

rm README.md

########
# 2024 #
########

cat << EOF >> README.md
# 🎄 AoC - 2024
Here you can find some solutions to Advent of Code 2024.

 |  ☃️  |  🧰  |  ⭐  |
 | :--: | :--: | :-: |
EOF

curl --cookie "session=$COOKIE" -XGET https://adventofcode.com/2024/leaderboard/private/view/1065002.json 2>/dev/null > leaderboard2024.json

data=$(jq '.members | flatten | sort_by(.stars) | reverse | .[] | {name: .name, stars: .stars}' leaderboard2024.json | sed 's/Uri/Adrian-Uri/' | sed 's/calvo111979/anatxiki/' | sed 's/Jesús Arellano/jesusarell/' | sed 's/0rb3/i97orbegozo/')

echo $data | jq -j '.name," ",.stars,"\n"' | \
awk 'BEGIN{
        langs["lassa97"]    ="*"
        langs["vLabayen"]   ="*"
        langs["anatxiki"]   ="*"
        langs["jartigag"]   ="Bash and Python Jupyter Notebook"
        langs["mariaove"]   ="*"
        langs["jesusarell"] ="*"
        langs["i97orbegozo"]="*"
        langs["rubenmate"]  ="*"
        langs["Adrian-Uri"] ="*"
        langs["clarriu97"]  ="*"
    }
    {print" | [@"$1"](https://github.com/"$1")| ["langs[$1]"](https://github.com/TLMn00bs/advent-of-code/tree/master/"$1") | "$2" |"}' >> README.md

########
# 2023 #
########

cat << EOF >> README.md
# 🎄 AoC - 2023
Here you can find some solutions to Advent of Code 2023.

 |  ☃️  |  🧰  |  ⭐  |
 | :--: | :--: | :-: |
EOF

curl --cookie "session=$COOKIE" -XGET https://adventofcode.com/2023/leaderboard/private/view/1065002.json 2>/dev/null > leaderboard2023.json

data=$(jq '.members | flatten | sort_by(.stars) | reverse | .[] | {name: .name, stars: .stars}' leaderboard2023.json | sed 's/Uri/Adrian-Uri/' | sed 's/calvo111979/anatxiki/' | sed 's/Jesús Arellano/jesusarell/' | sed 's/0rb3/i97orbegozo/')

echo $data | jq -j '.name," ",.stars,"\n"' | \
awk 'BEGIN{
        langs["lassa97"]    ="*"
        langs["vLabayen"]   ="Python"
        langs["anatxiki"]   ="Python"
        langs["jartigag"]   ="Python"
        langs["mariaove"]   ="*"
        langs["jesusarell"] ="*"
        langs["i97orbegozo"]="*"
        langs["rubenmate"]  ="*"
        langs["Adrian-Uri"] ="*"
        langs["clarriu97"]  ="Python"
    }
    {print" | [@"$1"](https://github.com/"$1")| ["langs[$1]"](https://github.com/TLMn00bs/advent-of-code/tree/master/"$1") | "$2" |"}' >> README.md

########
# 2022 #
########

cat << EOF >> README.md
# 🎄 AoC - 2022
Here you can find some solutions to Advent of Code 2022.

 |  ☃️  |  🧰  |  ⭐  |
 | :--: | :--: | :-: |
EOF

curl --cookie "session=$COOKIE" -XGET https://adventofcode.com/2022/leaderboard/private/view/1065002.json 2>/dev/null > leaderboard2022.json

data=$(jq '.members | flatten | sort_by(.stars) | reverse | .[] | {name: .name, stars: .stars}' leaderboard2022.json | sed 's/Uri/Adrian-Uri/' | sed 's/calvo111979/anatxiki/' | sed 's/Jesús Arellano/jesusarell/' | sed 's/0rb3/i97orbegozo/')

echo $data | jq -j '.name," ",.stars,"\n"' | \
awk 'BEGIN{
        langs["lassa97"]    ="*"
        langs["vLabayen"]   ="Python"
        langs["anatxiki"]   ="*"
        langs["jartigag"]   ="*"
        langs["mariaove"]   ="*"
        langs["jesusarell"] ="*"
        langs["i97orbegozo"]="*"
    }
    {print" | [@"$1"](https://github.com/"$1")| ["langs[$1]"](https://github.com/TLMn00bs/advent-of-code/tree/master/"$1") | "$2" |"}' >> README.md

########
# 2021 #
########

cat << EOF >> README.md
# 🎄 AoC - 2021
Here you can find some solutions to Advent of Code 2021.

 |  ☃️  |  🧰  |  ⭐  |
 | :--: | :--: | :-: |
EOF

curl --cookie "session=$COOKIE" -XGET https://adventofcode.com/2021/leaderboard/private/view/1065002.json 2>/dev/null > leaderboard2021.json

data=$(jq '.members | flatten | sort_by(.stars) | reverse | .[] | {name: .name, stars: .stars}' leaderboard2021.json | sed 's/Uri/Adrian-Uri/' | sed 's/calvo111979/anatxiki/' | sed 's/Jesús Arellano/jesusarell/' | sed 's/0rb3/i97orbegozo/')

echo $data | jq -j '.name," ",.stars,"\n"' | \
awk 'BEGIN{
        langs["lassa97"]    ="Python (after day 3, using grinch.py to grab solutions from other people)"
        langs["vLabayen"]   ="Python (Rust a few days later)"
        langs["anatxiki"]   ="Python (Rust a few days later)"
        langs["jartigag"]   ="Typescript"
        langs["mariaove"]   ="Java"
        langs["jesusarell"] ="Python"
        langs["i97orbegozo"]="Python"
    }
    {print" | [@"$1"](https://github.com/"$1")| ["langs[$1]"](https://github.com/TLMn00bs/advent-of-code/tree/master/"$1") | "$2" |"}' >> README.md

########
# 2020 #
########

cat << EOF >> README.md

# 🎄 AoC - 2020
Here you can find some solutions to Advent of Code 2020.

 |  ☃️  |  🧰  |  ⭐  |
 | :--: | :--: | :-: |
EOF

curl --cookie "session=$COOKIE" -XGET https://adventofcode.com/2020/leaderboard/private/view/1065002.json 2>/dev/null > leaderboard2020.json

data=$(jq '.members | flatten | sort_by(.stars) | reverse | .[] | {name: .name, stars: .stars}' leaderboard2020.json | sed 's/Uri/Adrian-Uri/' | sed 's/calvo111979/anatxiki/' | sed 's/Jesús Arellano/jesusarell/' | sed 's/0rb3/i97orbegozo/')

# fix order:
data=$(echo $data | sed 's/{ "name": "lassa97", "stars": 50 } { "name": "vLabayen", "stars": 50 }/{ "name": "vLabayen", "stars": 50 } { "name": "lassa97", "stars": 50 }/')

echo $data | jq -j '.name," ",.stars,"\n"' | \
awk 'BEGIN{
        langs["lassa97"]    ="Python"
        langs["vLabayen"]   ="Python"
        langs["anatxiki"]   ="Python"
        langs["jartigag"]   ="Python"
        langs["mariaove"]   ="Java"
        langs["jesusarell"] ="Python"
    }
    {print" | [@"$1"](https://github.com/"$1")| ["langs[$1]"](https://github.com/TLMn00bs/advent-of-code/tree/master/"$1") | "$2" |"}' >> README.md

rm leaderboard*.json
