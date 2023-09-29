select artist,count(*) as c 
from spotify_worldwide_daily_song_ranking
group by artist
order by c desc;