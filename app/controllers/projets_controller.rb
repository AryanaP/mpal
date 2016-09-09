class ProjetsController < ApplicationController

  def edit
  end

  def update
    @projet_courant.assign_attributes(projet_params)
    if valid? && @projet_courant.save
      redirect_to @projet_courant, notice: t('projets.edition_projet.messages.succes')
    else
      render :edit, alert: t('projets.edition_projet.messages.erreur')
    end
  end

  def show
    gon.push({
      latitude: @projet_courant.latitude,
      longitude: @projet_courant.longitude
    })
    @intervenants_disponibles = @projet_courant.intervenants_disponibles(role: :operateur).shuffle
    @commentaire = Commentaire.new(projet: @projet_courant)
    @pris_departement = @projet_courant.intervenants_disponibles(role: :pris)
    @invitations_demandeur = Invitation.where(projet_id: @projet_courant.id)
  end

  def demande
  end

  def suivi
    @commentaire = Commentaire.new(projet: @projet_courant)
    @invitations_demandeur = Invitation.where(projet_id: @projet_courant.id)
  end

  def suivi_intervenant
    @invitations_intervenant = Invitation.where(intervenant_id: @utilisateur_courant.id)
  end

  private

  def projet_params
    service_adresse = ApiBan.new
    adresse = service_adresse.precise(params[:projet][:adresse])
    attributs = params.require(:projet).permit(:description, :email, :tel, :adresse, :annee_construction, :nb_occupants_a_charge)
    attributs = attributs.merge(adresse) if adresse
    attributs
  end

  def valid?
    @projet_courant.errors[:adresse] = t('invitations.messages.adresse.obligatoire') unless @projet_courant.adresse.present?
    @projet_courant.errors[:email] = t('projets.edition_projet.messages.erreur_email_invalide') unless email_valide?(@projet_courant.email)
    @projet_courant.adresse.present? && email_valide?(@projet_courant.email)
  end

end
