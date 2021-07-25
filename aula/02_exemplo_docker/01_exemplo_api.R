library(plumber)

#* Repete uma mensagem do usuário
#* @param msg A mensagem a ser repetida
#* @get /echo
echo <- function(msg = "") {
  list(
    echo = paste0("A mensagem é '", msg, "'!"),
    hora = Sys.time()
  )
}

#* Faz uma soma mediante login
#* @param a Primeiro número
#* @param b Segundo número
#* @param login Meu login
#* @param senha Minha senha
#* @post /soma
soma <- function(a = 0, b = 0, login, senha) {
  if (login == "caio" && senha == "segredo") {
    return(a + b)
  } else {
    stop("Senha incorreta")
  }
}
