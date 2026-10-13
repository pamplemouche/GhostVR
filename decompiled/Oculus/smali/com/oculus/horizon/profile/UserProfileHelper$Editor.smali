.class public Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
.super Ljava/lang/Object;
.source "UserProfileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/profile/UserProfileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# instance fields
.field private mCheckAppVersionRoadblock:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHasDocked:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHasOptedOutHSW:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSeenActivityPrivacyUpdateRoadblock:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSeenAddProfileIcon:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSeenHSWVideo:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSeenPartyCallsNux:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSeenPaymentRoadblock:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSeenSocialNux:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mSpecialOfferIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUseAutoUpdates:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUseTestStores:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUser:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/oculus/horizon/api/common/user/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mSpecialOfferIds:Ljava/util/List;

    .line 498
    iput-object p1, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mPrefs:Landroid/content/SharedPreferences;

    .line 499
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUser:Lcom/google/common/base/Optional;

    .line 500
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenAddProfileIcon:Lcom/google/common/base/Optional;

    .line 501
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenPaymentRoadblock:Lcom/google/common/base/Optional;

    .line 502
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenSocialNux:Lcom/google/common/base/Optional;

    .line 503
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenActivityPrivacyUpdateRoadblock:Lcom/google/common/base/Optional;

    .line 504
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUseTestStores:Lcom/google/common/base/Optional;

    .line 505
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mCheckAppVersionRoadblock:Lcom/google/common/base/Optional;

    .line 506
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUseAutoUpdates:Lcom/google/common/base/Optional;

    .line 507
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasDocked:Lcom/google/common/base/Optional;

    .line 508
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenHSWVideo:Lcom/google/common/base/Optional;

    .line 509
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenPartyCallsNux:Lcom/google/common/base/Optional;

    .line 510
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasOptedOutHSW:Lcom/google/common/base/Optional;

    .line 511
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/SharedPreferences;Lcom/oculus/horizon/profile/UserProfileHelper$1;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private saveVariables()Landroid/content/SharedPreferences$Editor;
    .locals 4

    .prologue
    .line 732
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 734
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUser:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    const-string v0, "key_user_object"

    invoke-static {}, Lcom/oculus/horizon/profile/UserProfileHelper;->access$200()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUser:Lcom/google/common/base/Optional;

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenPaymentRoadblock:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    const-string v2, "key_seen_payment_roablock"

    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenPaymentRoadblock:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mSpecialOfferIds:Ljava/util/List;

    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNotNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 743
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mSpecialOfferIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 744
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 745
    invoke-static {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 750
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenAddProfileIcon:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 751
    const-string v2, "key_seen_profile_icon"

    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenAddProfileIcon:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 754
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenSocialNux:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 755
    const-string v2, "key_seen_social_nux"

    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenSocialNux:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 758
    :cond_5
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenActivityPrivacyUpdateRoadblock:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 759
    const-string v2, "key_seen_activity_privacy_update_roadblock"

    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenActivityPrivacyUpdateRoadblock:Lcom/google/common/base/Optional;

    .line 761
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 759
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 764
    :cond_6
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUseTestStores:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 765
    const-string v2, "key_use_test_stores"

    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUseTestStores:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 768
    :cond_7
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mCheckAppVersionRoadblock:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 769
    const-string v2, "key_check_app_version_roadblock"

    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mCheckAppVersionRoadblock:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 772
    :cond_8
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUseAutoUpdates:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 773
    const-string v2, "key_auto_updates_enabled"

    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUseAutoUpdates:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 776
    :cond_9
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasDocked:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 777
    const-string v2, "has_docked"

    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasDocked:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 780
    :cond_a
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenHSWVideo:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 781
    const-string v2, "hasSeenHSWVideo"

    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenHSWVideo:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 784
    :cond_b
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenPartyCallsNux:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 785
    const-string v2, "key_seen_party_calls_nux"

    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenPartyCallsNux:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 788
    :cond_c
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasOptedOutHSW:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 789
    const-string v2, "hasOptedOutOfHSW"

    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasOptedOutHSW:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 792
    :cond_d
    return-object v1
.end method

.method private setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 694
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUser:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->access$100(Landroid/content/SharedPreferences;)Lcom/oculus/horizon/api/common/user/User;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUser:Lcom/google/common/base/Optional;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUser:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    .line 699
    iget-object v1, v0, Lcom/oculus/horizon/api/common/user/User;->client_preference_data:Ljava/util/List;

    .line 700
    if-nez v1, :cond_1

    .line 701
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 704
    :cond_1
    const/4 v2, 0x0

    .line 705
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 706
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/api/common/ClientPreference;

    .line 707
    iget-object v5, v1, Lcom/oculus/horizon/api/common/ClientPreference;->type:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 708
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 709
    new-instance v1, Lcom/oculus/horizon/api/common/ClientPreference;

    invoke-direct {v1, p1, p2}, Lcom/oculus/horizon/api/common/ClientPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 712
    goto :goto_0

    .line 714
    :cond_2
    if-nez v2, :cond_3

    .line 715
    new-instance v1, Lcom/oculus/horizon/api/common/ClientPreference;

    invoke-direct {v1, p1, p2}, Lcom/oculus/horizon/api/common/ClientPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_3
    iput-object v3, v0, Lcom/oculus/horizon/api/common/user/User;->client_preference_data:Ljava/util/List;

    .line 719
    return-void

    :cond_4
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->saveVariables()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 725
    return-void
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->saveVariables()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public markHasSeenSpecialOfferRoadblock(Ljava/lang/String;)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mSpecialOfferIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    return-object p0
.end method

.method public setCheckAppVersionRoadblock(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 549
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mCheckAppVersionRoadblock:Lcom/google/common/base/Optional;

    .line 550
    return-object p0
.end method

.method public setDefaultBrowser(Ljava/lang/String;)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 590
    const-string v0, "defaultBrowser"

    invoke-direct {p0, v0, p1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-object p0
.end method

.method public setHasDocked(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 559
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasDocked:Lcom/google/common/base/Optional;

    .line 560
    return-object p0
.end method

.method public setHasFinishedIPDAdjust(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 679
    const-string v0, "hasFinishedIPDAdjust"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-object p0
.end method

.method public setHasFinishedMontereyNux(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 684
    const-string v0, "hasFinishedMontereyNux"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    return-object p0
.end method

.method public setHasFinishedNux(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 595
    const-string v0, "hasFinishedNux"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-object p0
.end method

.method public setHasOptedOutHSW(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 583
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasOptedOutHSW:Lcom/google/common/base/Optional;

    .line 584
    return-object p0
.end method

.method public setHasOptedOutOfMalibuRecenter(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 646
    const-string v0, "hasOptedOutOfMalibuRecenter"

    .line 647
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    return-object p0
.end method

.method public setHasSeenActivityPrivacyUpdateRoadblock(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 539
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenActivityPrivacyUpdateRoadblock:Lcom/google/common/base/Optional;

    .line 540
    return-object p0
.end method

.method public setHasSeenAddProfileIcon(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 529
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenAddProfileIcon:Lcom/google/common/base/Optional;

    .line 530
    return-object p0
.end method

.method public setHasSeenConfirmQuit(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 600
    const-string v0, "hasSeenConfirmQuit"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-object p0
.end method

.method public setHasSeenConfirmQuitNotif(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 605
    const-string v0, "hasSeenConfirmQuitNotif"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-object p0
.end method

.method public setHasSeenFocus(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 610
    const-string v0, "hasSeenFocus"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-object p0
.end method

.method public setHasSeenHSWVideo(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 564
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenHSWVideo:Lcom/google/common/base/Optional;

    .line 565
    return-object p0
.end method

.method public setHasSeenInternetBrowserPrompt(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 615
    const-string v0, "hasSeenInternetBrowserPrompt"

    .line 616
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-object p0
.end method

.method public setHasSeenLongHSW(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 636
    const-string v0, "hasSeenLongHSW"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return-object p0
.end method

.method public setHasSeenNewLibrary(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 689
    const-string v0, "hasSeenNewLibrary"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-object p0
.end method

.method public setHasSeenNux(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 621
    const-string v0, "hasSeenNux"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-object p0
.end method

.method public setHasSeenPartyCallsNUX(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 569
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenPartyCallsNux:Lcom/google/common/base/Optional;

    .line 570
    return-object p0
.end method

.method public setHasSeenPaymentRoadblock(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 519
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenPaymentRoadblock:Lcom/google/common/base/Optional;

    .line 520
    return-object p0
.end method

.method public setHasSeenSavedPrompt(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 631
    const-string v0, "hasSeenSavedPrompt"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-object p0
.end method

.method public setHasSeenSocialNux(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 534
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mHasSeenSocialNux:Lcom/google/common/base/Optional;

    .line 535
    return-object p0
.end method

.method public setHasSeenTutorialPrompt(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 641
    const-string v0, "hasSeenTutorial"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return-object p0
.end method

.method public setHighPriorityAppsDownloadPackages(Ljava/lang/String;)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 664
    const-string v0, "highPriorityAppsDownloadPackages"

    invoke-direct {p0, v0, p1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-object p0
.end method

.method public setHighPriorityAppsDownloadStatus(I)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 652
    const-string v0, "highPriorityAppsDownloadStatus"

    .line 653
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 652
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    return-object p0
.end method

.method public setHighPriorityAppsDownloadWaitTime(J)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 3

    .prologue
    .line 658
    const-string v0, "highPriorityAppsDownloadWaitTimeMilliSec"

    .line 659
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    return-object p0
.end method

.method public setNuxResult(Ljava/lang/String;)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 669
    const-string v0, "nuxResult"

    invoke-direct {p0, v0, p1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-object p0
.end method

.method public setNuxSeenCount(I)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 626
    const-string v0, "nuxSeenCount"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-object p0
.end method

.method public setNuxState(Ljava/lang/String;)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 674
    const-string v0, "nuxState"

    invoke-direct {p0, v0, p1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setBooleanClientPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    return-object p0
.end method

.method public setPinSet(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUser:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->access$100(Landroid/content/SharedPreferences;)Lcom/oculus/horizon/api/common/user/User;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUser:Lcom/google/common/base/Optional;

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUser:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    .line 578
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/horizon/api/common/user/User;->is_pin_set:Ljava/lang/Boolean;

    .line 579
    return-object p0
.end method

.method public setUseAutoUpdates(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 554
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUseAutoUpdates:Lcom/google/common/base/Optional;

    .line 555
    return-object p0
.end method

.method public setUseTestStores(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 544
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUseTestStores:Lcom/google/common/base/Optional;

    .line 545
    return-object p0
.end method

.method public setUser(Lcom/oculus/horizon/api/common/user/User;)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;
    .locals 1

    .prologue
    .line 514
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->mUser:Lcom/google/common/base/Optional;

    .line 515
    return-object p0
.end method
