---
layout: "default"
title: "DocPad GUI"
---


# =====================================
# Templates

# Templates
div "#templates", ->

	# ---------------------------------
	# Application

	# App
	div ".app.template", ->
		div ".listbar.wrapper", ->
		div ".filebar.wrapper", ->

	# Listbar
	div '.listbar.template', ->
		div '.barheader', ->
			div '.title', -> 'DocPad'
			div '.actions', ->
				div '.action.edit', ->
				div '.action.minimize', ->
		div '.barsubheader', ->
			div '.search', -> 'search'
		div '.barcontent', ->
			div '.filelist', ->
				div '.filegroup', ->
					span '.dirname', -> 'src'
					span '.dirname', -> 'documents'
					span '.dirname', -> 'blog'
				div '.fileitem', ->
					div '.title', -> 'Say Hello to the DocPad GUI'
					div '.description', -> 'hello-docpad-gui.html.md'
					div '.actions', ->
						span '.action.edit', ->
						span '.action.download', ->
						span '.action.delete', ->
				div '.fileitem', ->
					div '.title', -> 'Coding for the Future'
					div '.description', -> 'coding-for-the-future.html.md'

	# Filebar
	div '.filebar.template', ->
		div '.barheader', ->
			div '.title', -> 'Say Hello to the DocPad GUI'
			div '.actions', ->
				div '.action.maximize', ->
				div '.action.close', ->
		div '.barsubheader', ->
			textarea '.meta', -> text """
				title: Say Hello to the DocPad GUI
				layout: post
				date: 2012-01-09
				"""
		div '.barcontent', ->
			textarea '.body', -> text """
				blah blah blah
				"""


# =====================================
# Application

# Application
div "#app", ->