# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#
#PROGRAMS
#
yamanade = Program.create(title: 'Yamato Nadeshiko Shichi Henge', description: 'Four college students befriend a shut-in', format: 'Renzoku')
gokusen = Program.create(title: 'Gokusen', description: 'A teacher from a yakuza family helps teenage delinquents to turn their lives around', format: 'Renzoku')
hanadan = Program.create(title: 'Hana Yori Dango', description: 'A poor girl teaches a rich bully to be human again', format: 'Renzoku')


#
# PARTS
#
ynS01 = Part.create(title: 'Series 1', program_id: yamanade.id)
gksS01 = Part.create(title: 'Gokusen 1', program_id: gokusen.id)
gksSP01 = Part.create(title: 'Gokusen SP 1', program_id: gokusen.id)
gksS02 = Part.create(title: 'Gokusen 2', program_id: gokusen.id)
gksSP02 = Part.create(title: 'Gokusen SP 2', program_id: gokusen.id)
gksS03 = Part.create(title: 'Gokusen 3', program_id: gokusen.id)
gksSP03 = Part.create(title: 'Gokusen SP 3', program_id: gokusen.id)
gksMovie = Part.create(title: 'Gokusen the Movie', program_id: gokusen.id)
hydS01 = Part.create(title: 'Hana Yori Dango 1', program_id: hanadan.id)
hydS02 = Part.create(title: 'Hana Yori Dango 2', program_id: hanadan.id)
hydMovie = Part.create(title: 'Hana Yori Dango Final', program_id: hanadan.id)


#
#EPISODES
#

#YamaNade
ynS01E01 = Episode.create(title: 'Episode 1', description: 'The bording house gains a new resident.', length: 3128, part_id: ynS01.id)
ynS01E02 = Episode.create(title: 'Episode 2', description: 'Kyohei is determined to earn his free rent.', length: 2945, part_id: ynS01.id)
ynS01E03 = Episode.create(title: 'Episode 3', description: '', length: 2645, part_id: ynS01.id)
ynS01E04 = Episode.create(title: 'Episode 4', description: '', length: 2975, part_id: ynS01.id)
ynS01E05 = Episode.create(title: 'Episode 5', description: '', length: 2943, part_id: ynS01.id)
ynS01E06 = Episode.create(title: 'Episode 6', description: '', length: 2747, part_id: ynS01.id)
ynS01E07 = Episode.create(title: 'Episode 7', description: '', length: 2845, part_id: ynS01.id)
ynS01E08 = Episode.create(title: 'Episode 8', description: '', length: 2965, part_id: ynS01.id)
ynS01E09 = Episode.create(title: 'Episode 9', description: '', length: 2775, part_id: ynS01.id)
ynS01E10 = Episode.create(title: 'Episode 10', description: '', length: 2963, part_id: ynS01.id)

#Gokusen
gksS01E01 = Episode.create(title: 'Episode 1', description: '', length: 3128, part_id: gksS01.id)
gksS01E02 = Episode.create(title: 'Episode 2', description: '', length: 2945, part_id: gksS01.id)
gksS01E03 = Episode.create(title: 'Episode 3', description: '', length: 2645, part_id: gksS01.id)
gksS01E04 = Episode.create(title: 'Episode 4', description: '', length: 2975, part_id: gksS01.id)
gksS01E05 = Episode.create(title: 'Episode 5', description: '', length: 2943, part_id: gksS01.id)
gksS01E06 = Episode.create(title: 'Episode 6', description: '', length: 2747, part_id: gksS01.id)
gksS01E07 = Episode.create(title: 'Episode 7', description: '', length: 2845, part_id: gksS01.id)
gksS01E08 = Episode.create(title: 'Episode 8', description: '', length: 2965, part_id: gksS01.id)
gksS01E09 = Episode.create(title: 'Episode 9', description: '', length: 2775, part_id: gksS01.id)
gksS01E10 = Episode.create(title: 'Episode 10', description: '', length: 2963, part_id: gksS01.id)

gksSP01E01 = Episode.create(title: 'Special 1', description: '', length: 3128, part_id: gksSP01.id)

gksS02E01 = Episode.create(title: 'Episode 1', description: '', length: 3128, part_id: gksS02.id)
gksS02E02 = Episode.create(title: 'Episode 2', description: '', length: 2945, part_id: gksS02.id)
gksS02E03 = Episode.create(title: 'Episode 3', description: '', length: 2645, part_id: gksS02.id)
gksS02E04 = Episode.create(title: 'Episode 4', description: '', length: 2975, part_id: gksS02.id)
gksS02E05 = Episode.create(title: 'Episode 5', description: '', length: 2943, part_id: gksS02.id)
gksS02E06 = Episode.create(title: 'Episode 6', description: '', length: 2747, part_id: gksS02.id)
gksS02E07 = Episode.create(title: 'Episode 7', description: '', length: 2845, part_id: gksS02.id)
gksS02E08 = Episode.create(title: 'Episode 8', description: '', length: 2965, part_id: gksS02.id)
gksS02E09 = Episode.create(title: 'Episode 9', description: '', length: 2775, part_id: gksS02.id)
gksS02E10 = Episode.create(title: 'Episode 10', description: '', length: 2963, part_id: gksS02.id)

gksSP02E01 = Episode.create(title: 'Special 2', description: '', length: 3128, part_id: gksSP02.id)

gksS03E01 = Episode.create(title: 'Episode 1', description: '', length: 3128, part_id: gksS03.id)
gksS03E02 = Episode.create(title: 'Episode 2', description: '', length: 2945, part_id: gksS03.id)
gksS03E03 = Episode.create(title: 'Episode 3', description: '', length: 2645, part_id: gksS03.id)
gksS03E04 = Episode.create(title: 'Episode 4', description: '', length: 2975, part_id: gksS03.id)
gksS03E05 = Episode.create(title: 'Episode 5', description: '', length: 2943, part_id: gksS03.id)
gksS03E06 = Episode.create(title: 'Episode 6', description: '', length: 2747, part_id: gksS03.id)
gksS03E07 = Episode.create(title: 'Episode 7', description: '', length: 2845, part_id: gksS03.id)
gksS03E08 = Episode.create(title: 'Episode 8', description: '', length: 2965, part_id: gksS03.id)
gksS03E09 = Episode.create(title: 'Episode 9', description: '', length: 2775, part_id: gksS03.id)
gksS03E10 = Episode.create(title: 'Episode 10', description: '', length: 2963, part_id: gksS03.id)

gksSP03E01 = Episode.create(title: 'Special 3', description: '', length: 3128, part_id: gksSP03.id)

gksMovieE01 = Episode.create(title: 'Gokusen the Movie', description: '', length: 3128, part_id: gksMovie.id)

#Hana Yori Dango
hydS01E01 = Episode.create(title: 'Episode 1', description: '', length: 3128, part_id: hydS01.id)
hydS01E02 = Episode.create(title: 'Episode 2', description: '', length: 2945, part_id: hydS01.id)
hydS01E03 = Episode.create(title: 'Episode 3', description: '', length: 2645, part_id: hydS01.id)
hydS01E04 = Episode.create(title: 'Episode 4', description: '', length: 2975, part_id: hydS01.id)
hydS01E05 = Episode.create(title: 'Episode 5', description: '', length: 2943, part_id: hydS01.id)
hydS01E06 = Episode.create(title: 'Episode 6', description: '', length: 2747, part_id: hydS01.id)
hydS01E07 = Episode.create(title: 'Episode 7', description: '', length: 2845, part_id: hydS01.id)
hydS01E08 = Episode.create(title: 'Episode 8', description: '', length: 2965, part_id: hydS01.id)
hydS01E09 = Episode.create(title: 'Episode 9', description: '', length: 2775, part_id: hydS01.id)
hydS01E10 = Episode.create(title: 'Episode 10', description: '', length: 2963, part_id: hydS01.id)
hydS01E11 = Episode.create(title: 'Episode 11', description: '', length: 2963, part_id: hydS01.id)

hydS02E01 = Episode.create(title: 'Episode 1', description: '', length: 3128, part_id: hydS02.id)
hydS02E02 = Episode.create(title: 'Episode 2', description: '', length: 2945, part_id: hydS02.id)
hydS02E03 = Episode.create(title: 'Episode 3', description: '', length: 2645, part_id: hydS02.id)
hydS02E04 = Episode.create(title: 'Episode 4', description: '', length: 2975, part_id: hydS02.id)
hydS02E05 = Episode.create(title: 'Episode 5', description: '', length: 2943, part_id: hydS02.id)
hydS02E06 = Episode.create(title: 'Episode 6', description: '', length: 2747, part_id: hydS02.id)
hydS02E07 = Episode.create(title: 'Episode 7', description: '', length: 2845, part_id: hydS02.id)
hydS02E08 = Episode.create(title: 'Episode 8', description: '', length: 2965, part_id: hydS02.id)
hydS02E09 = Episode.create(title: 'Episode 9', description: '', length: 2775, part_id: hydS02.id)

hydMovieE01 = Episode.create(title: 'Hana Yori Dango Final', description: '', length: 2963, part_id: hydMovie.id)