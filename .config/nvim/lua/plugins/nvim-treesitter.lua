return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate', 
  config = function()
	  -- Seems like a really bad way to do it but ok for now. 
	  vim.api.nvim_create_autocmd("FileType", {
		  callback = function(data)
			  local lang = vim.treesitter.language.get_lang(data.match)
			  if not lang then 
				  --I'm not sure what im doing wrong here but install is not working
				  -- fix later 
				  result = require('nvim-treesitter-install').install({lang}):wait(300000)
				  print('testing %s', result)
			  end
			  --vim.treesitter.start(0, lang)
		  end
})


  end
}
