.class public Lcom/oculus/horizon/legacy/social/SocialManager;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/legacy/social/SocialManager$FacebookFriendsPolicyListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$ActivityPrivacyUpdateRoadblockListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$NuxActionsListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$SpecificFriendsListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$SearchResultsListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$AchievementsListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$EntitlementsWithAchievementsListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$UserActionsListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$UserProfileListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$FriendRequestsListener;,
        Lcom/oculus/horizon/legacy/social/SocialManager$FriendsListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile $ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXINSTANCE:Lcom/oculus/horizon/legacy/social/SocialManager;

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAchievementsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$AchievementsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityPrivacyUpdateRoadblockListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$ActivityPrivacyUpdateRoadblockListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlockedUsersListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mEntitlementsWithAchievementsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$EntitlementsWithAchievementsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFBConnectMethods:Lcom/oculus/horizon/fbconnect/FBConnectMethods;

.field private final mFacebookFriendsPolicyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$FacebookFriendsPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mFriendRequestInProgressUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFriendRequestsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$FriendRequestsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFriendsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$FriendsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGameInviteInProgress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/GameInvite;",
            ">;"
        }
    .end annotation
.end field

.field private final mGameInvitesListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

.field private final mNotificationsMethods:Lcom/oculus/horizon/notifications/NotificationsMethods;

.field private final mNuxActionsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$NuxActionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOVRLibraryInternalLazy:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/libraryapi/OVRLibraryInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mPartyInviteInProgress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/PartyInvite;",
            ">;"
        }
    .end annotation
.end field

.field private final mPartyInvitesListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivacyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchResultsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$SearchResultsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSocialExperiments:Lcom/oculus/horizon/legacy/social/SocialExperiments;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

.field private final mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mSpecificFriendsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$SpecificFriendsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserActionsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$UserActionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mUserProfileListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/legacy/social/SocialManager$UserProfileListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static final $ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/SocialManager;
    .locals 1
    .annotation build Lcom/facebook/ultralight/AutoGeneratedAccessMethod;
    .end annotation

    .prologue
    .line 30
    const-string v0, "$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXACCESS_METHOD"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    sget v0, Lcom/oculus/horizon/HorizonModule$UL_id;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXBINDING_ID:I

    .line 76
    invoke-static {v0, p0}, Lcom/facebook/ultralight/UL$factorymap;->get(ILcom/facebook/inject/InjectorLike;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager;

    .line 30
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0
.end method

.method public static final $ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXFACTORY_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/SocialManager;
    .locals 10
    .annotation build Lcom/facebook/ultralight/AutoGeneratedFactoryMethod;
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXINSTANCE:Lcom/oculus/horizon/legacy/social/SocialManager;

    if-nez v0, :cond_1

    const-class v8, Lcom/oculus/horizon/legacy/social/SocialManager;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXINSTANCE:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0, p0}, Lcom/facebook/inject/SingletonClassInit;->start(Ljava/lang/Object;Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/SingletonClassInit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    if-eqz v9, :cond_0

    :try_start_1
    invoke-interface {p0}, Lcom/facebook/inject/InjectorLike;->getApplicationInjector()Lcom/facebook/inject/InjectorLike;

    move-result-object v1

    new-instance v0, Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v1}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v3

    invoke-static {v1}, Lcom/oculus/horizon/social/SocialMethods;->$ul_$xXXcom_oculus_horizon_social_SocialMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialMethods;

    move-result-object v4

    invoke-static {v1}, Lcom/oculus/horizon/fbconnect/FBConnectMethods;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectMethods;

    move-result-object v5

    invoke-static {v1}, Lcom/oculus/horizon/notifications/NotificationsMethods;->$ul_$xXXcom_oculus_horizon_notifications_NotificationsMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/NotificationsMethods;

    move-result-object v6

    invoke-static {v1}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_libraryapi_OVRLibraryInternal$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/legacy/social/SocialManager;-><init>(Lcom/facebook/inject/InjectorLike;Landroid/content/Context;Lcom/oculus/horizon/legacy/social/MeManager;Lcom/oculus/horizon/social/SocialMethods;Lcom/oculus/horizon/fbconnect/FBConnectMethods;Lcom/oculus/horizon/notifications/NotificationsMethods;Lcom/facebook/inject/Lazy;)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXINSTANCE:Lcom/oculus/horizon/legacy/social/SocialManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v9}, Lcom/facebook/inject/SingletonClassInit;->finish()V

    :cond_0
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    sget-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXINSTANCE:Lcom/oculus/horizon/legacy/social/SocialManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v9}, Lcom/facebook/inject/SingletonClassInit;->finish()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/oculus/horizon/legacy/social/SocialManager;

    sput-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Landroid/content/Context;Lcom/oculus/horizon/legacy/social/MeManager;Lcom/oculus/horizon/social/SocialMethods;Lcom/oculus/horizon/fbconnect/FBConnectMethods;Lcom/oculus/horizon/notifications/NotificationsMethods;Lcom/facebook/inject/Lazy;)V
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation build Lcom/facebook/inject/ForAppContext;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/InjectorLike;",
            "Landroid/content/Context;",
            "Lcom/oculus/horizon/legacy/social/MeManager;",
            "Lcom/oculus/horizon/social/SocialMethods;",
            "Lcom/oculus/horizon/fbconnect/FBConnectMethods;",
            "Lcom/oculus/horizon/notifications/NotificationsMethods;",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/libraryapi/OVRLibraryInternal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendsListeners:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPrivacyListeners:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mNuxActionsListeners:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserProfileListeners:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserActionsListeners:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mAchievementsListeners:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSearchResultsListeners:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestsListeners:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSpecificFriendsListeners:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mEntitlementsWithAchievementsListeners:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mActivityPrivacyUpdateRoadblockListeners:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInvitesListeners:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInvitesListeners:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestInProgressUserIds:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInviteInProgress:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInviteInProgress:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mBlockedUsersListeners:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFacebookFriendsPolicyListeners:Ljava/util/List;

    .line 122
    invoke-static {p1}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p1}, Lcom/oculus/horizon/legacy/social/SocialExperiments;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialExperiments$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/SocialExperiments;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialExperiments:Lcom/oculus/horizon/legacy/social/SocialExperiments;

    invoke-static {p1}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p1}, Lcom/oculus/horizon/social/SocialUtils;->$ul_$xXXcom_oculus_horizon_social_SocialUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    invoke-static {p1}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-static {p1}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->$ul_$xXXcom_oculus_horizon_util_launch_PackageLauncherUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    .line 129
    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mContext:Landroid/content/Context;

    .line 130
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    .line 131
    iput-object p4, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    .line 132
    iput-object p5, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFBConnectMethods:Lcom/oculus/horizon/fbconnect/FBConnectMethods;

    .line 133
    iput-object p6, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mNotificationsMethods:Lcom/oculus/horizon/notifications/NotificationsMethods;

    .line 134
    iput-object p7, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mOVRLibraryInternalLazy:Lcom/facebook/inject/Lazy;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserProfileListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/social/SocialUtils;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mAchievementsListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestInProgressUserIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInviteInProgress:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInviteInProgress:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserActionsListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSearchResultsListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPrivacyListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/profile/UserProfileHelper;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/SocialManager;)Lcom/oculus/horizon/legacy/social/MeManager;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mNuxActionsListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mActivityPrivacyUpdateRoadblockListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendsListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestsListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mBlockedUsersListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInvitesListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInvitesListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFacebookFriendsPolicyListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mEntitlementsWithAchievementsListeners:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addToIncludedUsersList(Lcom/oculus/horizon/api/common/user/User;)V
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSpecificFriendsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$SpecificFriendsListener;

    .line 1206
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$SpecificFriendsListener;->onUserAddedToIncludedUsersList(Lcom/oculus/horizon/api/common/user/User;)V

    goto :goto_0

    .line 1208
    :cond_0
    return-void
.end method

.method public doAcceptFriendRequest(Lcom/oculus/horizon/api/common/user/FriendRequestUser;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p1, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->user_id:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/oculus/horizon/legacy/social/SocialManager;->doAcceptFriendRequest(Ljava/lang/String;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V

    .line 682
    return-void
.end method

.method public doAcceptFriendRequest(Lcom/oculus/horizon/social/model/FriendRequest;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p1, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    invoke-virtual {p0, v0, p2}, Lcom/oculus/horizon/legacy/social/SocialManager;->doAcceptFriendRequest(Lcom/oculus/horizon/api/common/user/FriendRequestUser;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V

    .line 677
    return-void
.end method

.method public doAcceptFriendRequest(Ljava/lang/String;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestsListeners:Ljava/util/List;

    .line 686
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 685
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 688
    sget-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->TAG:Ljava/lang/Class;

    const-string v1, "Accepting friendship request for [%s]"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestInProgressUserIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$10;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$10;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/horizon/social/SocialMethods;->acceptFriendRequest(Ljava/lang/String;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;Lretrofit/Callback;)V

    .line 711
    return-void

    .line 686
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doAcceptGameInvite(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/api/common/GameInvite;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 752
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInvitesListeners:Ljava/util/List;

    .line 753
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    const-string v3, "Cannot call this method without registering a listener first"

    .line 752
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 756
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mOVRLibraryInternalLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    .line 757
    iget-object v3, p2, Lcom/oculus/horizon/api/common/GameInvite;->application_id:Ljava/lang/String;

    .line 758
    invoke-virtual {v0, v3}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getAppInternalById(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v4

    .line 761
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/oculus/library/model/App;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 762
    iget-object v4, v4, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    .line 763
    iget-object v5, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    invoke-virtual {v5, v4}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->getLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 764
    if-eqz v5, :cond_0

    move v2, v1

    .line 765
    :cond_0
    if-eqz v2, :cond_1

    .line 767
    const-string v1, "ovr_room_id"

    iget-object v6, p2, Lcom/oculus/horizon/api/common/GameInvite;->room_id:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    const/high16 v1, 0x10000000

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 769
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 771
    invoke-virtual {v0, v4}, Lcom/oculus/libraryapi/OVRLibraryInternal;->updateLatestActivityMs(Ljava/lang/String;)V

    .line 775
    :cond_1
    if-nez v2, :cond_2

    .line 777
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v1, p2, Lcom/oculus/horizon/api/common/GameInvite;->application_name:Ljava/lang/String;

    invoke-static {p1, v0, v3, v1}, Lcom/oculus/horizon/store/StoreUtils;->openApplicationPdpFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p2, Lcom/oculus/horizon/api/common/GameInvite;->application_id:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/horizon/api/common/GameInvite;->room_id:Ljava/lang/String;

    iget-object v4, p2, Lcom/oculus/horizon/api/common/GameInvite;->notification_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportInviteAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 784
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInvitesListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;

    .line 785
    invoke-interface {v0, p2}, Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;->onGameInviteAccepted(Lcom/oculus/horizon/api/common/GameInvite;)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 753
    goto :goto_0

    .line 787
    :cond_4
    return-void
.end method

.method public doAcceptPartyInvite(Lcom/oculus/horizon/api/common/PartyInvite;)V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInvitesListeners:Ljava/util/List;

    .line 833
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 832
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 835
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInvitesListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;

    .line 836
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;->onPartyInviteAccepted(Lcom/oculus/horizon/api/common/PartyInvite;)V

    goto :goto_1

    .line 833
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    invoke-virtual {v0}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->getHomeLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 840
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 841
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 842
    return-void
.end method

.method public doBlock(Lcom/oculus/horizon/api/common/user/User;)V
    .locals 3

    .prologue
    .line 980
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mBlockedUsersListeners:Ljava/util/List;

    .line 981
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 980
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 983
    sget-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->TAG:Ljava/lang/Class;

    const-string v1, "Blocking user [%s]"

    iget-object v2, p1, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 984
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    new-instance v2, Lcom/oculus/horizon/legacy/social/SocialManager$16;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$16;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/social/SocialMethods;->block(Ljava/lang/String;Lretrofit/Callback;)V

    .line 1001
    return-void

    .line 981
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doRejectFriendRequest(Lcom/oculus/horizon/api/common/user/FriendRequestUser;)V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p1, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->user_id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->doRejectFriendRequest(Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method public doRejectFriendRequest(Lcom/oculus/horizon/social/model/FriendRequest;)V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p1, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->doRejectFriendRequest(Lcom/oculus/horizon/api/common/user/FriendRequestUser;)V

    .line 716
    return-void
.end method

.method public doRejectFriendRequest(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestsListeners:Ljava/util/List;

    .line 725
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 724
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 727
    sget-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->TAG:Ljava/lang/Class;

    const-string v1, "Rejecting friend request for [%s]"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 728
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$11;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$11;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/social/SocialMethods;->rejectFriendRequest(Ljava/lang/String;Lretrofit/Callback;)V

    .line 748
    return-void

    .line 725
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doRejectGameInvite(Lcom/oculus/horizon/api/common/GameInvite;)V
    .locals 3

    .prologue
    .line 791
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInvitesListeners:Ljava/util/List;

    .line 792
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 791
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 794
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInviteInProgress:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mNotificationsMethods:Lcom/oculus/horizon/notifications/NotificationsMethods;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/GameInvite;->notification_id:Ljava/lang/String;

    new-instance v2, Lcom/oculus/horizon/legacy/social/SocialManager$12;

    invoke-direct {v2, p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$12;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/api/common/GameInvite;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/notifications/NotificationsMethods;->markNotificationAsRead(Ljava/lang/String;Lretrofit/Callback;)V

    .line 828
    return-void

    .line 792
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doRejectPartyInvite(Lcom/oculus/horizon/api/common/PartyInvite;)V
    .locals 3

    .prologue
    .line 846
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInvitesListeners:Ljava/util/List;

    .line 847
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 846
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 849
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInviteInProgress:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mNotificationsMethods:Lcom/oculus/horizon/notifications/NotificationsMethods;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/PartyInvite;->notification_id:Ljava/lang/String;

    new-instance v2, Lcom/oculus/horizon/legacy/social/SocialManager$13;

    invoke-direct {v2, p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$13;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/api/common/PartyInvite;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/notifications/NotificationsMethods;->markNotificationAsRead(Ljava/lang/String;Lretrofit/Callback;)V

    .line 870
    return-void

    .line 847
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doSearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSearchResultsListeners:Ljava/util/List;

    .line 1039
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 1038
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1041
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 1042
    sget-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->TAG:Ljava/lang/Class;

    const-string v1, "Searching for [%s] using sequence number [%d]"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1043
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    sget-object v1, Lcom/oculus/horizon/social/request/UserSearchParams$SearchType;->ALL:Lcom/oculus/horizon/social/request/UserSearchParams$SearchType;

    new-instance v2, Lcom/oculus/horizon/legacy/social/SocialManager$18;

    invoke-direct {v2, p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$18;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;I)V

    invoke-virtual {v0, p2, v1, p3, v2}, Lcom/oculus/horizon/social/SocialMethods;->userSearch(Ljava/lang/String;Lcom/oculus/horizon/social/request/UserSearchParams$SearchType;Ljava/lang/String;Lretrofit/Callback;)V

    .line 1073
    :cond_0
    return-void

    .line 1039
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1069
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSearchResultsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$SearchResultsListener;

    .line 1070
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$SearchResultsListener;->onSearchSkipped(I)V

    goto :goto_1
.end method

.method public doSendFriendRequest(Lcom/oculus/horizon/api/common/user/BasicUser;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V
    .locals 3

    .prologue
    .line 915
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserActionsListeners:Ljava/util/List;

    .line 916
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 915
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 918
    sget-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->TAG:Ljava/lang/Class;

    const-string v1, "Sending friendship request to user [%s]"

    iget-object v2, p1, Lcom/oculus/horizon/api/common/user/BasicUser;->id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 919
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/user/BasicUser;->id:Ljava/lang/String;

    new-instance v2, Lcom/oculus/horizon/legacy/social/SocialManager$14;

    invoke-direct {v2, p0, p2}, Lcom/oculus/horizon/legacy/social/SocialManager$14;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/oculus/horizon/social/SocialMethods;->sendFriendRequest(Ljava/lang/String;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;Lretrofit/Callback;)V

    .line 943
    return-void

    .line 916
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doUnblock(Lcom/oculus/horizon/social/api/BlockedUser;)V
    .locals 3

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mBlockedUsersListeners:Ljava/util/List;

    .line 1005
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 1004
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1007
    sget-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->TAG:Ljava/lang/Class;

    const-string v1, "Unblocking user [%s]"

    iget-object v2, p1, Lcom/oculus/horizon/social/api/BlockedUser;->id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1008
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    iget-object v1, p1, Lcom/oculus/horizon/social/api/BlockedUser;->id:Ljava/lang/String;

    new-instance v2, Lcom/oculus/horizon/legacy/social/SocialManager$17;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$17;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/social/SocialMethods;->unblock(Ljava/lang/String;Lretrofit/Callback;)V

    .line 1025
    return-void

    .line 1005
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doUnfriend(Lcom/oculus/horizon/api/common/user/User;)V
    .locals 3

    .prologue
    .line 951
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendsListeners:Ljava/util/List;

    .line 952
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 951
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 954
    sget-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->TAG:Ljava/lang/Class;

    const-string v1, "Unfriending user [%s]"

    iget-object v2, p1, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 955
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    new-instance v2, Lcom/oculus/horizon/legacy/social/SocialManager$15;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$15;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/social/SocialMethods;->unfriend(Ljava/lang/String;Lretrofit/Callback;)V

    .line 972
    return-void

    .line 952
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFriendRequestActionInProgress(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestInProgressUserIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGameInviteActionInProgress(Lcom/oculus/horizon/api/common/GameInvite;)Z
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInviteInProgress:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPartyInviteActionInProgress(Lcom/oculus/horizon/api/common/PartyInvite;)Z
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInviteInProgress:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public refreshAchievements(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mAchievementsListeners:Ljava/util/List;

    .line 651
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Cannot call this method without registering a listener first"

    .line 650
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$9;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$9;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/horizon/social/SocialMethods;->fetchAchievements(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 671
    return-void

    .line 651
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshBlockedUsers()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mBlockedUsersListeners:Ljava/util/List;

    .line 512
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 511
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$4;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/social/SocialMethods;->fetchBlockedUsers(Lretrofit/Callback;)V

    .line 530
    return-void

    .line 512
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshEntitlementsWithAchievements(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mEntitlementsWithAchievementsListeners:Ljava/util/List;

    .line 627
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Cannot call this method without registering a listener first"

    .line 626
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$8;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$8;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/social/SocialMethods;->fetchEntitlementsWithAchievements(Ljava/lang/String;Lretrofit/Callback;)V

    .line 646
    return-void

    .line 627
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshFacebookFriendsPolicy()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFacebookFriendsPolicyListeners:Ljava/util/List;

    .line 601
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 600
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 604
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFBConnectMethods:Lcom/oculus/horizon/fbconnect/FBConnectMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$7;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$7;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectMethods;->fetchFBConnectAccount(Lretrofit/Callback;)V

    .line 622
    return-void

    .line 601
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshFriendRequests()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestsListeners:Ljava/util/List;

    .line 480
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 479
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$3;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/social/SocialMethods;->fetchFriendRequests(Lretrofit/Callback;)V

    .line 508
    return-void

    .line 480
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshFriends(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendsListeners:Ljava/util/List;

    .line 451
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 450
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$2;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$2;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/social/SocialMethods;->fetchFriends(Ljava/lang/String;Lretrofit/Callback;)V

    .line 475
    return-void

    .line 451
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshGameInvites()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInvitesListeners:Ljava/util/List;

    .line 535
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 534
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$5;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$5;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/social/SocialMethods;->getAllGameInvites(Lretrofit/Callback;)V

    .line 563
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshMyFriends()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->me()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->refreshFriends(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public refreshPartyInvites()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInvitesListeners:Ljava/util/List;

    .line 568
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 567
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 571
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$6;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$6;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/social/SocialMethods;->getAllPartyInvites(Lretrofit/Callback;)V

    .line 597
    return-void

    .line 568
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshProfile(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserProfileListeners:Ljava/util/List;

    .line 423
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Cannot call this method without registering a listener first"

    .line 422
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$1;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/social/SocialMethods;->fetchProfile(Ljava/lang/String;Lretrofit/Callback;)V

    .line 442
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerAchievementsListener(Lcom/oculus/horizon/legacy/social/SocialManager$AchievementsListener;)Lcom/oculus/horizon/social/model/SocialData;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mAchievementsListeners:Ljava/util/List;

    .line 303
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 302
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mAchievementsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/oculus/horizon/social/model/SocialData;->ACHIEVEMENTS:Lcom/oculus/horizon/social/model/SocialData;

    return-object v0

    .line 303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerActivityPrivacyUpdateRoadblockListener(Lcom/oculus/horizon/legacy/social/SocialManager$ActivityPrivacyUpdateRoadblockListener;)V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mActivityPrivacyUpdateRoadblockListeners:Ljava/util/List;

    .line 389
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 388
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mActivityPrivacyUpdateRoadblockListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerBlockedUsersListener(Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;)Lcom/oculus/horizon/social/model/SocialData;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mBlockedUsersListeners:Ljava/util/List;

    .line 208
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 207
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mBlockedUsersListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/oculus/horizon/social/model/SocialData;->BLOCKED_USERS:Lcom/oculus/horizon/social/model/SocialData;

    return-object v0

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerEntitlementsWithAchievementsListener(Lcom/oculus/horizon/legacy/social/SocialManager$EntitlementsWithAchievementsListener;)Lcom/oculus/horizon/social/model/SocialData;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mEntitlementsWithAchievementsListeners:Ljava/util/List;

    .line 285
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 284
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mEntitlementsWithAchievementsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lcom/oculus/horizon/social/model/SocialData;->ENTITLEMENTS_WITH_ACHIEVEMENTS:Lcom/oculus/horizon/social/model/SocialData;

    return-object v0

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerFacebookFriendsPolicyListener(Lcom/oculus/horizon/legacy/social/SocialManager$FacebookFriendsPolicyListener;)Lcom/oculus/horizon/social/model/SocialData;
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFacebookFriendsPolicyListeners:Ljava/util/List;

    .line 406
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 405
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFacebookFriendsPolicyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/oculus/horizon/social/model/SocialData;->FACEBOOK_FRIEND_POLICY:Lcom/oculus/horizon/social/model/SocialData;

    return-object v0

    .line 406
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerFriendRequestsListener(Lcom/oculus/horizon/legacy/social/SocialManager$FriendRequestsListener;)Lcom/oculus/horizon/social/model/SocialData;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestsListeners:Ljava/util/List;

    .line 187
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 186
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/oculus/horizon/social/model/SocialData;->FRIEND_REQUESTS:Lcom/oculus/horizon/social/model/SocialData;

    return-object v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerFriendsListener(Lcom/oculus/horizon/legacy/social/SocialManager$FriendsListener;)Lcom/oculus/horizon/social/model/SocialData;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendsListeners:Ljava/util/List;

    .line 166
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 165
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/oculus/horizon/social/model/SocialData;->FRIENDS:Lcom/oculus/horizon/social/model/SocialData;

    return-object v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerGameInvitesListener(Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;)Lcom/oculus/horizon/social/model/SocialData;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInvitesListeners:Ljava/util/List;

    .line 229
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 228
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInvitesListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/oculus/horizon/social/model/SocialData;->GAME_INVITES:Lcom/oculus/horizon/social/model/SocialData;

    return-object v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerIncludedFriendsListener(Lcom/oculus/horizon/legacy/social/SocialManager$SpecificFriendsListener;)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSpecificFriendsListeners:Ljava/util/List;

    .line 352
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 351
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSpecificFriendsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerNuxActionsListener(Lcom/oculus/horizon/legacy/social/SocialManager$NuxActionsListener;)V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mNuxActionsListeners:Ljava/util/List;

    .line 370
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 369
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mNuxActionsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerPartyInvitesListener(Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;)Lcom/oculus/horizon/social/model/SocialData;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInvitesListeners:Ljava/util/List;

    .line 250
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 249
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInvitesListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/oculus/horizon/social/model/SocialData;->PARTY_INVITES:Lcom/oculus/horizon/social/model/SocialData;

    return-object v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerPrivacyListener(Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPrivacyListeners:Ljava/util/List;

    .line 334
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 333
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPrivacyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerSearchResultsListener(Lcom/oculus/horizon/legacy/social/SocialManager$SearchResultsListener;)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSearchResultsListeners:Ljava/util/List;

    .line 319
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 318
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSearchResultsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerUserActionsListener(Lcom/oculus/horizon/legacy/social/SocialManager$UserActionsListener;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserActionsListeners:Ljava/util/List;

    .line 266
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 265
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserActionsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerUserProfileListener(Lcom/oculus/horizon/legacy/social/SocialManager$UserProfileListener;)Lcom/oculus/horizon/social/model/SocialData;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserProfileListeners:Ljava/util/List;

    .line 145
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This listener has already been registered for this type of event"

    .line 144
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserProfileListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/oculus/horizon/social/model/SocialData;->USER_PROFILE:Lcom/oculus/horizon/social/model/SocialData;

    return-object v0

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFromIncludedUsersList(Lcom/oculus/horizon/api/common/user/User;)V
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSpecificFriendsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$SpecificFriendsListener;

    .line 1213
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$SpecificFriendsListener;->onUserRemovedFromIncludedUsersList(Lcom/oculus/horizon/api/common/user/User;)V

    goto :goto_0

    .line 1215
    :cond_0
    return-void
.end method

.method public setPrivacy(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/PrivacyState;[Ljava/lang/String;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1081
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 1082
    invoke-virtual {p1}, Lcom/oculus/horizon/social/model/PrivacyConcept;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1083
    invoke-virtual {p2}, Lcom/oculus/horizon/social/model/PrivacyState;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_4

    .line 1084
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1085
    :goto_0
    invoke-virtual {p4}, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1081
    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/oculus/horizon/logging/OculusLogger;->reportPrivacyScreenSettingSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPrivacyListeners:Ljava/util/List;

    .line 1088
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    const-string v3, "Cannot call this method without registering a listener first"

    .line 1087
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1091
    iget-boolean v0, p2, Lcom/oculus/horizon/social/model/PrivacyState;->usesIncludedFriends:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    iget-boolean v0, p2, Lcom/oculus/horizon/social/model/PrivacyState;->usesIncludedFriends:Z

    if-nez v0, :cond_6

    if-nez p3, :cond_6

    :cond_1
    move v0, v1

    :goto_2
    const-string v3, "PrivacyState [%s] can\'t be used with includedUsersIds [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v2

    .line 1096
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1094
    invoke-static {v3, v4}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1091
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1099
    invoke-virtual {p1, p2}, Lcom/oculus/horizon/social/model/PrivacyConcept;->isIdentityInSearchSelectable(Lcom/oculus/horizon/social/model/PrivacyState;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    const-string v0, "IdentityInSearchPrivacyState cannot be null when the privacy state supports it"

    .line 1098
    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1102
    sget-object v0, Lcom/oculus/horizon/legacy/social/SocialManager;->TAG:Ljava/lang/Class;

    const-string v1, "Setting privacy state [%s] to [%s] with includedUserIds [%s] and identity in search [%s]"

    .line 1107
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 1102
    invoke-static/range {v0 .. v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1110
    iget-object v6, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v0, Lcom/oculus/horizon/legacy/social/SocialManager$19;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/legacy/social/SocialManager$19;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;Lcom/oculus/horizon/social/model/PrivacyState;[Ljava/lang/String;)V

    move-object v1, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/oculus/horizon/social/SocialMethods;->setPrivacy(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/PrivacyState;[Ljava/lang/String;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;Lretrofit/Callback;)V

    .line 1149
    return-void

    .line 1084
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1088
    goto :goto_1

    :cond_6
    move v0, v2

    .line 1091
    goto :goto_2
.end method

.method public setSeenActivityPrivacyUpdateRoadblock()V
    .locals 2

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mActivityPrivacyUpdateRoadblockListeners:Ljava/util/List;

    .line 1179
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 1178
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1182
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$21;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$21;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/social/SocialMethods;->setSeenActivityPrivacyUpdateRoadblock(Lretrofit/Callback;)V

    .line 1201
    return-void

    .line 1179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSeenSocialNux()V
    .locals 2

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mNuxActionsListeners:Ljava/util/List;

    .line 1154
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call this method without registering a listener first"

    .line 1153
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1157
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/social/SocialManager$20;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/SocialManager$20;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/social/SocialMethods;->setSeenSocialNux(Lretrofit/Callback;)V

    .line 1174
    return-void

    .line 1154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowTuneInButton()Z
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSocialExperiments:Lcom/oculus/horizon/legacy/social/SocialExperiments;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/SocialExperiments;->isProfileTuneInButtonEnabled()Z

    move-result v0

    return v0
.end method

.method public unregisterAchievementsListener(Lcom/oculus/horizon/legacy/social/SocialManager$AchievementsListener;)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mAchievementsListeners:Ljava/util/List;

    .line 312
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 311
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mAchievementsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public unregisterActivityPrivacyUpdateRoadblockListener(Lcom/oculus/horizon/legacy/social/SocialManager$ActivityPrivacyUpdateRoadblockListener;)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mActivityPrivacyUpdateRoadblockListeners:Ljava/util/List;

    .line 398
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 397
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mActivityPrivacyUpdateRoadblockListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
    return-void
.end method

.method public unregisterBlockedUsersListener(Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mBlockedUsersListeners:Ljava/util/List;

    .line 217
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 216
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mBlockedUsersListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public unregisterEntitlementsWithAchievementsListener(Lcom/oculus/horizon/legacy/social/SocialManager$EntitlementsWithAchievementsListener;)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mEntitlementsWithAchievementsListeners:Ljava/util/List;

    .line 295
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 294
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mEntitlementsWithAchievementsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public unregisterFacebookFriendsPolicyListener(Lcom/oculus/horizon/legacy/social/SocialManager$FacebookFriendsPolicyListener;)V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFacebookFriendsPolicyListeners:Ljava/util/List;

    .line 415
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 414
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFacebookFriendsPolicyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method public unregisterFriendRequestsListener(Lcom/oculus/horizon/legacy/social/SocialManager$FriendRequestsListener;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestsListeners:Ljava/util/List;

    .line 196
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 195
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendRequestsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method public unregisterFriendsListener(Lcom/oculus/horizon/legacy/social/SocialManager$FriendsListener;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendsListeners:Ljava/util/List;

    .line 175
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 174
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mFriendsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public unregisterGameInvitesListener(Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInvitesListeners:Ljava/util/List;

    .line 238
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 237
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mGameInvitesListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method public unregisterIncludedFriendsListener(Lcom/oculus/horizon/legacy/social/SocialManager$SpecificFriendsListener;)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSpecificFriendsListeners:Ljava/util/List;

    .line 360
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 359
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSpecificFriendsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public unregisterNuxActionsListener(Lcom/oculus/horizon/legacy/social/SocialManager$NuxActionsListener;)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mNuxActionsListeners:Ljava/util/List;

    .line 378
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 377
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mNuxActionsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method public unregisterPartyInvitesListener(Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInvitesListeners:Ljava/util/List;

    .line 259
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 258
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPartyInvitesListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method public unregisterPrivacyListener(Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPrivacyListeners:Ljava/util/List;

    .line 342
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 341
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mPrivacyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method public unregisterSearchResultsListener(Lcom/oculus/horizon/legacy/social/SocialManager$SearchResultsListener;)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSearchResultsListeners:Ljava/util/List;

    .line 327
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 326
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mSearchResultsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method public unregisterUserActionsListener(Lcom/oculus/horizon/legacy/social/SocialManager$UserActionsListener;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserActionsListeners:Ljava/util/List;

    .line 274
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 273
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserActionsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method public unregisterUserProfileListener(Lcom/oculus/horizon/legacy/social/SocialManager$UserProfileListener;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserProfileListeners:Ljava/util/List;

    .line 154
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "This listener is currently not registered"

    .line 153
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager;->mUserProfileListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method
