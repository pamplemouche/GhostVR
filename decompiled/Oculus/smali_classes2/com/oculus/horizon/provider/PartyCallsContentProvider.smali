.class public Lcom/oculus/horizon/provider/PartyCallsContentProvider;
.super Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;
.source "PartyCallsContentProvider.java"


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
.field private mPartyCallManager:Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/provider/PartyCallsContentProvider;)V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/provider/PartyCallsContentProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/provider/PartyCallsContentProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/provider/PartyCallsContentProvider;)V
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingInterfacesModule;->$ul_$xXXcom_oculus_horizon_livestreaming_interfaces_PartyCallManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->mPartyCallManager:Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-class v0, Lcom/oculus/horizon/provider/PartyCallsContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "com.oculus.vrshell.home"

    const-string v1, "com.oculus.rooms"

    .line 26
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->WHITELISTED_PACKAGES:Lcom/google/common/collect/ImmutableSet;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;-><init>()V

    return-void
.end method

.method private deleteIncomingCalls([Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 140
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 141
    iget-object v4, p0, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->mPartyCallManager:Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;

    invoke-interface {v4, v3}, Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;->removeIncomingCall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 140
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    return v0
.end method

.method private getIncomingCalls()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->mPartyCallManager:Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;

    invoke-interface {v0}, Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;->getIncomingCalls()Ljava/util/Collection;

    move-result-object v0

    .line 67
    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "call_id"

    aput-object v3, v2, v5

    const-string v3, "caller_id"

    aput-object v3, v2, v6

    const-string v3, "caller_name"

    aput-object v3, v2, v7

    const-string v3, "caller_photo"

    aput-object v3, v2, v8

    const-string v3, "current_party_id"

    aput-object v3, v2, v9

    .line 76
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 78
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/livestreaming/model/IncomingCall;

    .line 79
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/oculus/horizon/livestreaming/model/IncomingCall;->id:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v0, Lcom/oculus/horizon/livestreaming/model/IncomingCall;->callerId:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v0, Lcom/oculus/horizon/livestreaming/model/IncomingCall;->callerName:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, v0, Lcom/oculus/horizon/livestreaming/model/IncomingCall;->callerPhoto:Landroid/net/Uri;

    .line 84
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v0, v0, Lcom/oculus/horizon/livestreaming/model/IncomingCall;->currentPartyId:Ljava/lang/String;

    aput-object v0, v3, v9

    .line 79
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_0
    return-object v1
.end method

.method private getPartyVideoStreams()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->mPartyCallManager:Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;

    invoke-interface {v0}, Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;->getVideoStreamingParticipants()[J

    move-result-object v2

    .line 95
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v0, v8, [Ljava/lang/String;

    const-string v4, "user_id"

    aput-object v4, v0, v1

    array-length v4, v2

    invoke-direct {v3, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 102
    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-wide v6, v2, v0

    .line 103
    new-array v5, v8, [Ljava/lang/Object;

    .line 105
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    .line 103
    invoke-virtual {v3, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-object v3
.end method

.method private markIncomingCallAsSeen([Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 160
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 161
    iget-object v4, p0, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->mPartyCallManager:Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;

    invoke-interface {v4, v3}, Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;->markIncomingCallAsSeen(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 160
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    return v0
.end method


# virtual methods
.method public doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 126
    if-nez p1, :cond_1

    .line 127
    sget-object v1, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "Cannot resolve query with null URI"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/provider/OculusContent$PartyCalls;->INCOMING_CALLS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-direct {p0, p3}, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->deleteIncomingCalls([Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public doGetType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doInitialization()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/oculus/horizon/provider/OculusLoggedInUserFbPermissionsContentProvider;->doInitialization()V

    .line 22
    invoke-virtual {p0}, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/provider/PartyCallsContentProvider;)V

    .line 44
    return-void
.end method

.method public doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50
    if-nez p1, :cond_1

    .line 51
    sget-object v1, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "Cannot resolve query with null URI"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/provider/OculusContent$PartyCalls;->INCOMING_CALLS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    invoke-direct {p0}, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->getIncomingCalls()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/provider/OculusContent$PartyVideoStreams;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->getPartyVideoStreams()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oculus/provider/OculusContent$PartyCalls;->INCOMING_CALLS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, p4}, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->markIncomingCallAsSeen([Ljava/lang/String;)I

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFbPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "com.oculus.horizon.fbpermission.PARTY_CALLS_CONTENT_PROVIDER"

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
    .line 32
    sget-object v0, Lcom/oculus/horizon/provider/PartyCallsContentProvider;->WHITELISTED_PACKAGES:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method
