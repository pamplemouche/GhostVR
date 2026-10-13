.class public Lcom/oculus/horizon/settings/NamePrivacyFragment;
.super Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;
.source "NamePrivacyFragment.java"


# instance fields
.field private final listener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

.field private mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;-><init>()V

    .line 24
    new-instance v0, Lcom/oculus/horizon/settings/NamePrivacyFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/settings/NamePrivacyFragment$1;-><init>(Lcom/oculus/horizon/settings/NamePrivacyFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->listener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method protected buildPrivacyStateToViewMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/oculus/horizon/social/model/PrivacyState;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->ANYONE:Lcom/oculus/horizon/social/model/PrivacyState;

    sget v2, Lcom/oculus/horizon/R$id;->anyone:I

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->FRIENDS:Lcom/oculus/horizon/social/model/PrivacyState;

    sget v2, Lcom/oculus/horizon/R$id;->friends:I

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->SPECIFIC_FRIENDS:Lcom/oculus/horizon/social/model/PrivacyState;

    sget v2, Lcom/oculus/horizon/R$id;->specific_friends:I

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->SELF:Lcom/oculus/horizon/social/model/PrivacyState;

    sget v2, Lcom/oculus/horizon/R$id;->invisible:I

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lcom/oculus/horizon/R$layout;->settings_privacy_name_fragment:I

    return v0
.end method

.method protected getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/oculus/horizon/social/model/PrivacyConcept;->PROFILE:Lcom/oculus/horizon/social/model/PrivacyConcept;

    return-object v0
.end method

.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/oculus/horizon/R$string;->settings_name_privacy:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_PRIVACY_NAME:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    sget v0, Lcom/oculus/horizon/R$id;->identity_in_search_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 40
    sget v0, Lcom/oculus/horizon/R$id;->facebook_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/MeManager;->isFacebookFriendsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    return-void

    .line 41
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setIdentityInSearchPrivacyState(Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setIdentityInSearchPrivacyState(Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 80
    sget-object v0, Lcom/oculus/horizon/settings/NamePrivacyFragment$2;->$SwitchMap$com$oculus$horizon$social$model$IdentityInSearchPrivacyState:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v1, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->listener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 106
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    .line 84
    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->isFacebookFriendsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oculus/horizon/R$string;->settings_privacy_identity_in_search_checkbox_disabled_facebook:I

    .line 85
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/NamePrivacyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_1
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setSubtitle(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    sget v0, Lcom/oculus/horizon/R$string;->settings_privacy_identity_in_search_checkbox_disabled:I

    .line 86
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/NamePrivacyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchSetting;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 92
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/NamePrivacyFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mCurrentState:Lcom/oculus/horizon/social/model/PrivacyState;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/social/model/PrivacyConcept;->isIdentityInSearchSelectable(Lcom/oculus/horizon/social/model/PrivacyState;)Z

    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_identity_in_search_checkbox_enabled:I

    .line 94
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/settings/NamePrivacyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setSubtitle(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchSetting;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 99
    iget-object v1, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    .line 100
    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->isFacebookFriendsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/oculus/horizon/R$string;->settings_privacy_identity_in_search_checkbox_disabled_facebook:I

    .line 101
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/NamePrivacyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_2
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setSubtitle(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    sget v0, Lcom/oculus/horizon/R$string;->settings_privacy_identity_in_search_checkbox_disabled:I

    .line 102
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/NamePrivacyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setSelected(Lcom/oculus/horizon/social/model/PrivacyState;)V
    .locals 2
    .param p1    # Lcom/oculus/horizon/social/model/PrivacyState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setSelected(Lcom/oculus/horizon/social/model/PrivacyState;)V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/NamePrivacyFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/social/model/PrivacyConcept;->isIdentityInSearchSelectable(Lcom/oculus/horizon/social/model/PrivacyState;)Z

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 68
    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v1, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->listener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected setSettingsEnabled(Z)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setSettingsEnabled(Z)V

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchCheckbox:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 55
    return-void
.end method
