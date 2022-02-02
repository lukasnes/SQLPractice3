select * from invoice
where invoice_id in (
	select invoice_id from invoice_line where unit_price > 0.99
);

select * from playlist_track
where track_id in (
  select track_id from playlist where name = 'Music'
);

select name from track
where track_id in (
  select track_id from playlist_track where playlist_id = 5
  );

select * from track
where genre_id in (
  select genre_id from genre where name = 'Comedy'
  );

select * from track
where album_id in (
  select album_id from album where title = 'Fireball'
  );

select * from track
where album_id in (
  select album_id from album where artist_id in(
    select artist_id from artist where name = 'Queen'
    )
  );

