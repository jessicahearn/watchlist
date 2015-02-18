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


#
#USERS
#
kame = User.create(name: 'Kame', email: 'kame@kamekame.com')
jin = User.create(name: 'Jin', email:'aquaneesha@carshrimp.com')


#
#WATCH MARKERS
#
kameGKS = WatchMarker.create(user_id: kame.id, program_id: gokusen.id, notes: 'Ano toki no ano basho, kienai kono kizuna.')
kameHYD = WatchMarker.create(user_id: kame.id, program_id: hanadan.id, notes: 'Someone left a cake out in the rain.')
jinGKS = WatchMarker.create(user_id: jin.id, program_id: gokusen.id, notes: 'Formation H!')
jinGKS = WatchMarker.create(user_id: jin.id, program_id: yamanade.id, notes: 'Kimi ga kirai na kimi ga suki...')


#
#WATCH MARKER PARTS
#
kameGKSs01 = WatchMarkerPart.create(watch_marker_id: kameGKS.id, part_id: gksS01.id)
kameGKSsp01 = WatchMarkerPart.create(watch_marker_id: kameGKS.id, part_id: gksSP01.id)
kameGKSs02 = WatchMarkerPart.create(watch_marker_id: kameGKS.id, part_id: gksS02.id)
kameGKSsp02 = WatchMarkerPart.create(watch_marker_id: kameGKS.id, part_id: gksSP02.id)
kameGKSs03 = WatchMarkerPart.create(watch_marker_id: kameGKS.id, part_id: gksS03.id)
kameGKSsp03 = WatchMarkerPart.create(watch_marker_id: kameGKS.id, part_id: gksSP03.id)
kameGKSmovie = WatchMarkerPart.create(watch_marker_id: kameGKS.id, part_id: gksMovie.id)

jinGKSs01 = WatchMarkerPart.create(watch_marker_id: jinGKS.id, part_id: gksS01.id)
jinGKSsp01 = WatchMarkerPart.create(watch_marker_id: jinGKS.id, part_id: gksSP01.id)
jinGKSs02 = WatchMarkerPart.create(watch_marker_id: jinGKS.id, part_id: gksS02.id)
jinGKSsp02 = WatchMarkerPart.create(watch_marker_id: jinGKS.id, part_id: gksSP02.id)
jinGKSs03 = WatchMarkerPart.create(watch_marker_id: jinGKS.id, part_id: gksS03.id)
jinGKSsp03 = WatchMarkerPart.create(watch_marker_id: jinGKS.id, part_id: gksSP03.id)
jinGKSmovie = WatchMarkerPart.create(watch_marker_id: jinGKS.id, part_id: gksMovie.id)


#
#WATCH MARKER EPISODES
#

#Kame Gokusen
kameGKSs01e01 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs01.id, episode_id: gksS01E01.id, completed: true)
kameGKSs01e02 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs01.id, episode_id: gksS01E02.id)
kameGKSs01e03 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs01.id, episode_id: gksS01E03.id)
kameGKSs01e04 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs01.id, episode_id: gksS01E04.id)
kameGKSs01e05 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs01.id, episode_id: gksS01E05.id)
kameGKSs01e06 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs01.id, episode_id: gksS01E06.id)
kameGKSs01e07 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs01.id, episode_id: gksS01E07.id)
kameGKSs01e08 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs01.id, episode_id: gksS01E08.id)
kameGKSs01e09 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs01.id, episode_id: gksS01E09.id)
kameGKSs01e10 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs01.id, episode_id: gksS01E10.id)

kameGKSsp01e01 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSsp01.id, episode_id: gksSP01E01.id)

kameGKSs02e01 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs02.id, episode_id: gksS02E01.id)
kameGKSs02e02 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs02.id, episode_id: gksS02E02.id)
kameGKSs02e03 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs02.id, episode_id: gksS02E03.id)
kameGKSs02e04 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs02.id, episode_id: gksS02E04.id)
kameGKSs02e05 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs02.id, episode_id: gksS02E05.id)
kameGKSs02e06 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs02.id, episode_id: gksS02E06.id)
kameGKSs02e07 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs02.id, episode_id: gksS02E07.id)
kameGKSs02e08 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs02.id, episode_id: gksS02E08.id)
kameGKSs02e09 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs02.id, episode_id: gksS02E09.id)
kameGKSs02e10 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs02.id, episode_id: gksS02E10.id)

kameGKSsp02e01 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSsp02.id, episode_id: gksSP02E01.id)

kameGKSs03e01 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs03.id, episode_id: gksS03E01.id)
kameGKSs03e02 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs03.id, episode_id: gksS03E02.id)
kameGKSs03e03 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs03.id, episode_id: gksS03E03.id)
kameGKSs03e04 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs03.id, episode_id: gksS03E04.id)
kameGKSs03e05 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs03.id, episode_id: gksS03E05.id)
kameGKSs03e06 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs03.id, episode_id: gksS03E06.id)
kameGKSs03e07 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs03.id, episode_id: gksS03E07.id)
kameGKSs03e08 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs03.id, episode_id: gksS03E08.id)
kameGKSs03e09 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs03.id, episode_id: gksS03E09.id)
kameGKSs03e10 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSs03.id, episode_id: gksS03E10.id)

kameGKSsp03e01 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSsp03.id, episode_id: gksSP03E01.id)

kameGKSmovieE01 = WatchMarkerEpisode.create(watch_marker_part_id: kameGKSmovie.id, episode_id: gksMovieE01.id)

#Jin Gokusen
jinGKSs01e01 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs01.id, episode_id: gksS01E01.id)
jinGKSs01e02 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs01.id, episode_id: gksS01E02.id)
jinGKSs01e03 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs01.id, episode_id: gksS01E03.id)
jinGKSs01e04 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs01.id, episode_id: gksS01E04.id)
jinGKSs01e05 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs01.id, episode_id: gksS01E05.id)
jinGKSs01e06 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs01.id, episode_id: gksS01E06.id)
jinGKSs01e07 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs01.id, episode_id: gksS01E07.id)
jinGKSs01e08 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs01.id, episode_id: gksS01E08.id)
jinGKSs01e09 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs01.id, episode_id: gksS01E09.id)
jinGKSs01e10 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs01.id, episode_id: gksS01E10.id)

jinGKSsp01e01 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSsp01.id, episode_id: gksSP01E01.id)

jinGKSs02e01 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs02.id, episode_id: gksS02E01.id)
jinGKSs02e02 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs02.id, episode_id: gksS02E02.id)
jinGKSs02e03 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs02.id, episode_id: gksS02E03.id)
jinGKSs02e04 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs02.id, episode_id: gksS02E04.id)
jinGKSs02e05 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs02.id, episode_id: gksS02E05.id)
jinGKSs02e06 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs02.id, episode_id: gksS02E06.id)
jinGKSs02e07 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs02.id, episode_id: gksS02E07.id)
jinGKSs02e08 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs02.id, episode_id: gksS02E08.id)
jinGKSs02e09 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs02.id, episode_id: gksS02E09.id)
jinGKSs02e10 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs02.id, episode_id: gksS02E10.id)

jinGKSsp02e01 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSsp02.id, episode_id: gksSP02E01.id)

jinGKSs03e01 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs03.id, episode_id: gksS03E01.id)
jinGKSs03e02 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs03.id, episode_id: gksS03E02.id)
jinGKSs03e03 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs03.id, episode_id: gksS03E03.id)
jinGKSs03e04 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs03.id, episode_id: gksS03E04.id)
jinGKSs03e05 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs03.id, episode_id: gksS03E05.id)
jinGKSs03e06 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs03.id, episode_id: gksS03E06.id)
jinGKSs03e07 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs03.id, episode_id: gksS03E07.id)
jinGKSs03e08 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs03.id, episode_id: gksS03E08.id)
jinGKSs03e09 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs03.id, episode_id: gksS03E09.id)
jinGKSs03e10 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSs03.id, episode_id: gksS03E10.id)

jinGKSsp03e01 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSspgksSP01E0103.id, episode_id: gksSP03E01.id)

jinGKSmovieE01 = WatchMarkerEpisode.create(watch_marker_part_id: jinGKSmovie.id, episode_id: gksMovieE01.id)