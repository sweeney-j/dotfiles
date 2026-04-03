return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate', 
  config = function()
	  -- Seems like a really bad way to do it but ok for now. 
	  vim.api.nvim_create_autocmd("FileType", {
		  callback = function(data)
			  local lang = vim.treesitter.language.get_lang(data.match)
			  -- Only returns what was manually installed not what came with nvim. 
			  local installed = require('nvim-treesitter.config').get_installed('parsers')
			
			  for _, installed_lang in pairs(installed) do
				  if lang == installed_lang then 
					  vim.treesitter.start(0, lang)
					  return 
				  end
			  end
			  local result = require('nvim-treesitter.install').install({lang}):wait(3000)
			  vim.treesitter.start(0, lang)
		  end
	  })
  end
}
