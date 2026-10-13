.class public Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;
.super Ljava/lang/Object;
.source "FBConnectGetConnectedFacebookFriendsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectedFacebookFriends"
.end annotation


# instance fields
.field public count:I

.field public nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
