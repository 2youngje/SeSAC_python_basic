--서브쿼리
--1. invoices 테이블에서 가장 높은 총 금액을 가진 청구서의 정보를 선택

--2. tracks 테이블에서 곡 길이가 평균 길이보다 긴 곡들의 정보를 선택
SELECT TrackId, Name, Milliseconds
FROM tracks
WHERE Milliseconds > (
	SELECT AVG(Milliseconds)
	FROM tracks)

--3. genres 테이블에서 곡 수가 가장 많은 장르의 정보를 선택

--4. albums 테이블과 tracks 테이블을 사용하여 각 앨범의 제목과 해당 앨범의 곡 수를 함께 선택
SELECT a.Title, 
(
	SELECT count(*)
	FROM tracks t
	WHERE t.AlbumId = a.AlbumId
) as TrackCount
FROM albums a
order by 2 DESC LIMIT 5

--5. artists 테이블에서 각 아티스트의 이름과 해당 아티스트가 발매한 첫 번째 앨범의 제목을 함께 선택