def plainify(data)
  result = []
  data.each do |key, name|
    name.each do |names|
      result << { band: key, song: names }
    end
  end
  result
end
data = {
  'Queen' => [
    'Bohemian Rhapsody',
    "Don't Stop Me Now"
  ],
  'Metallica' => [
    'Nothing Else Matters'
  ],
  "Guns N' Roses" => [
    'Paradise City',
    'November Rain'
  ],
  'AC/DC' => [
    'Thunderstruck',
    'Back In Black',
    'Shoot to Thrill'
  ]
}
puts plainify data
# test
# test1 = plainify(data)
# puts "#test error #{test}" if test !=  [
#   { band: 'Queen', song: 'Bohemian Rhapsody' },
#    { band: 'Queen', song: "Don't Stop Me Now" },
#    { band: 'Metallica', song: 'Nothing Else Matters' },
#    { band: "Guns N' Roses", song: 'Paradise City' },
#   { band: "Guns N' Roses", song: 'November Rain' },
#    { band: 'AC/DC', song: 'Thunderstruck' },
#    { band: 'AC/DC', song: 'Back In Black' },
#    { band: 'AC/DC', song: 'Shoot to Thrill' }
#  ]
