def plainify(data)
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
  puts data
  data.slice(' ')
end
# test
