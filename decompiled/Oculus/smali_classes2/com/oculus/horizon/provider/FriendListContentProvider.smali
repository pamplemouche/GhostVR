.class public Lcom/oculus/horizon/provider/FriendListContentProvider;
.super Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;
.source "FriendListContentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WHITELISTED_PACKAGES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/provider/FriendListContentProvider;)V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/provider/FriendListContentProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/provider/FriendListContentProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/provider/FriendListContentProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/provider/FriendListContentProvider;)V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/provider/FriendListContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/FriendListContentProvider;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {p0}, Lcom/oculus/horizon/social/SocialMethods;->$ul_$xXXcom_oculus_horizon_social_SocialMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/FriendListContentProvider;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    invoke-static {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginModule;->$ul_$xXXcom_oculus_horizon_platformplugin_PlatformPluginManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/FriendListContentProvider;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-class v0, Lcom/oculus/horizon/provider/FriendListContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/provider/FriendListContentProvider;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "com.oculus.vrshell"

    const-string v1, "com.oculus.vrshell.home"

    const-string v2, "com.oculus.livingroom"

    .line 40
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/provider/FriendListContentProvider;->WHITELISTED_PACKAGES:Lcom/google/common/collect/ImmutableSet;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;-><init>()V

    return-void
.end method

.method private createParty(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 374
    iget-object v0, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/social/SocialMethods;->partyCreateSync(Ljava/lang/String;)Lcom/oculus/horizon/social/api/PartyCreateResponse;

    move-result-object v0

    .line 375
    iget-object v0, v0, Lcom/oculus/horizon/social/api/PartyCreateResponse;->party:Lcom/oculus/horizon/social/api/PartyCreateResponse$Party;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/PartyCreateResponse$Party;->id:Ljava/lang/String;

    .line 376
    invoke-direct {p0, v0}, Lcom/oculus/horizon/provider/FriendListContentProvider;->startPartyChat(Ljava/lang/String;)V

    .line 378
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "current_party_id"

    aput-object v3, v2, v5

    invoke-direct {v1, v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 385
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 386
    return-object v1
.end method

.method private getFriendList()Landroid/database/Cursor;
    .locals 12

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/FriendListContentProvider;->getLoggedInUserId()Ljava/lang/String;

    move-result-object v2

    .line 199
    const/4 v1, 0x0

    .line 200
    const/4 v0, 0x0

    .line 202
    if-eqz v2, :cond_a

    .line 203
    iget-object v0, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/social/SocialMethods;->fetchPartyInvitableUsersSync(Ljava/lang/String;)Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse;

    move-result-object v0

    .line 204
    iget-object v1, v0, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse;->friends:Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Friends;

    iget v1, v1, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Friends;->count:I

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    .line 207
    :goto_0
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "name"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "presence"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "profile_image_url"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "invite_state"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-string v5, "current_party_id"

    aput-object v5, v2, v3

    invoke-direct {v4, v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 219
    if-nez v1, :cond_0

    move-object v0, v4

    .line 255
    :goto_1
    return-object v0

    .line 224
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 225
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 226
    iget-object v0, v1, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse;->current_party:Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Party;

    if-eqz v0, :cond_2

    .line 227
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget-object v3, v1, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse;->current_party:Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Party;

    iget-object v3, v3, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Party;->id:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 229
    iget-object v0, v1, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse;->current_party:Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Party;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Party;->party_invited_users:Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Friends;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Friends;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    .line 230
    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 233
    :cond_1
    iget-object v0, v1, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse;->current_party:Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Party;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Party;->party_users:Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Friends;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Friends;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    .line 234
    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 238
    :cond_2
    iget-object v0, v1, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse;->friends:Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Friends;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Friends;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    .line 239
    iget-object v1, v0, Lcom/oculus/horizon/api/common/user/User;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/oculus/horizon/api/common/user/User;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    iget-object v1, v0, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    .line 240
    :goto_5
    iget-object v2, v0, Lcom/oculus/horizon/api/common/user/User;->profile_photo:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/oculus/horizon/api/common/user/User;->profile_photo:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/user/ProfilePhoto;->uri:Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_4
    const-string v2, ""

    .line 245
    :goto_6
    sget-object v3, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->DEFAULT_UNKNOWN:Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    invoke-virtual {v3}, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->ordinal()I

    move-result v3

    .line 246
    iget-object v8, v0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 247
    sget-object v3, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->JOINED:Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    invoke-virtual {v3}, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->ordinal()I

    move-result v3

    .line 252
    :cond_5
    :goto_7
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    const/4 v1, 0x2

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->presence:Ljava/lang/String;

    aput-object v0, v8, v1

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-object v1, v8, v0

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4

    .line 239
    :cond_6
    iget-object v1, v0, Lcom/oculus/horizon/api/common/user/User;->name:Ljava/lang/String;

    goto :goto_5

    .line 240
    :cond_7
    iget-object v2, v0, Lcom/oculus/horizon/api/common/user/User;->profile_photo:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/user/ProfilePhoto;->uri:Ljava/lang/String;

    goto :goto_6

    .line 248
    :cond_8
    iget-object v8, v0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 249
    sget-object v3, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->INVITED:Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;

    invoke-virtual {v3}, Lcom/oculus/provider/OculusContent$FriendList$UserInviteState;->ordinal()I

    move-result v3

    goto :goto_7

    :cond_9
    move-object v0, v4

    .line 255
    goto/16 :goto_1

    :cond_a
    move-object v11, v0

    move v0, v1

    move-object v1, v11

    goto/16 :goto_0
.end method

.method private getLinkedAccountsInfo()Landroid/database/Cursor;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    sget-object v3, Lcom/oculus/horizon/provider/FriendListContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->updateStateAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v2

    .line 315
    invoke-virtual {v2}, Lbolts/Task;->waitForCompletion()V

    .line 317
    iget-object v2, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v2}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->maybeAccessTokenValid()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 320
    :goto_0
    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "is_facebook_linked"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 322
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 323
    const/4 v0, 0x0

    sget v3, Lcom/oculus/horizon/provider/ProviderModule$UL_id;->$ul_$xXXcom_oculus_horizon_provider_FriendListContentProviderLogger$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v3, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/provider/FriendListContentProviderLogger;

    invoke-virtual {v0, p0, v2}, Lcom/oculus/horizon/provider/FriendListContentProviderLogger;->reportLinkedAccountsQuery(Landroid/content/ContentProvider;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 328
    :goto_1
    return-object v0

    :cond_0
    move v2, v1

    .line 317
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    sget-object v1, Lcom/oculus/horizon/provider/FriendListContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "Error occured when fetching FB account linked status"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getMicrophoneMuteStateFromPartyStateJson(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 391
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 392
    const-string v1, "microphone_muted"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$MicrophoneMuteState;->valueOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 395
    :goto_0
    return v0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    sget-object v1, Lcom/oculus/horizon/provider/FriendListContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "I don\'t like your json"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPartyChatVolume()Landroid/database/Cursor;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getPartyChatVolumeX()F

    move-result v1

    .line 183
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "party_volume"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 189
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    sget-object v1, Lcom/oculus/horizon/provider/FriendListContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get party volume"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPartyInfoWithActivity(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    .line 261
    invoke-virtual {v0, p1}, Lcom/oculus/horizon/social/SocialMethods;->getPartyInfoWithActivitySync(Ljava/lang/String;)Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;

    move-result-object v2

    .line 262
    new-instance v3, Landroid/database/MatrixCursor;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "party_id"

    aput-object v4, v0, v7

    const-string v4, "party_blocked_invited_users"

    aput-object v4, v0, v6

    const-string v4, "party_invited_users"

    aput-object v4, v0, v8

    const-string v4, "party_blocked_current_users"

    aput-object v4, v0, v9

    const/4 v4, 0x4

    const-string v5, "party_current_users"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "party_activity_id"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "party_activity_title"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "party_activity_subtitle"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "party_activity_deeplink"

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const-string v5, "party_activity_image_uri"

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const-string v5, "party_activity_package_name"

    aput-object v5, v0, v4

    const/16 v4, 0xb

    const-string v5, "party_activity_app_id"

    aput-object v5, v0, v4

    invoke-direct {v3, v0, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 279
    const/16 v0, 0xc

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->id:Ljava/lang/String;

    aput-object v0, v4, v7

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_blocked_invited_users:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyBlockedInvitedUsers;

    iget v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyBlockedInvitedUsers;->count:I

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invited_users:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInvitedUsers;

    iget v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInvitedUsers;->count:I

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_blocked_users:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyBlockedUsers;

    iget v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyBlockedUsers;->count:I

    .line 284
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v0, 0x4

    iget-object v5, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_users:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyUsers;

    iget v5, v5, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyUsers;->count:I

    .line 285
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x5

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;->id:Ljava/lang/String;

    :goto_0
    aput-object v0, v4, v5

    const/4 v5, 0x6

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;->title:Ljava/lang/String;

    :goto_1
    aput-object v0, v4, v5

    const/4 v5, 0x7

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;->subtitle:Ljava/lang/String;

    :goto_2
    aput-object v0, v4, v5

    const/16 v5, 0x8

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;->deeplink:Ljava/lang/String;

    :goto_3
    aput-object v0, v4, v5

    const/16 v5, 0x9

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;->image:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$ActivityImage;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;->image:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$ActivityImage;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$ActivityImage;->uri:Ljava/lang/String;

    :goto_4
    aput-object v0, v4, v5

    const/16 v5, 0xa

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;->application:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$Application;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;->application:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$Application;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$Application;->package_name:Ljava/lang/String;

    :goto_5
    aput-object v0, v4, v5

    const/16 v0, 0xb

    iget-object v5, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    iget-object v5, v5, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;->application:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$Application;

    if-eqz v5, :cond_0

    iget-object v1, v2, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;->party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;

    iget-object v1, v1, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;->application:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$Application;

    iget-object v1, v1, Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$Application;->id:Ljava/lang/String;

    :cond_0
    aput-object v1, v4, v0

    .line 279
    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 302
    return-object v3

    :cond_1
    move-object v0, v1

    .line 285
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto :goto_5
.end method

.method private getSocialActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 334
    invoke-static {p2}, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->fromString(Ljava/lang/String;)Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    invoke-virtual {v1, p1, v0}, Lcom/oculus/horizon/social/SocialMethods;->getSocialActivitySync(Ljava/lang/String;Lcom/oculus/horizon/social/request/SocialActivityParams$Role;)Lcom/oculus/horizon/social/api/SocialActivityResponse;

    move-result-object v0

    .line 337
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v6

    const-string v3, "subtitle"

    aput-object v3, v2, v7

    const-string v3, "image_uri"

    aput-object v3, v2, v8

    const-string v3, "package_name"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "deeplink"

    aput-object v4, v2, v3

    invoke-direct {v1, v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 348
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/oculus/horizon/social/api/SocialActivityResponse;->social_activity:Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;

    iget-object v3, v3, Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;->title:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, v0, Lcom/oculus/horizon/social/api/SocialActivityResponse;->social_activity:Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;

    iget-object v3, v3, Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;->subtitle:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, v0, Lcom/oculus/horizon/social/api/SocialActivityResponse;->social_activity:Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;

    iget-object v3, v3, Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;->image:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/user/ProfilePhoto;->uri:Ljava/lang/String;

    aput-object v3, v2, v8

    iget-object v3, v0, Lcom/oculus/horizon/social/api/SocialActivityResponse;->social_activity:Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;

    iget-object v3, v3, Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;->application:Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity$Application;

    iget-object v3, v3, Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity$Application;->package_name:Ljava/lang/String;

    aput-object v3, v2, v9

    const/4 v3, 0x4

    iget-object v0, v0, Lcom/oculus/horizon/social/api/SocialActivityResponse;->social_activity:Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;->deeplink:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 357
    return-object v1
.end method

.method private startPartyChat(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 361
    if-nez p1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    .line 370
    iget-object v1, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->startPartyChat(J)Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public doGetType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doInitialization()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->doInitialization()V

    .line 33
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/FriendListContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/provider/FriendListContentProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/provider/FriendListContentProvider;)V

    .line 64
    return-void
.end method

.method public doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p1, :cond_1

    .line 71
    sget-object v1, Lcom/oculus/horizon/provider/FriendListContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "Cannot resolve query with null URI"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->FRIEND_LIST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_2

    .line 76
    invoke-direct {p0}, Lcom/oculus/horizon/provider/FriendListContentProvider;->getFriendList()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_CREATE:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    const-string v0, "invite_activity_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-direct {p0, v0}, Lcom/oculus/horizon/provider/FriendListContentProvider;->createParty(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_3
    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_GET_VOLUME:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_4

    .line 81
    invoke-direct {p0}, Lcom/oculus/horizon/provider/FriendListContentProvider;->getPartyChatVolume()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_GET_INFO_WITH_ACTIVITY:Landroid/net/Uri;

    .line 83
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 84
    const-string v0, "party_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Lcom/oculus/horizon/provider/FriendListContentProvider;->getPartyInfoWithActivity(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/provider/OculusContent$FriendList;->GET_SOCIAL_ACTIVITY:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    const-string v0, "activity_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "role"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/provider/FriendListContentProvider;->getSocialActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_6
    sget-object v1, Lcom/oculus/provider/OculusContent$FriendList;->GET_LINKED_ACCOUNTS_INFO:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/oculus/horizon/provider/FriendListContentProvider;->getLinkedAccountsInfo()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    if-nez p1, :cond_0

    .line 100
    sget-object v0, Lcom/oculus/horizon/provider/FriendListContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "Cannot resolve query with null URI"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 158
    :goto_0
    return v0

    .line 104
    :cond_0
    sget-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_INVITE_USERS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const-string v0, "party_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "user_ids"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    iget-object v3, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/oculus/horizon/social/SocialMethods;->partyInviteUsersSync(Ljava/lang/String;[Ljava/lang/String;)V

    move v0, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    sget-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_LEAVE:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_2

    .line 111
    const-string v0, "party_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->stopPartyChat()Landroid/os/Bundle;

    .line 113
    iget-object v1, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/social/SocialMethods;->partyLeaveSync(Ljava/lang/String;)V

    move v0, v2

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    sget-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_JOIN:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_3

    .line 116
    const-string v0, "party_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/social/SocialMethods;->partyJoinSync(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v0}, Lcom/oculus/horizon/provider/FriendListContentProvider;->startPartyChat(Ljava/lang/String;)V

    move v0, v2

    .line 119
    goto :goto_0

    .line 120
    :cond_3
    sget-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_SET_TYPE:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_4

    .line 121
    const-string v0, "party_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    const-string v1, "party_type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    iget-object v3, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    invoke-virtual {v3, v0, v1}, Lcom/oculus/horizon/social/SocialMethods;->partySetTypeSync(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 124
    goto :goto_0

    .line 125
    :cond_4
    sget-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_SET_VOLUME:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_5

    .line 126
    const-string v0, "party_volume"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->setPartyChatVolumeX(F)V
    :try_end_0
    .catch Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 129
    goto/16 :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    sget-object v2, Lcom/oculus/horizon/provider/FriendListContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "Failed to set party volume"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 132
    goto/16 :goto_0

    .line 134
    :cond_5
    sget-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_SET_SELF_MUTE:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_6

    .line 135
    const-string v0, "party_self_mute"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 137
    :try_start_1
    iget-object v2, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->setSystemVoipMicrophoneMutedX(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/oculus/horizon/provider/FriendListContentProvider;->getMicrophoneMuteStateFromPartyStateJson(Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    goto/16 :goto_0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    sget-object v2, Lcom/oculus/horizon/provider/FriendListContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "Failed to set local party mute"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 141
    goto/16 :goto_0

    .line 142
    :catch_2
    move-exception v0

    .line 143
    sget-object v2, Lcom/oculus/horizon/provider/FriendListContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "Failed to set local party mute"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 144
    goto/16 :goto_0

    .line 146
    :cond_6
    sget-object v0, Lcom/oculus/provider/OculusContent$FriendList;->PARTY_GET_SELF_MUTE:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_7

    .line 148
    :try_start_2
    iget-object v0, p0, Lcom/oculus/horizon/provider/FriendListContentProvider;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    .line 149
    invoke-virtual {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getSystemVoipStateX()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/oculus/horizon/provider/FriendListContentProvider;->getMicrophoneMuteStateFromPartyStateJson(Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v0

    goto/16 :goto_0

    .line 150
    :catch_3
    move-exception v0

    .line 151
    sget-object v2, Lcom/oculus/horizon/provider/FriendListContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get local party mute"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 152
    goto/16 :goto_0

    .line 153
    :catch_4
    move-exception v0

    .line 154
    sget-object v2, Lcom/oculus/horizon/provider/FriendListContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get local party mute"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 155
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 158
    goto/16 :goto_0
.end method

.method protected getFbPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "com.oculus.horizon.fbpermission.FRIEND_LIST_CONTENT_PROVIDER"

    return-object v0
.end method

.method protected getWhitelistedPackages()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/oculus/horizon/provider/FriendListContentProvider;->WHITELISTED_PACKAGES:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method
