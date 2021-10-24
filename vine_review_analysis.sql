SELECT vt.review_id,
	vt.star_rating,
	vt.helpful_votes,
	vt.total_votes,
	vt.vine,
	vt.verified_purchase
INTO vine_over_20
FROM vine_table as vt
WHERE vt.total_votes>=20;

SELECT vo.review_id,
	vo.star_rating,
	vo.helpful_votes,
	vo.total_votes,
	vo.vine,
	vo.verified_purchase
INTO vine_50perc
FROM vine_over_20 as vo
WHERE CAST(vo.helpful_votes AS FLOAT)/CAST(vo.total_votes AS FLOAT) >=0.5;

SELECT vh.review_id,
	vh.star_rating,
	vh.helpful_votes,
	vh.total_votes,
	vh.vine,
	vh.verified_purchase
INTO vine_paid_helpful
FROM vine_50perc as vh
WHERE vh.vine LIKE 'Y';

SELECT vh.review_id,
	vh.star_rating,
	vh.helpful_votes,
	vh.total_votes,
	vh.vine,
	vh.verified_purchase
INTO vine_notpaid_helpful
FROM vine_50perc as vh
WHERE vh.vine LIKE 'N';

SELECT COUNT(vp.review_id)
FROM vine_paid_helpful as vp
WHERE vp.star_rating=5;

SELECT COUNT(vn.review_id)
FROM vine_notpaid_helpful as vn
WHERE vn.star_rating=5;

SELECT COUNT(vh.review_id), vh.vine
FROM vine_50perc as vh
GROUP BY vh.vine;

SELECT COUNT(vh.review_id), vh.vine
FROM vine_50perc as vh
WHERE vh.star_rating=5
GROUP BY vh.vine;