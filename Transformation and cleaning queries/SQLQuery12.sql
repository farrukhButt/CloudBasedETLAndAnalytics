select top 10 * from stackQuestions
CROSS APPLY STRING_SPLIT(Tags, '|') 
order by StackId

select Repositories.repoid,Repositories.repoName as libName,createdTimeStamp as GitCreationDate,
ownerName,RepoName,StarsCount,
StackId,CreationDate as StackQuestionDate,Tags as StackTags

 from Repositories 
inner join 
( select * from stackQuestions
CROSS APPLY STRING_SPLIT(Tags, '|')
) temp
on Repositories.repoName=temp.value
order by repoid

select libCreationQuestions.repoid,
libName,
ownerName,
StarsCount,
GitCreationDate,
StackId,
StackTags,
StackQuestionDate,
versionCreatedDate,
ProjectName,
versionId
into 
 from libCreationQuestions
left join newVersion_join
on libCreationQuestions.repoid=newVersion_join.repoid


order by libCreationQuestions.StarsCount desc,libCreationQuestions.repoid





select top 10 * from libCreationQuestions where repoid=11996815

select *
 from Repositories 
inner join 
( select * from stackQuestions
CROSS APPLY STRING_SPLIT(Tags, '|')
) temp
on Repositories.repoName=temp.value
order by repoid




select distinct(RepoId) from Repositories 
inner join StackQuestions
on StackQuestions.Tags=Repositories.RepoName



Select * into libCreateupdateQuestionsDatesCopy from libCreateupdateQuestionsDates



Select count(*) from libCreateupdateQuestionsDates
WHERE Id NOT IN
(
SELECT  MIN(id)
FROM libCreateupdateQuestionsDates
GROUP BY stackid
)
and stackid=35797591


select top 30 count(*),stackid from libCreateupdateQuestionsDates 
group by stackid having count(*)>1 order by COUNT(*) desc


where repoid=35797591 and StackId is null



Select count(*) from libCreateupdateQuestionsDates
WHERE Id NOT IN
(
SELECT  MIN(id)
FROM libCreateupdateQuestionsDates
GROUP BY versionid
)
and stackid=35797591

select top 10000 * from libCreateupdateQuestionsDates order by starcount


UPDATE libCreateupdateQuestionsDates
SET versionid = null, versionCreatedDate = null
WHERE Id NOT IN
(
SELECT  MIN(id)
FROM libCreateupdateQuestionsDates
GROUP BY versionid
)

Select top 1 * from libCreateupdateQuestionsDates 