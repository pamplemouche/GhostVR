.class public Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;
.super Ljava/lang/Object;
.source "FriendRequestsReceived.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Edge"
.end annotation


# instance fields
.field public node:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

.field public via_source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
