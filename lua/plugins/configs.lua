require("lspconfig").pylsp.setup({

  settings = {

    pylsp = {

      plugins = {

        jedi_completion = {

          include_params = true,
        },

        pycodestyle = { enabled = false },
      },
    },
  },
})
