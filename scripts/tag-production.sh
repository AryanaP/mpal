#!/bin/bash
# Tag le commit en cours commen étant déployable en production.
# CircleCI déploie automatiquement en production les tags de la forme `production-*`.

echo "Changements depuis le dernier tag:"
git log `git describe --tags --abbrev=0 HEAD^`..HEAD --oneline 

read -p "Êtes-vous sûr de vouloir tagger ces commits pour la production ? [o/N]" -n 1 -r
echo
if [[ $REPLY =~ ^[Oo]$ ]]
then
  REVISION=`git rev-parse --short HEAD`
  git tag "production-${REVISION}"
  echo "C'est fait."
  echo "Maintenant utilisez 'git push --tags' pour publier le tag,"
  echo "et déclencher le déploiement en production."
fi
