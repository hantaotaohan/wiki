- # Now
  background-color:: #793e3e
	- {{query (todo now)}}
	  query-sort-by:: block
	  query-table:: false
	  query-sort-desc:: false
- # Later
- {{query (todo later)}}
-