#> gssen : api > myapifunction
#--------------------
# [E] _myentitytarget | type=zombie, limit=1
# -> myparameter : int
# -> myarrayparameter : jsonString[]
# -> myobjectparameter : {a: int, b: string, c: float}
# note about above parameter
# -> $myscoreparameter$
# => mydefaultedparameter : float = 1.0
#--------------------
# [E] _myoutputtag
# <<< myoutput : string[]
# <<< $myotheroutput$
#--------------------
#> This is a description of this function.
#> I refer to <myparameter> like this and >myoutput< like that.
#--------------------
#- These are remarks, footnotes, or references relevant to this function.
#- These are more footnotes.
#--------------------

tag @e add _gssen-myapifunction.myentitytarget
data modify storage gssen:in myapifunction.myparameter set value 1
#function gssen:api/myapifunction
#&function body&
