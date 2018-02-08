# "Ambi"
# by Kristopher Johnson

live_loop :ambi do
  s = choose([:ambi_glass_rub, :ambi_glass_hum, :ambi_drone, :ambi_piano])
  fx = choose([:reverb, :echo, :flanger, :distortion, :tremolo, :lpf, :gverb, :ixi_techno, :ring_mod])
  pan = rrand(-0.9, 0.9)
  rate = rrand(0.2, 0.5)
  amp = rrand(0.4, 0.6)
  
  with_fx fx do
    sample s, rate: rate, pan: pan, amp: amp, attack: 2, release: 2
  end
  
  duration = sample_duration(s) / rate
  sleep duration * rrand(0.1, 0.6)
end
