puts (2..4).inject([0,1]) { |memo, v| memo << memo[v-1] + memo[v-2] }[4]
