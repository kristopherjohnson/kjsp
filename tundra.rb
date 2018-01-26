# "Tundra"
# by Kristopher Johnson
#
# Inspired by Thomas Köner's early albums, especially "Permafrost"

live_loop :drone do
  rate = rrand(0.21, 0.24)
  pan = rrand(-0.3, -0.3)
  
  sample :ambi_drone, attack: 3, rate: rate, pan: pan
  
  sleep 13.1
end

live_loop :dark_whoosh do
  sleep 17 + rrand(0, 5)
  
  rate = rrand(0.20, 0.35)
  pan = rrand(-0.8, 0.8)
  amp = rrand(0.5, 0.9)
  
  sample :ambi_dark_woosh, rate: rate, pan: pan, amp: amp, attack: 1, release: 1
end

live_loop :swoosh do
  sleep 29 + rrand(0, 5)
  
  rate = rrand(0.30, 0.45)
  pan = rrand(-0.8, 0.8)
  amp = rrand(0.5, 0.9)
  
  sample :ambi_swoosh, rate: rate, pan: pan, amp: amp, attack: 1, release: 1
end

live_loop :choir do
  sleep 7 + rrand(0, 3)
  
  rate = choose([0.05, 0.067, 0.1, 0.133])
  pan = rrand(-0.5, 0.5)
  amp = rrand(0.5, 0.9)
  
  sample :ambi_choir, rate: rate, pan: pan, amp: amp
end

live_loop :glitch do
  sleep 45 + rrand(0, 60)
  
  with_fx :reverb do
    sample_name = choose([:glitch_perc1, :glitch_perc3, :glitch_perc5, :misc_burp, :misc_crow])
    
    rate = rrand(0.03, 0.06)
    rate = -rate if one_in(2)
    
    pan = rrand(-0.9, 0.9)
    
    sample sample_name, rate: rate, pan: pan, attack: 0.5, release: 0.5, amp: 0.66
  end
end
