.class public Lcom/oculus/horizon/social/api/FriendRequestSendResponse;
.super Ljava/lang/Object;
.source "FriendRequestSendResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation


# instance fields
.field public sent_friend_requestee:Lcom/oculus/horizon/api/common/user/User;

.field public sent_friend_requestee_search_result:Lcom/oculus/horizon/social/api/SearchResultUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
