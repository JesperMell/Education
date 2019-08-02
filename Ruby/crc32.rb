require 'zlib'

module CRC
  Divisor = [0,1,2,4,5,7,8,10,11,12,14,22,23,26,32]
    .inject(0) {|sum, exp| sum + (1 << (32 - exp))}

  Table = Array.new(256) do |octet|
    remainder = octet
    (0..7).each do |i|
      if !remainder[i].zero?
        remainder ^= (Divisor << i)
      end
    end
    remainder >> 8
  end

  module_function

  def crc32(string, crc = 0)
    crc ^= 0xffff_ffff
    string.each_byte do |octet|
      remainder_1 = crc >> 8
      remainder_2 = Table[(crc & 0xff) ^ octet]

      crc = remainder_1 ^ remainder_2
    end
    crc ^ 0xffff_ffff
  end
end

