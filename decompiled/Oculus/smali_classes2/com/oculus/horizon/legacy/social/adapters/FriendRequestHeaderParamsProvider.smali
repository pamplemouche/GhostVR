.class public interface abstract Lcom/oculus/horizon/legacy/social/adapters/FriendRequestHeaderParamsProvider;
.super Ljava/lang/Object;
.source "FriendRequestHeaderParamsProvider.java"


# virtual methods
.method public abstract getFriendRequests()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/social/model/FriendRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUser()Lcom/oculus/horizon/api/common/user/User;
.end method
