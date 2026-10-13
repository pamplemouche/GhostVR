.class public abstract Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "PrivacySettingsBaseFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;
.implements Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;


# instance fields
.field private mBackFinishes:Z

.field protected mCurrentState:Lcom/oculus/horizon/social/model/PrivacyState;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mIdentityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mIncludedUserIds:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsInNuxFlow:Z

.field private mIsInRoadblock:Z

.field mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mValuesToSettingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oculus/horizon/social/model/PrivacyState;",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;)V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mTag:Ljava/lang/String;

    return-void
.end method

.method private formatDescription(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 266
    const-string v1, "%s\n%s"

    .line 267
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v1, v2, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initSetting(Landroid/view/View;ILcom/oculus/horizon/social/model/PrivacyState;)Landroid/widget/RadioButton;
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 129
    new-instance v1, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment$1;

    invoke-direct {v1, p0, p3}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment$1;-><init>(Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;Lcom/oculus/horizon/social/model/PrivacyState;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-boolean v1, p3, Lcom/oculus/horizon/social/model/PrivacyState;->usesIncludedFriends:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/MeManager;->getFriendsCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 137
    sget v2, Lcom/oculus/horizon/R$string;->settings_privacy_common_specific_friends_title:I

    iget-boolean v1, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIsInNuxFlow:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_common_specific_friends_subtitle_nux:I

    .line 138
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->formatDescription(II)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    return-object v0

    .line 137
    :cond_1
    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_common_specific_friends_subtitle:I

    goto :goto_0
.end method

.method private showSpecificFriendsFragment(Lcom/oculus/horizon/social/model/PrivacyState;Lcom/google/common/collect/ImmutableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/social/model/PrivacyState;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 275
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 276
    const-string v0, "privacy_concept"

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 277
    const-string v0, "privacy_state"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 279
    const-string v3, "included_user_ids"

    .line 281
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 279
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 282
    const-string v0, "identity_in_search"

    iget-object v3, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIdentityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 286
    const-class v0, Lcom/oculus/horizon/settings/SpecificFriendsFragment;

    .line 287
    invoke-static {v1, v0, v2}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 286
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 288
    return-void
.end method

.method private showToast(I)V
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 295
    :cond_0
    return-void
.end method

.method private updateWithCurrentState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/social/model/PrivacyConcept;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportPrivacyScreenReload(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    .line 177
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/MeManager;->getCurrentPrivacyState(Lcom/oculus/horizon/social/model/PrivacyConcept;)Lcom/oculus/horizon/social/model/CurrentPrivacyState;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1

    .line 180
    iget-object v1, v0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->state:Lcom/oculus/horizon/social/model/PrivacyState;

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setSelected(Lcom/oculus/horizon/social/model/PrivacyState;)V

    .line 181
    iget-object v1, v0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->identityInSearchState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setIdentityInSearchPrivacyState(Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V

    .line 182
    iget-object v1, v0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->state:Lcom/oculus/horizon/social/model/PrivacyState;

    iget-boolean v1, v1, Lcom/oculus/horizon/social/model/PrivacyState;->usesIncludedFriends:Z

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, v0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->includedUsers:Lcom/google/common/collect/ImmutableList;

    iput-object v1, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIncludedUserIds:Lcom/google/common/collect/ImmutableList;

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 186
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/social/model/PrivacyConcept;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->includedUsers:Lcom/google/common/collect/ImmutableList;

    iget-object v0, v0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->identityInSearchState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 189
    invoke-virtual {v0}, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportPrivacyScreenReloadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setSelected(Lcom/oculus/horizon/social/model/PrivacyState;)V

    .line 192
    iput-object v2, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIncludedUserIds:Lcom/google/common/collect/ImmutableList;

    .line 193
    iput-object v2, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIdentityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 194
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/social/model/PrivacyConcept;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportPrivacyScreenReloadFailure(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract buildPrivacyStateToViewMap()Ljava/util/Map;
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
.end method

.method protected doSelect(Lcom/oculus/horizon/social/model/PrivacyState;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mCurrentState:Lcom/oculus/horizon/social/model/PrivacyState;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p1, Lcom/oculus/horizon/social/model/PrivacyState;->usesIncludedFriends:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIdentityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    if-ne v0, p2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setSettingsEnabled(Z)V

    .line 240
    iget-boolean v0, p1, Lcom/oculus/horizon/social/model/PrivacyState;->usesIncludedFriends:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIncludedUserIds:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_1

    .line 241
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIncludedUserIds:Lcom/google/common/collect/ImmutableList;

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/social/model/PrivacyConcept;->isIdentityInSearchSelectable(Lcom/oculus/horizon/social/model/PrivacyState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mCurrentState:Lcom/oculus/horizon/social/model/PrivacyState;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/social/model/PrivacyConcept;->isIdentityInSearchSelectable(Lcom/oculus/horizon/social/model/PrivacyState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    sget-object p2, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->ENABLED:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 255
    :cond_2
    :goto_1
    iget-boolean v0, p1, Lcom/oculus/horizon/social/model/PrivacyState;->usesIncludedFriends:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIncludedUserIds:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIncludedUserIds:Lcom/google/common/collect/ImmutableList;

    .line 257
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 260
    :goto_2
    iget-object v1, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    .line 261
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v2

    .line 260
    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/oculus/horizon/legacy/social/SocialManager;->setPrivacy(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/PrivacyState;[Ljava/lang/String;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V

    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v0

    iget-boolean v0, v0, Lcom/oculus/horizon/social/model/PrivacyConcept;->usesIdentityInSearch:Z

    if-eqz v0, :cond_2

    .line 252
    sget-object p2, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->DISABLED:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    goto :goto_1

    .line 257
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected getCurrentStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mCurrentState:Lcom/oculus/horizon/social/model/PrivacyState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mCurrentState:Lcom/oculus/horizon/social/model/PrivacyState;

    invoke-virtual {v0}, Lcom/oculus/horizon/social/model/PrivacyState;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method protected abstract getLayoutId()I
.end method

.method protected abstract getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mBackFinishes:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;)V

    .line 63
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/fbconnectui/FBConnectCommonArgs;->ARG_IS_IN_NUX_FLOW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIsInNuxFlow:Z

    .line 66
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_fragment_arg_back_finishes"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mBackFinishes:Z

    .line 68
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_is_in_roadblock"

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIsInRoadblock:Z

    .line 71
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->unregisterPrivacyListener(Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;)V

    .line 96
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onDestroyView()V

    .line 97
    return-void
.end method

.method public onPrivacySet(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/PrivacyState;)V
    .locals 5

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->isViewDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/horizon/social/model/PrivacyConcept;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mTag:Ljava/lang/String;

    const-string v1, "New privacy state for [%s] is [%s]"

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 154
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/social/model/PrivacyConcept;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getCurrentStateString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {p2}, Lcom/oculus/horizon/social/model/PrivacyState;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIsInRoadblock:Z

    .line 153
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportPrivacyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    invoke-direct {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->updateWithCurrentState()V

    .line 159
    iget-boolean v0, p2, Lcom/oculus/horizon/social/model/PrivacyState;->usesIncludedFriends:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->getFriendsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIncludedUserIds:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p2, v0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->showSpecificFriendsFragment(Lcom/oculus/horizon/social/model/PrivacyState;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public onPrivacySetError(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->isViewDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/horizon/social/model/PrivacyConcept;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mTag:Ljava/lang/String;

    const-string v1, "Could not set %s privacy. %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setSelected(Lcom/oculus/horizon/social/model/PrivacyState;)V

    .line 171
    sget v0, Lcom/oculus/horizon/R$string;->settings_privacy_error_applying:I

    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->showToast(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 112
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->updateTitleBarText()V

    .line 113
    invoke-direct {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->updateWithCurrentState()V

    .line 114
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->buildPrivacyStateToViewMap()Ljava/util/Map;

    move-result-object v2

    .line 83
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    .line 84
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/model/PrivacyState;

    .line 85
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->initSetting(Landroid/view/View;ILcom/oculus/horizon/social/model/PrivacyState;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mValuesToSettingsMap:Ljava/util/Map;

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setSettingsEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->registerPrivacyListener(Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;)V

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getPrivacyConcept()Lcom/oculus/horizon/social/model/PrivacyConcept;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/social/model/PrivacyConcept;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIsInRoadblock:Z

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportSocialPrivacyView(Ljava/lang/String;Z)V

    .line 91
    return-void
.end method

.method protected setIdentityInSearchPrivacyState(Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIdentityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 205
    return-void
.end method

.method protected setSelected(Lcom/oculus/horizon/social/model/PrivacyState;)V
    .locals 5
    .param p1    # Lcom/oculus/horizon/social/model/PrivacyState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 218
    iput-object p1, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mCurrentState:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 219
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mValuesToSettingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/model/PrivacyState;

    .line 220
    iget-object v1, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mValuesToSettingsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 221
    if-ne v0, p1, :cond_0

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    .line 223
    :cond_1
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->setSettingsEnabled(Z)V

    .line 224
    if-nez p1, :cond_2

    .line 225
    sget v0, Lcom/oculus/horizon/R$string;->settings_privacy_error_fetching:I

    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->showToast(I)V

    .line 227
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 223
    goto :goto_2
.end method

.method protected setSettingsEnabled(Z)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mValuesToSettingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 212
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method protected updateTitleBarText()V
    .locals 4

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIsInNuxFlow:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/MainActivity;

    .line 104
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->SETTINGS:Lcom/oculus/horizon/mainnavigation/NavItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->updateTitleBarText()V

    .line 107
    return-void
.end method
