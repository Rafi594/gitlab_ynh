# GitLab pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/gitlab.svg)](https://dash.yunohost.org/appci/app/gitlab) ![](https://ci-apps.yunohost.org/ci/badges/gitlab.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/gitlab.maintain.svg)  
[![Installer GitLab avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gitlab)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer GitLab rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Gestionnaire de dépôts Git proposant des fonctionnalités de wiki, suivi de bugs et de pipeline CI/CD.

**Version incluse :** 14.1.0~ynh1

**Démo :** https://gitlab.com/explore

## Captures d'écran

![](./doc/screenshots/GitLab_running_11.0_(2018-07).png)

## Avertissements / informations importantes

### Configuration

Comment configurer GitLab :

- Avec le panneau d'administration de GitLab.
- En éditant le fichier de configuration `/etc/gitlab/gitlab-persistent.rb` et en éxécutant la commande `sudo gitlab-ctl reconfigure` pour réactualiser la configuration.

### Support multi-utilisateurs

* L'authentification LDAP et HTTP est-elle prise en charge ? **Oui**
* L'application peut-elle être utilisée par plusieurs utilisateurs ? **Oui**

### Limitations

* L'application GitLab n'est pas compatible avec les architectures 32-bit.

## Documentations et ressources

* Site officiel de l'app : https://gitlab.com
* Documentation officielle utilisateur : https://yunohost.org/fr/app_gitlab
* Documentation officielle de l'admin : https://docs.gitlab.com/
* Dépôt de code officiel de l'app : https://gitlab.com/gitlab-org/omnibus-gitlab - https://gitlab.com/gitlab-org/gitlab
* Documentation YunoHost pour cette app : https://yunohost.org/app_gitlab
* Signaler un bug : https://github.com/YunoHost-Apps/gitlab_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/gitlab_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/gitlab_ynh/tree/testing --debug
ou
sudo yunohost app upgrade gitlab -u https://github.com/YunoHost-Apps/gitlab_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps