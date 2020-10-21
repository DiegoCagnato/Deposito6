/* elenco degli insegnanti dal più vecchio al piu giovane */

SELECT Nome, Cognome, DataNascita, CittaResidenza

FROM Insegnante

ORDER BY DataNascita ASC