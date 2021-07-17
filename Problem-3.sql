SELECT Id,Name,CommitCounts,LanguageId
FROM users
WHERE CommitCounts IN
  (SELECT max(CommitCounts) AS CommitCounts
   From users
   GROUP BY LanguageID)