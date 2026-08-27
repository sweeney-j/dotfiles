return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate', 
  config = function()
	  local available = require('nvim-treesitter.config').get_available(); 
	  local available_set = {} 
	  for _, lang in ipairs(available) do
		  available_set[lang] = true
	  end

	  -- Seems like a really bad way to do it but ok for now. 
	  vim.api.nvim_create_autocmd("FileType", {
		  callback = function(data)
			  local lang = vim.treesitter.language.get_lang(data.match)

			  local ok = pcall(vim.treesitter.start, data.buf, lang)
			  if ok then return end

			  if not available_set[lang] then return end

			  require('nvim-treesitter.install').install({lang}):wait(3000)
			  pcall(vim.treesitter.start, data.buf, lang)
		  end
	  })
  end
}
