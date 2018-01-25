# "Tundra"
#
# Inspired by Thomas Köner's early albums, especially "Permafrost"

live_loop :drone do
  sample :ambi_drone, rate: rrand(0.20, 0.24)
  sleep 13.1
end

live_loop :dark_whoosh do
  sleep 17.3
  sample :ambi_dark_woosh, rate: rrand(0.28, 0.32), pan: rrand(-0.8, 0.8), amp: rrand(0.6, 1.0)
end

live_loop :swoosh do
  sleep 29.3
  sample :ambi_swoosh, rate: rrand(0.38, 0.42), pan: rrand(-0.8, 0.8), amp: rrand(0.6, 1.0)
end

live_loop :choir do
  sleep 7.1
  sample :ambi_choir, rate: choose([0.05, 0.067, 0.1, 0.133]), pan: rrand(-0.5, 0.5), amp: rrand(0.5, 0.9)
end
