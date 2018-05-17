Feature: ver auto-avaliacao
	As a: professor
	I want to: ver como os meus alunos se auto avaliam
Scenario: Sem alunos com discrepancia
	Given: Eu estou logado como professor, com login “xyz” e senha “1234”
	And: Eu posso ver a auto-avaliacao do aluno “Jose” com “MPA” em “Entender_motivacao_e_conceitos_de_requisitos”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_configuracao”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_projetos”, “MA” em “Entender_motivacao_e_conceitos_de_testes” e “MA” em “Entender_motivacao_e_conceitos_de_implementacao”
	And: O aluno “Jose” foi avaliado com “MANA” em “Entender_motivacao_e_conceitos_de_requisitos”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_configuracao”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_projetos”, “MA” em “Entender_motivacao_e_conceitos_de_testes” e “MA” em “Entender_motivacao_e_conceitos_de_implementacao”
	And: Eu posso ver a auto-avaliacao do aluno “Efraim” com “MPA” em “Entender_motivacao_e_conceitos_de_requisitos”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_configuracao”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_projetos”, “MPA” em “Entender_motivacao_e_conceitos_de_testes” e “MPA” em “Entender_motivacao_e_conceitos_de_implementacao”
	And: O aluno “Efraim” foi avaliado com “MA” em “Entender_motivacao_e_conceitos_de_requisitos”, “MA” em “Entender_motivacao_e_conceitos_de_gerencia_de_configuracao”, “MA” em “Entender_motivacao_e_conceitos_de_gerencia_de_projetos”, “MA” em “Entender_motivacao_e_conceitos_de_testes” e “MA” em “Entender_motivacao_e_conceitos_de_implementacao”
	And: Eu posso ver a auto-avaliacao do aluno “Eliezer” com “MA” em “Entender_motivacao_e_conceitos_de_requisitos”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_configuracao”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_projetos”, “MA” em “Entender_motivacao_e_conceitos_de_testes” e “MA” em “Entender_motivacao_e_conceitos_de_implementacao”
	And: O aluno “Eliezer” foi avaliado com “MA” em “Entender_motivacao_e_conceitos_de_requisitos”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_configuracao”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_projetos”, “MA” em “Entender_motivacao_e_conceitos_de_testes” e “MA” em “Entender_motivacao_e_conceitos_de_implementacao”
	When: Eu entro na pagina “avaliacoes dos alunos”
	Then: Eu posso ver “0” no campo “numero_de_alunos_com_avaliacoes_discrepantes”, “0%” no campo “percentual_de_alunos_com_avaliacoes_discrepantes” e a mensagem “Não há alunos com avaliações discrepantes!!” no campo “lista_de_alunos_com_avaliacoes_discrepantes” 

Scenario: Alunos discrepantes
	Given: Eu estou logado como professor, com login “xyz” e senha “1234”
	And: Eu posso ver a auto-avaliacao do aluno “Jose” com “MPA” em “Entender_motivacao_e_conceitos_de_requisitos”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_configuracao”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_projetos”, “MA” em “Entender_motivacao_e_conceitos_de_testes” e “MA” em “Entender_motivacao_e_conceitos_de_implementacao”
	And: O aluno “Jose” foi avaliado com “MANA” em “Entender_motivacao_e_conceitos_de_requisitos”, “MANA” em “Entender_motivacao_e_conceitos_de_gerencia_de_configuracao”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_projetos”, “MA” em “Entender_motivacao_e_conceitos_de_testes” e “MA” em “Entender_motivacao_e_conceitos_de_implementacao”
	And: Eu posso ver a auto-avaliacao do aluno “Efraim” com “MPA” em “Entender_motivacao_e_conceitos_de_requisitos”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_configuracao”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_projetos”, “MPA” em “Entender_motivacao_e_conceitos_de_testes” e “MPA” em “Entender_motivacao_e_conceitos_de_implementacao”
	And: O aluno “Efraim” foi avaliado com “MA” em “Entender_motivacao_e_conceitos_de_requisitos”, “MA” em “Entender_motivacao_e_conceitos_de_gerencia_de_configuracao”, “MA” em “Entender_motivacao_e_conceitos_de_gerencia_de_projetos”, “MA” em “Entender_motivacao_e_conceitos_de_testes” e “MA” em “Entender_motivacao_e_conceitos_de_implementacao”
	And: Eu posso ver a auto-avaliacao do aluno “Eliezer” com “MA” em “Entender_motivacao_e_conceitos_de_requisitos”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_configuracao”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_projetos”, “MA” em “Entender_motivacao_e_conceitos_de_testes” e “MA” em “Entender_motivacao_e_conceitos_de_implementacao”
	And: O aluno “Eliezer” foi avaliado com “MA” em “Entender_motivacao_e_conceitos_de_requisitos”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_configuracao”, “MPA” em “Entender_motivacao_e_conceitos_de_gerencia_de_projetos”, “MA” em “Entender_motivacao_e_conceitos_de_testes” e “MA” em “Entender_motivacao_e_conceitos_de_implementacao”
	When: Eu entro na pagina “avaliacoes dos alunos”
	Then: Eu posso ver “1” no campo “numero_de_alunos_com_avaliacoes_discrepantes”, “33,33%” no campo “percentual_de_alunos_com_avaliacoes_discrepantes” e o nome “José” no campo “lista_de_alunos_com_avaliacoes_discrepantes”
