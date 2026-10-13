.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter_FindFacebookFriendsLinkAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "SocialAdapter_FindFacebookFriendsLinkAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FindFacebookFriendsLink;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FindFacebookFriendsLink;
    .locals 2

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.horizon.legacy.social.adapters.SocialAdapter.FindFacebookFriendsLink"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FindFacebookFriendsLink;

    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FindFacebookFriendsLink;-><init>(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter_FindFacebookFriendsLinkAutoProvider;->get()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FindFacebookFriendsLink;

    move-result-object v0

    return-object v0
.end method
