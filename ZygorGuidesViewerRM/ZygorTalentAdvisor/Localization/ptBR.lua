local COLOR_TIP_MOUSE = "|cffeedd99"


ZygorTalentAdvisor_L("main", "ptBR", function() return {
	['name'] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r|r |cffffaa00Talent Advisor|r",
	['name_plain'] = "Zygor Talent Advisor",
	['desc'] = "Sugere em quais talentos você deve investir seus pontos de talento a cada nível, para você subir de nível da melhor forma.",

	['opt_build_header'] = "Build do jogador",
	['opt_build'] = "Selecione uma build:",
	['opt_build_desc'] = "O Advisor continuará sugerindo talentos para você pegar conforme progride, para garantir que esta build atenda você da melhor forma.",
	['opt_petbuild_header'] = "Build do pet",
	['opt_petbuild'] = "Selecione uma build:",
	['opt_petbuild_desc'] = "Selecione uma build para o seu pet atual. Note que os tipos de pet são diferentes; você deve escolher uma build adequada.",
	['opt_build_none'] = "|cffbbbbbbNenhuma build-alvo",
	['opt_force'] = "Permitir esta build",
	['opt_force_desc'] = "Permite esta build. Por padrão, o mais sensato é evitar combinar builds incompatíveis ou quebradas. Ao forçar isto, você assume a responsabilidade pelo que acontecer - você pode acabar com uma build ridícula.",
	['opt_talentframe'] = "Recursos da interface de talentos",
	['opt_hints'] = "Mostrar balões de conselho",
	['opt_hints_desc'] = "Mostra conselhos como balões indicando os upgrades de talento sugeridos:\n|cff00ff00+1|r ... |cff00ff00+5|r - aumente este talento em # pontos,\n|cffffff00V|r - talento aumentado corretamente,\n|cffff0000X|r - talento em excesso, remova pontos dele ou você vai quebrar a build.",
	['opt_preview'] = "Mostrar os ranks de talento da build-alvo",
	['opt_preview_desc'] = "Exibe os ranks finais dos talentos, de acordo com a build selecionada, como números nas caixas de rank dos talentos:\n|cff00ff000|cff888888/|cff0088ff2|r - aumente este talento até 2 ranks,\n|cff00ff002|cff888888/|cff00ff002|r - rank sugerido atingido,\n|cffffdd003|cff888888/|cffff00002|r - você excedeu o rank sugerido (e quebrou a build, a menos que esteja no modo de prévia).",
	['opt_popup'] = "O que devemos fazer quando houver novos pontos de talento disponíveis?",
	['opt_popup_desc'] = "O Talent Advisor pode abrir a janela de talentos ou a sua própria janela de conselhos sempre que houver novos pontos para gastar, ou até aprender automaticamente os talentos sugeridos.",
	['opt_popup_0'] = "Nada",
	['opt_popup_1'] = "Abrir a janela de talentos  |cffaaaaaa(para aprender manualmente)|r",
	['opt_popup_2'] = "Abrir a janela de conselhos  |cffaaaaaa(para aprender com um clique)|r",
	['opt_popup_3'] = "Aprender automaticamente  |cffffdd00(cuidado!)|r",
	['opt_popup_dock'] = "Acoplar a janela de conselhos à interface de talentos",
	['opt_popup_dock_desc'] = "Quando acoplada, a janela de conselhos aparece e desaparece junto com a interface de talentos.\nQuando não acoplada, ela aparece de forma independente e pode ser movida para qualquer lugar.\nObservação: basta arrastar a janela de conselhos para fora da lateral da interface de talentos para desacoplá-la, ou de volta para acoplá-la novamente.",


	['opt_petbuild_ferocity'] = "|cffff8888Ferocity|r",
	['opt_petbuild_tenacity'] = "|cffffff88Tenacity|r",
	['opt_petbuild_cunning'] = "|cffff88ffCunning|r",

	['status_badtalent0'] = "Você gastou %d pontos no talento '%s', mas ele não é usado na build selecionada.",
	['status_badtalent'] = "Você gastou %d pontos no talento '%s', mas ele só chega ao rank %d na build selecionada.",
	['status_oootalent'] = "Seu talento '%s' está no rank %d, em vez de %d.",

	['status_green'] = "Esta build se encaixa no seu personagem |cff88ff88corretamente|r.",
	['status_green_pet'] = "Esta build se encaixa no seu pet |cff88ff88corretamente|r.",
	['status_yellow'] = "Seus talentos atuais correspondem à build selecionada, só foram escolhidos |cffeeff44fora da ordem sugerida|r. Mesmo assim, você tem pontos de talento suficientes disponíveis para continuar com a build.",
	['status_orange'] = "|cffffbb00Aviso:|r Seus talentos atuais correspondem à build selecionada, mas foram escolhidos |cffffee44fora de ordem|r e você |cffffee44não|r tem pontos de talento suficientes para voltar ao caminho ideal da build. Você precisará de mais %d ponto(s) de talento para voltar a evoluir de forma ideal.",
	['status_red'] = "|cffff0000Erro:|r Esta build |cffff5555não corresponde|r aos seus talentos atuais. Se quiser usar esta build, redefina seus talentos ou marque a opção 'Permitir esta build' para ignorar as medidas de segurança.",
	['status_red_forced'] = "|cffff0000Aviso:|r Esta build |cffff5555não corresponde|r aos seus talentos atuais, mas vamos tentar tirar o melhor proveito dela mesmo assim.",
	['status_black_nopet'] = "|cffff0000Erro:|r Você não tem um pet ativo. Não é possível ativar uma build de pet.",
	['status_black_badpet'] = "|cffff0000Erro:|r Esta build é incompatível com %s. Escolha uma build do tipo %s ou troque de pet.",
	['status_black_badblizzard'] = "Esta build contém dados quebrados no estilo da Blizzard.",
	['status_black_brokenbuild'] = "|cffff0000Erro:|r |cffffaaaaEsta build contém talentos não reconhecidos. Ela está quebrada e inutilizável.|r\n%s",
	['status_black_builderror'] = "|cffff0000Erro:|r |cffffaaaaEsta build exige %d pontos no talento '%s', mas só são possíveis %d! Ela está quebrada e inutilizável|r.",
	['status_black_smallbuild'] = "|cffff0000Erro:|r Esta build tem apenas %d talentos, mas você já gastou %d. Ela está incompleta ou é uma build 'inicial' e não se aplica mais.",
	['status_black_complete'] = "Esta build agora está completa.\nVá em frente e arrase.",
	['status_black_different'] = "Esta é uma build diferente, mas a build do seu personagem está completa.\nVocê teria que redefinir seus talentos ou usar o dualspec para mudar para esta build.",
	['status_black_exceeded'] = "Você investiu mais pontos do que esta build tem no total.\nEla é uma build 'inicial' ou incompleta.",

	-- popout
	['preview_button'] = "Prévia",
	['preview_button_done'] = "Visualizado",
	['preview_button_tooltip'] = "Clique para usar o modo de Prévia de Talentos e visualizar os talentos sugeridos.",
	['learn_button_tooltip'] = "Clique para aceitar os talentos sugeridos.",
	['configure_button'] = "Configurar",
	['configure_button_tooltip'] = "Clique para definir uma build-alvo ou configurar o Advisor.",

	['window_header_buildlabel'] = "Build:",
	['window_header_build'] = "|cffffffff%s|r",
	['window_header_buildnone'] = "nenhuma",

	['window_suggestion_nobuild'] = "Clique no botão Configurar abaixo para definir uma build-alvo.",
	['window_suggestion_normal'] = "Talentos sugeridos:",
	['window_suggestion_none'] = "Nenhuma sugestão pode ser feita.",
	['window_suggestion_nopoints'] = "Você não tem pontos de talento disponíveis.",
	['window_status_orange'] = "Aviso: você saiu do caminho sugerido da build!|nVocê precisa de %d pontos a mais do que tem.",
	['window_status_red'] = "Aviso: esta build não é compatível com os seus talentos.",

	--[[
	['window_suggheader1_normal'] = "You have %d talent point(s) available!",
	['window_suggheader1_normal_pet'] = "Your pet has %d talent point(s) available!",
	['window_suggintro_normal'] = "Zygor Talent Advisor suggests that you take the following talent:",

	['window_header_preview'] = "You have %d talent point(s) available!",
	['window_header_preview_pet'] = "Your pet has %d talent point(s) available!",
	['window_intro_preview'] = "Zygor Talent Advisor suggests that you take the following talent:",

	['window_headerdone_preview'] = "All talent points assigned!",
	['window_introdone_preview'] = "Since you're using the talent preview mode, click below to learn your new talents.",

	['window_headernone'] = "You have no talent points available.",
	['window_headernone_pet'] = "Your pet has no talent points available.",
	--]]

	['warning_learn1_orange'] = "|cffffbb00Aviso:|r\nPara a build selecionada, |cff5588ff%s|r, recomenda-se que você aprenda neste momento o talento da árvore %s: |cffffff55%s|r.\nO talento que você selecionou realmente faz parte desta build, mas ainda não é recomendado neste momento. Aprender talentos fora de ordem pode resultar em um progresso abaixo do ideal.\nTem certeza de que quer aprender |cffff5555%s|r agora?",
	['warning_learn1_red0'] = "|cffff0000Atenção!|r\nPara a build selecionada, |cff5588ff%s|r, você |cffff7777nunca|r deve aprender este talento!\nO Zygor Talent Advisor não poderá mais ajudar você com esta build.\nTem certeza absoluta de que quer aprendê-lo?",
	['warning_learn1_red'] = "|cffff0000Atenção!|r\nPara a build selecionada, |cff5588ff%s|r, você |cffff7777nunca|r deve ultrapassar o rank %s de |cffffff55%s|r.\nO Zygor Talent Advisor não poderá mais ajudar você com esta build.\nTem certeza absoluta de que quer fazer isso?",
	['warning_preview_green'] = CONFIRM_LEARN_PREVIEW_TALENTS.."\n\n|cff00ff00Observação:|r Estes talentos correspondem ao plano da build |cff5588ff%s|r; é seguro aprendê-los.",
	['warning_preview_orange'] = "|cffffbb00Aviso:|r\nOs talentos selecionados na prévia não correspondem exatamente aos talentos sugeridos para a build selecionada, |cff5588ff%s|r.\nSe você aprendê-los, precisará ganhar mais %d |1ponto de talento;pontos de talento; para voltar a seguir o plano da build.\nTem certeza de que quer aprender os talentos que selecionou?",
	['warning_preview_red'] = "|cffff0000Atenção!|r\nOs talentos selecionados na prévia |cffff7777impedirão você|r de concluir a build selecionada, |cff5588ff%s|r.\nO Zygor Talent Advisor não poderá mais ajudar você com esta build.\nTem certeza absoluta de que quer aprendê-los?",

	['warning_bulklearn'] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r|r |cffffaa00Talent Advisor|r sugere os seguintes talentos para a build selecionada, '|cff5588ff%s|r':\n\n%s\n"..CONFIRM_LEARN_PREVIEW_TALENTS,

	['tutorial_ZTA1_title'] = "Zygor Talent Advisor: Noções Básicas",
	['tutorial_ZTA1_text'] = "Os talentos que você escolhe para o seu personagem são um dos aspectos-chave do World of Warcraft. No entanto, muitas vezes é igualmente crucial saber em quais talentos se concentrar no início e quais deixar para depois.\n\nO Zygor Talent Advisor pode guiar você, nível por nível, rumo a builds especialmente otimizadas.",
	['tutorial_ZTA2_title'] = "Zygor Talent Advisor: Hora dos Talentos",
	['tutorial_ZTA_text'] = "Você tem pontos de talento disponíveis, mas ainda não escolheu uma build. Você encontra as configurações de build em Options - Interface - Addons - Zygor Talent Advisor.",
	['tutorial_ZTA3_title'] = "Zygor Talent Advisor: Sugestão",
	['tutorial_ZTA3_text'] = "Você tem pontos de talento disponíveis, e o Advisor tem uma sugestão de como gastá-los. Abra a janela de Talentos (pressione 'N') e procure os balões de dica: |cff55ff55+1|r, |cff55ff55+2|r etc.",

	['minimap_tooltip'] = COLOR_TIP_MOUSE.."Clique|r para mostrar as sugestões de talentos\n"..COLOR_TIP_MOUSE.."Clique direito|r para configurar",
	['minimap_tooltip_hunter'] = COLOR_TIP_MOUSE.."Clique|r para mostrar as sugestões de talentos\n"..COLOR_TIP_MOUSE.."Shift+clique|r para mostrar as sugestões de talentos do pet\n"..COLOR_TIP_MOUSE.."Clique direito|r para configurar",

	['opt_mapbutton'] = "Mostrar botão do minimapa",
	['opt_mapbutton_desc'] = "Mostra o botão do Zygor Talent Advisor ao lado do seu minimapa",

	['pattern_talentgained'] = "^You have gained (%d) talent point",
	['pattern_talentgained_pet'] = "^Your pet has learned a new talent",

	['error_bulklearn_nobuild'] = "Você não selecionou uma build.",
	['error_bulklearn_nosuggestion'] = "Nenhuma sugestão pode ser feita neste momento.",

	['msg_learned'] = "Talentos sugeridos aprendidos.",
	['msg_learned_verbose'] = "Talentos sugeridos aprendidos:",
	['msg_learned_verbose_talent'] = "  %s",

	['opt_report'] = "Criar um relatório de bug",
	['opt_report_desc'] = "Cria um relatório detalhado do status atual deste addon, para fins de depuração.",

	['talenttooltip'] = "Rank da build |cff5588ff%s|r:  %s",

	['popout_button_tip'] = "Selecione uma build-alvo e deixe o Advisor sugerir talentos para você escolher sempre que tiver pontos de talento para gastar.",

	['binding_popout'] = "Mostrar Janela de Sugestões",

	['glyphtype_1'] = "Major ",
	['glyphtype_2'] = "Minor ",
} end)
