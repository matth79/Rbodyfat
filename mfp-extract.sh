#!/bin/bash

function mfpGet {
	curl http://www.myfitnesspal.com/reports/results/nutrition/$1/300.json -H 'Cookie: known_user=43232220; remember_me=v1%3A43232220%3A9136285532539630a731ca935a15803c; fbsr_186796388009496=_456noBlyrZK7HbHDaQAZXue7n1-Ghy_ud3rRCgtb6g.eyJhbGdvcml0aG0iOiJITUFDLVNIQTI1NiIsImNvZGUiOiJBUUQycGlUWXpBOVdhT2pyakdJWGlXeF9GMUphdzNBUE5PTmlFQjdoZmhkMTVDTG9TVTl6bmdPUnAzMFpFWG5iZER4QV9ac2pTcTY4WHgtQ3d0NFFkMkF1Y2tWNkluN0E0UHhzbm1CQ0NHTUZQelBhUDFfWS14endqWmhzSDRXV2ZxUWVBUVFYRU1DaHBha0h5RHVxSGJDTngyUmc0ekRCQXVlLUxvN1g2WHdzQk1ValdXMGpfLTVyaENTOTZGcXZPejhELU0zSjNXRmlpZUpPQ2V4YzZ3WnQ1NDFjMHJJMDZRVzdiMzdzNjZkNTVZTlBJVUhibE5iTVFPLUpTdF9wcXB3TENXZ2VfRG9SZlJ5eXFyM0FzNlpWWDZPTnJLcWxkVC1LcnpkdllxQjFYOWVWYUpvLTZ6OS1lakZRWDBxY0NFZyIsImlzc3VlZF9hdCI6MTM4MTUxMjI4OSwidXNlcl9pZCI6IjYxODQ0ODY0OCJ9;' -H 'Referer: http://www.myfitnesspal.com/reports' -o $1.json;
}

for F in Calories Net%20Calories Carbs Fat Protein Fiber Sugar Sodium Potassium; do
	mfpGet $F;
done

mv Net%20Calories.json Net_Calories.json