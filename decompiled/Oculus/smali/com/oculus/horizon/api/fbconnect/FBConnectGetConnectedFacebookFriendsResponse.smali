.class public Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse;
.super Ljava/lang/Object;
.source "FBConnectGetConnectedFacebookFriendsResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$LinkedAccountsInfo;,
        Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriends;,
        Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$ConnectedFacebookFriend;
    }
.end annotation


# instance fields
.field public linked_accounts_info:Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsResponse$LinkedAccountsInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
