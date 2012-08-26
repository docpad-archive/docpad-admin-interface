$ ->
	# Setup Visual Search
	$search = $('.search')
	visualsearch = window.VS.init({
		container: $search
		callbacks:
			search: (searchString, searchCollection) ->
				searchString = ""
				searchCollection.forEach (pill) ->
					category = pill.get("category")
					value = pill.get("value")
					if category isnt "text"
						searchString += " " + category + ':\\"' + value + '\\"'
					else
						searchString += " " + value
				window.updateResults  projectSearchCollection.setSearchString(searchString).query()

			facetMatches: (callback) ->
				pills = projectSearchCollection.getPills()
				pillNames = _.keys(pills)
				callback(pillNames)

			valueMatches: (facet, searchTerm, callback) ->
				switch facet
					when 'id'
						ids = []
						ids.push(String(model.id))  for model in projectCollection.models
						callback(ids)
					when 'tag'
						callback  _.uniq  _.flatten  projectCollection.pluck('tags')
					when 'title'
						callback  projectCollection.pluck('title')
	})
	visualsearch.searchBox.value('tag:"node.js"');