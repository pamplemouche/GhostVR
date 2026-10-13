.class public Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;
.super Ljava/lang/Object;
.source "FriendRequestsReceived.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;
    }
.end annotation


# instance fields
.field public count:I

.field public edges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
