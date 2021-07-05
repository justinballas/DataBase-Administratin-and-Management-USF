update FieldSponsorship
set Season = 1
where FieldSponsorshipID = FLOOR(RAND()*(50-1+1))+1;
