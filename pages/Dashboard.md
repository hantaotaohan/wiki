- ## Now
  background-color:: #793e3e
	- {{query (todo now)}}
	  query-sort-by:: block
	  query-table:: false
	  query-sort-desc:: false
- ---
- ## Later
  background-color:: #264c9b
	- {{query (todo later)}}
	  query-table:: false
- ## Done
  background-color:: #497d46
	- {{query (todo done)}}