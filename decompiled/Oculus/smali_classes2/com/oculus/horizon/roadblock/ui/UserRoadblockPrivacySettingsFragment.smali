.class public Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;
.super Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;
.source "UserRoadblockPrivacySettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/legacy/social/MeManager$Listener;
.implements Lcom/oculus/horizon/legacy/social/SocialManager$NuxActionsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mFriendListSetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

.field mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNameAndPictureSetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

.field mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserActivitySetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;)V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->openFragment(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->startLoadingState()V

    return-void
.end method

.method private applyPrivacyStates()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mNameAndPictureSetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyConcept;->PROFILE:Lcom/oculus/horizon/social/model/PrivacyConcept;

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->applyState(Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;Lcom/oculus/horizon/social/model/PrivacyConcept;)V

    .line 204
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mUserActivitySetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyConcept;->ACTIVITY:Lcom/oculus/horizon/social/model/PrivacyConcept;

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->applyState(Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;Lcom/oculus/horizon/social/model/PrivacyConcept;)V

    .line 205
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mFriendListSetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyConcept;->FRIENDS:Lcom/oculus/horizon/social/model/PrivacyConcept;

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->applyState(Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;Lcom/oculus/horizon/social/model/PrivacyConcept;)V

    .line 206
    return-void
.end method

.method private applyState(Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;Lcom/oculus/horizon/social/model/PrivacyConcept;)V
    .locals 12

    .prologue
    const v11, 0x106000b

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/legacy/social/MeManager;->getCurrentPrivacyState(Lcom/oculus/horizon/social/model/PrivacyConcept;)Lcom/oculus/horizon/social/model/CurrentPrivacyState;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_1

    .line 212
    sget v1, Lcom/oculus/horizon/R$string;->roadblock_privacy_item_format:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    iget-object v2, v0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->state:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 214
    invoke-static {p2, v2}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getResourcesForState(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/PrivacyState;)Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    move-result-object v2

    .line 215
    if-eqz v2, :cond_0

    .line 216
    iget v3, v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;->title:I

    invoke-virtual {p0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    iget v4, v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;->subtitle:I

    invoke-virtual {p0, v4}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 221
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v8

    aput-object v4, v7, v9

    .line 222
    invoke-static {v1, v7}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/String;

    aput-object v3, v7, v8

    .line 219
    invoke-static {v5, v6, v4, v7}, Lcom/oculus/horizon/util/TextSpanUtils;->highlightText(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 218
    invoke-virtual {p1, v3}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    iget-object v0, v0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->identityInSearchState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 226
    invoke-static {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getResourcesForIdentityInSearchState(Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    move-result-object v0

    .line 227
    if-nez v0, :cond_2

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 239
    :goto_0
    if-eqz v2, :cond_1

    .line 240
    iget v0, v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;->icon:I

    invoke-virtual {p1, v0}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setIcon(I)V

    .line 243
    :cond_1
    return-void

    .line 230
    :cond_2
    sget v3, Lcom/oculus/horizon/R$string;->settings_search_results_privacy_label:I

    invoke-virtual {p0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    iget v0, v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;->subtitle:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 235
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v8

    aput-object v0, v6, v9

    .line 236
    invoke-static {v1, v6}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    aput-object v3, v1, v8

    .line 233
    invoke-static {v4, v5, v0, v1}, Lcom/oculus/horizon/util/TextSpanUtils;->highlightText(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 232
    invoke-virtual {p1, v0}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static getResourcesForIdentityInSearchState(Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 324
    sget-object v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$5;->$SwitchMap$com$oculus$horizon$social$model$IdentityInSearchPrivacyState:[I

    invoke-virtual {p0}, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 336
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 326
    :pswitch_0
    new-instance v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_common_anyone_title:I

    sget v2, Lcom/oculus/horizon/R$string;->settings_privacy_subtitle_search_anyone:I

    invoke-direct {v0, v3, v1, v2}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;-><init>(III)V

    goto :goto_0

    .line 331
    :pswitch_1
    new-instance v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_common_no_one_title:I

    sget v2, Lcom/oculus/horizon/R$string;->settings_privacy_subtitle_search_invisible:I

    invoke-direct {v0, v3, v1, v2}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;-><init>(III)V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getResourcesForState(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/PrivacyState;)Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 253
    sget-object v1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$5;->$SwitchMap$com$oculus$horizon$social$model$PrivacyState:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/social/model/PrivacyState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    move v1, v0

    .line 271
    :goto_0
    sget-object v3, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$5;->$SwitchMap$com$oculus$horizon$social$model$PrivacyConcept:[I

    invoke-virtual {p0}, Lcom/oculus/horizon/social/model/PrivacyConcept;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    move-object v0, v2

    .line 318
    :goto_1
    return-object v0

    .line 255
    :pswitch_0
    sget v1, Lcom/oculus/horizon/R$drawable;->settings_privacy_anyone_icon_gray:I

    .line 256
    sget v0, Lcom/oculus/horizon/R$string;->settings_privacy_common_anyone_title:I

    goto :goto_0

    .line 259
    :pswitch_1
    sget v1, Lcom/oculus/horizon/R$drawable;->settings_privacy_friends_icon_gray:I

    .line 260
    sget v0, Lcom/oculus/horizon/R$string;->settings_privacy_common_friends_title:I

    goto :goto_0

    .line 263
    :pswitch_2
    sget v1, Lcom/oculus/horizon/R$drawable;->settings_privacy_specific_friends_icon_gray:I

    .line 264
    sget v0, Lcom/oculus/horizon/R$string;->settings_privacy_common_specific_friends_title:I

    goto :goto_0

    .line 267
    :pswitch_3
    sget v1, Lcom/oculus/horizon/R$drawable;->settings_privacy_invisible_icon_gray:I

    .line 268
    sget v0, Lcom/oculus/horizon/R$string;->settings_privacy_common_just_me_title:I

    goto :goto_0

    .line 273
    :pswitch_4
    sget-object v3, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$5;->$SwitchMap$com$oculus$horizon$social$model$PrivacyState:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/social/model/PrivacyState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    move-object v0, v2

    .line 287
    goto :goto_1

    .line 275
    :pswitch_5
    new-instance v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    sget v3, Lcom/oculus/horizon/R$string;->settings_privacy_subtitle_name_anyone:I

    invoke-direct {v2, v1, v0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;-><init>(III)V

    move-object v0, v2

    goto :goto_1

    .line 278
    :pswitch_6
    new-instance v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    sget v3, Lcom/oculus/horizon/R$string;->settings_privacy_subtitle_name_friends:I

    invoke-direct {v2, v1, v0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;-><init>(III)V

    move-object v0, v2

    goto :goto_1

    .line 281
    :pswitch_7
    new-instance v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    sget v3, Lcom/oculus/horizon/R$string;->settings_privacy_subtitle_name_specific_friends:I

    invoke-direct {v2, v1, v0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;-><init>(III)V

    move-object v0, v2

    goto :goto_1

    .line 284
    :pswitch_8
    new-instance v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    sget v3, Lcom/oculus/horizon/R$string;->settings_privacy_subtitle_name_invisible:I

    invoke-direct {v2, v1, v0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;-><init>(III)V

    move-object v0, v2

    goto :goto_1

    .line 290
    :pswitch_9
    sget-object v3, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$5;->$SwitchMap$com$oculus$horizon$social$model$PrivacyState:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/social/model/PrivacyState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3

    :pswitch_a
    move-object v0, v2

    .line 301
    goto :goto_1

    .line 292
    :pswitch_b
    new-instance v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    sget v3, Lcom/oculus/horizon/R$string;->settings_privacy_subtitle_activity_anyone:I

    invoke-direct {v2, v1, v0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;-><init>(III)V

    move-object v0, v2

    goto :goto_1

    .line 295
    :pswitch_c
    new-instance v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    sget v3, Lcom/oculus/horizon/R$string;->settings_privacy_subtitle_activity_friends:I

    invoke-direct {v2, v1, v0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;-><init>(III)V

    move-object v0, v2

    goto :goto_1

    .line 298
    :pswitch_d
    new-instance v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    sget v3, Lcom/oculus/horizon/R$string;->settings_privacy_subtitle_activity_invisible:I

    invoke-direct {v2, v1, v0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;-><init>(III)V

    move-object v0, v2

    goto :goto_1

    .line 304
    :pswitch_e
    sget-object v3, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$5;->$SwitchMap$com$oculus$horizon$social$model$PrivacyState:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/social/model/PrivacyState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4

    :pswitch_f
    move-object v0, v2

    .line 315
    goto :goto_1

    .line 306
    :pswitch_10
    new-instance v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    sget v3, Lcom/oculus/horizon/R$string;->settings_privacy_subtitle_friend_list_anyone:I

    invoke-direct {v2, v1, v0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;-><init>(III)V

    move-object v0, v2

    goto/16 :goto_1

    .line 309
    :pswitch_11
    new-instance v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    sget v3, Lcom/oculus/horizon/R$string;->settings_privacy_subtitle_friend_list_friends:I

    invoke-direct {v2, v1, v0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;-><init>(III)V

    move-object v0, v2

    goto/16 :goto_1

    .line 312
    :pswitch_12
    new-instance v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;

    sget v3, Lcom/oculus/horizon/R$string;->settings_privacy_subtitle_friend_list_invisible:I

    invoke-direct {v2, v1, v0, v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$PolicyStateResources;-><init>(III)V

    move-object v0, v2

    goto/16 :goto_1

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 271
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_9
        :pswitch_e
    .end packed-switch

    .line 273
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 290
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_d
    .end packed-switch

    .line 304
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private openFragment(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    sget-object v1, Lcom/oculus/horizon/fbconnectui/FBConnectCommonArgs;->ARG_IS_IN_NUX_FLOW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string v1, "extra_fragment_arg_back_finishes"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 197
    const-string v1, "extra_skip_roadblocks"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method private startLoadingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mNameAndPictureSetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mUserActivitySetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mFriendListSetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 177
    return-void
.end method

.method private stopLoadingState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 180
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mNameAndPictureSetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mUserActivitySetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mFriendListSetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setEnabled(Z)V

    .line 185
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_PRIVACY_OVERVIEW:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;)V

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 62
    sget v0, Lcom/oculus/horizon/R$layout;->user_roadblock_privacy_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->unregisterNuxActionsListener(Lcom/oculus/horizon/legacy/social/SocialManager$NuxActionsListener;)V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/MeManager;->unregisterListener(Lcom/oculus/horizon/legacy/social/MeManager$Listener;)V

    .line 134
    invoke-super {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onDestroyView()V

    .line 135
    return-void
.end method

.method public onMyUserDataRefreshError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onMyUserDataRefreshed(Lcom/oculus/horizon/api/common/user/User;)V
    .locals 0
    .param p1    # Lcom/oculus/horizon/api/common/user/User;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->applyPrivacyStates()V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onResume()V

    .line 121
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->roadblock_privacy_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->haveAllPrivacyStates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->applyPrivacyStates()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    goto :goto_0
.end method

.method public onSetSocialNuxSeenError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 158
    sget-object v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Could not mark Social NUX as seen. Got error: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->stopLoadingState()V

    .line 160
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_error_applying:I

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    :cond_0
    return-void
.end method

.method public onSocialNuxSeenSet()V
    .locals 3

    .prologue
    .line 147
    sget-object v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Marked Social NUX as seen"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->stopLoadingState()V

    .line 149
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->onRoadblockCompleted()V

    .line 150
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_done_applying:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    sget v0, Lcom/oculus/horizon/R$id;->name_privacy_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mNameAndPictureSetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mNameAndPictureSetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    new-instance v1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$1;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v0, Lcom/oculus/horizon/R$id;->user_activity_privacy_setting:I

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mUserActivitySetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mUserActivitySetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    new-instance v1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$2;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v0, Lcom/oculus/horizon/R$id;->friend_list_privacy_setting:I

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mFriendListSetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mFriendListSetting:Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;

    new-instance v1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$3;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomPrivacyNuxSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$4;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/MeManager;->registerListener(Lcom/oculus/horizon/legacy/social/MeManager$Listener;)V

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->registerNuxActionsListener(Lcom/oculus/horizon/legacy/social/SocialManager$NuxActionsListener;)V

    .line 110
    return-void
.end method

.method public shouldDisableBackButton()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method
