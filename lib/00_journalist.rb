#À partir de ce array, code un programme ruby qui répondra aux questions suivantes :

    #1 - Combien y a-t-il de journalistes dans ce array ? 
    #2 - Combien d'handle contiennent un numéro ?
    #3 - Combien d'handle contiennent les 4 lettres du prénom "Aude" à la suite (sans prendre en compte les majuscules) ?
    #4 - Combien commencent par une majuscule (première lettre juste après le @) ?
    #5 - Combien contiennent au moins une majuscule ?
    #6 - Combien y a-t-il de underscore _ dans tous les pseudos confondus ?
    #7 - Trie la liste de handle par ordre alphabétique.
    #8 - Quels sont les 50 handles les plus courts de ce array ?
    #9 - Quelle est la position dans l'array de la personne @epenser ?



#1 - Affiche le nombre de journalistes
def menuArraySize(handleTwitter)
	arraySize = handleTwitter.size

	puts ""
	puts "Il y a #{arraySize} journalistes"
	puts "----------"
	puts ""
end

#2 - Affiche le nombre de journalistes qui contienne un numéro/chiffre
def menuIntArraySize(handleTwitter)

	intInArray = handleTwitter.grep(/[0-9]/)

	inArraySize = intInArray.size

	puts ""
	puts "Il y a #{inArraySize} journalistes avec un pseudonyme comportant des chiffres"
	puts "----------"
	puts ""
end

#3 - Affiche le nombre de journalistes qui contiennent les 4 lettres du prénom "Aude" à la suite
def menuAudeArraySize(handleTwitter)

	handleTwitter = handleTwitter.map(&:downcase)
	result = handleTwitter.grep(/aude/).size

	puts ""
	puts "Il y a #{result} journalistes avec les 4 lettres du prénom 'Aude' à la suite dans leurs pseudonyme"
	puts "----------"
	puts ""
end

#4 - Affiche le nombre de journalistes qui commencent par une majuscule
def menuUpcaseArraySize(handleTwitter)

	result = handleTwitter.grep(/^@[A-Z]/).size

	puts ""
	puts "Il y a #{result} journalistes avec un pseudonyme qui commence par une majuscule"
	puts "----------"
	puts ""
end

#5 - Affiche le nombre de journalistes avec au moins une majuscule
def menuOneUpcaseArraySize(handleTwitter)

	result = handleTwitter.grep(/[A-Z]/).size

	puts ""
	puts "Il y a #{result} journalistes avec au moins une majuscule dans leurs pseudonyme"
	puts "----------"
	puts ""
end

#6 - Affiche le nombre d'underscore _ dans tous les pseudos confondus
def menuUnderscoreArraySize(handleTwitter)

	result = handleTwitter.grep(/_/)
	result = result.join('')
	result = result.count('_')

	puts ""
	puts "Il y a #{result} journalistes avec un underscore _ dans leurs pseudonyme"
	puts "----------"
	puts ""
end

#7 - Affiche les noms des journalistes par ordre alphabétique
def menuAlphabetArray(handleTwitter)

	result = handleTwitter.sort_by { |x| x.downcase }

	puts ""
	puts result
	puts "----------"
	puts ""
end

#8 - Affiche les 50 handles les plus courts de ce array
def menuFiftyFirstArray(handleTwitter)

	result = handleTwitter.slice(0, 50)

	puts ""
	puts result
	puts "----------"
	puts ""
end

#9 - Affiche la position dans l'array de la personne @epenser
def menuPositionArray(handleTwitter)

	result = handleTwitter.index("@epenser")

	puts ""
	puts "@epenser est à la #{result} ème position dans le tableau"
	puts "----------"
	puts ""
end

def welcomeMessage
	puts "#Bienvenue dans la Data Scientist !"
	puts ""
	puts ""

	chooseMenu
end

#Affichage du menu choix
def chooseMenu
	handleTwitter = ["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]

	puts "Tape le numéro correspondant au menu pour afficher le résultat : "
	puts ""
	puts "1. Voir le nombre de journalistes au total"
	puts "2. Voir combien de journalistes on un chiffre dans leurs pseudonyme"
	puts "3. Voir combien de journalistes on 4 lettres du prénom 'Aude' à la suite dans leurs pseudonyme"
	puts "4. Voir combien de journalistes on un pseudonyme qui commencent par une majuscule"
	puts "5. Voir combien de journalistes on un pseudonyme qui commencent par une majuscule"
	puts "6. Voir combien de journalistes on un underscore _ dans tous leurs pseudonyme"
	puts "7. Voir les noms des journalistes par ordre alphabétique"
	puts "8. Voir les 50 journalistes avec les pseudonyme les plus courts"
	puts "9. Voir a quelle position le journaliste @epenser est dans le tableau"
	puts ""
	print "> "
	menu = gets.chomp.to_i

	if menu == 1
		menuArraySize(handleTwitter)
		sleep(2)
		chooseMenu
	elsif menu == 2
		menuIntArraySize(handleTwitter)
		sleep(2)
		chooseMenu
	elsif menu == 3
		menuAudeArraySize(handleTwitter)
		sleep(2)
		chooseMenu
	elsif menu == 4
		menuUpcaseArraySize(handleTwitter)
		sleep(2)
		chooseMenu
	elsif menu == 5
		menuOneUpcaseArraySize(handleTwitter)
		sleep(2)
		chooseMenu
	elsif menu == 6
		menuUnderscoreArraySize(handleTwitter)
		sleep(2)
		chooseMenu
	elsif menu == 7
		menuAlphabetArray(handleTwitter)
		sleep(2)
		chooseMenu
	elsif menu == 8
		menuFiftyFirstArray(handleTwitter)
		sleep(2)
		chooseMenu
	elsif menu == 9
		menuPositionArray(handleTwitter)
		sleep(2)
		chooseMenu
	else
		puts "Le numéro est incorrect..."
		chooseMenu
	end
end

welcomeMessage