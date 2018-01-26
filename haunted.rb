# "Haunted"
# by Kristopher Johnson

define :play_sample do |s, rate: 1.0, pan: 0.0, amp: 1.0|
  duration = sample_duration(s) * (1.0 / rate)
  with_fx :echo, decay: 4 do
    with_fx :reverb do
      sample s, rate: rate, pan: pan, amp: amp
    end
  end
  sleep duration
end

live_loop :main do
  play_sample :ambi_glass_rub, rate: 0.10
end

live_loop :hum do
  rate = rrand(0.5, 0.10)
  pan = rrand(-0.2, 0.2)
  play_sample :ambi_haunted_hum, rate: rate, pan: pan, amp: 0.2
end

live_loop :tabla do
  sleep rrand(15, 45)
  
  s = choose([:tabla_tas1, :tabla_tas2, :tabla_tas3, :tabla_na, :tabla_na_o, :tabla_tun1, :tabla_tun2, :tabla_tun3])
  pan = rrand(-0.9, 0.9)
  play_sample s, pan: pan, amp: 0.05
end
