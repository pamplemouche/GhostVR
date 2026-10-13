.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequestHeader;
.super Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
.source "SocialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendRequestHeader"
.end annotation


# instance fields
.field public final provider:Lcom/oculus/horizon/legacy/social/adapters/FriendRequestHeaderParamsProvider;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/legacy/social/adapters/FriendRequestHeaderParamsProvider;)V
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUEST_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V

    .line 437
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequestHeader;->provider:Lcom/oculus/horizon/legacy/social/adapters/FriendRequestHeaderParamsProvider;

    .line 438
    return-void
.end method


# virtual methods
.method public getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequestHeader;->provider:Lcom/oculus/horizon/legacy/social/adapters/FriendRequestHeaderParamsProvider;

    .line 444
    invoke-interface {v0}, Lcom/oculus/horizon/legacy/social/adapters/FriendRequestHeaderParamsProvider;->getFriendRequests()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequestHeader;->provider:Lcom/oculus/horizon/legacy/social/adapters/FriendRequestHeaderParamsProvider;

    invoke-interface {v1}, Lcom/oculus/horizon/legacy/social/adapters/FriendRequestHeaderParamsProvider;->getUser()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/social/SocialUtils;->USER_OF_FRIEND_REQUEST:Lcom/google/common/base/Function;

    .line 443
    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/social/SocialUtils;->containsEntry(Ljava/util/List;Ljava/lang/Object;Lcom/google/common/base/Function;)Z

    move-result v0

    .line 445
    if-eqz v0, :cond_0

    .line 446
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUEST_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 448
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    goto :goto_0
.end method
