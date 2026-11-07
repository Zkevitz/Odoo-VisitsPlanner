## Odoo le produit

1) Odoo-community : version Open-source de la suite Odoo (gratuit)
2) Odoo-entreprise : version Commercial (1 application de la suite gratuit si + abonnement payant)

    ### Hebergement 
    1) Online (SaaS) solution cloud la plus simple 
       - Client ne peux pas installer de modules personalise (python ou Odoo)
       - pas d'access serveur
       - tres peu personnalisable 
    2) Odoo.sh (PaaS) solution cloud hebergé par Odoo mais qui permet de garder une plus grande liberté de development
       - permet d'integré du code personalise
       - permet de gere les environnement et les versions de development
       - peut entrainer de cout supplementaire lie a l'hebergement
       - l'utilisateur/entreprise doit gere les mis a jour et migrations
    
    3) Odoo On-premise (On premise) installation sur des serveurs non proprietaire de Odoo 
       - controle le plus complet 
       - 
## Odoo Stack 

### Frontend 
1) OWL : Odoo Web Library (framework maison Odoo) semblable a react pour les composant réutilisable et vue.js pour sa reactivite/interactibilite
    - construit en TypeScript / principalement utiliser en javascript

2) QWeb : Framework servant rendre les templates XML en HTML dynamique

### Architecture 

1) principalement monolithe modulaires (signifie que les modules Odoo ne fonctionne pas en microservice ils sont appelle par Modules )


### outils 

#### frontend AND backend
1) QWeb : outils servant rendre les templates XML en HTML dynamique
   - soit utiliser en backend pour traiter du html avant de le renvoyer 
   - soit utiliser en frontend pour la gestion de l'affichage