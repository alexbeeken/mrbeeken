# run with rails runner create_video_tiles.rb

Video.all.each { |v| v.delete }

Video.create(
  title: 'Musical Meter',
  url: 'https://youtu.be/Qkuqjrwlkxk',
  thumbnail: 'meter.jpg',
  post_date: DateTime.parse('Mar 16, 2016')
)

Video.create(
  title: 'How to Read a Time Signature',
  url: 'https://youtu.be/WVNZBKbYOc8',
  thumbnail: 'timesignatures.jpg',
  post_date: DateTime.parse('Mar 6, 2016')
)

Video.create(
  title: 'Augmented and Diminished Chords',
  url: 'https://youtu.be/SN16YiiRy0U',
  thumbnail: 'augmenteddiminishedchords.jpg',
  post_date: DateTime.parse('Nov 13, 2016')
)

Video.create(
  title: 'Major and Minor Chords',
  url: 'https://youtu.be/vVnuxRbu8uw',
  thumbnail: 'majorminorchords.jpg',
  post_date: DateTime.parse('Nov 7, 2016')
)

Video.create(
  title: 'Intervals Part 1',
  url: 'https://youtu.be/_UT7c-pqG0M',
  thumbnail: 'intervalspart1.jpg',
  post_date: DateTime.parse('Oct 16, 2016')
)

Video.create(
  title: 'Intervals Part 2',
  url: 'https://youtu.be/lCRaNiri7KU',
  thumbnail: 'intervalspart2.jpg',
  post_date: DateTime.parse('Oct 23, 2016')
)

Video.create(
  title: 'Intervals Part 3',
  url: 'https://youtu.be/PhcLzGTSjfI',
  thumbnail: 'intervalspart3.jpg',
  post_date: DateTime.parse('Oct 30, 2016')
)

Video.create(
  title: 'The Beat and Note Values',
  url: 'https://youtu.be/wEy0UvbICT8',
  thumbnail: 'thebeatandnotevalues.jpg',
  post_date: DateTime.parse('Mar 3, 2016')
)

Video.create(
  title: 'What Are Scales?',
  url: 'https://youtu.be/F4pT4s8hUVM',
  thumbnail: 'whatarescales.jpg',
  post_date: DateTime.parse('Feb 16, 2016')
)

Video.create(
  title: 'Whole and Half Steps',
  url: 'https://youtu.be/kW-Vv6bU2FA',
  thumbnail: 'wholehalfsteps.jpg',
  post_date: DateTime.parse('Feb 6, 2016')
)

Video.create(
  title: 'Note Names',
  url: 'https://youtu.be/aBqoXGLxBWU',
  thumbnail: 'notenames.jpg',
  post_date: DateTime.parse('Jan 29, 2016')
)

Video.create(
  title: 'Accidentals',
  url: 'https://youtu.be/VxyCEyv2-7A',
  thumbnail: 'sharpsandflats.jpg',
  post_date: DateTime.parse('Jan 28, 2016')
)
