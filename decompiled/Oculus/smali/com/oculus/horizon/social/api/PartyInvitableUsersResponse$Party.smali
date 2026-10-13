.class public Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Party;
.super Ljava/lang/Object;
.source "PartyInvitableUsersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Party"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public party_invited_users:Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Friends;

.field public party_users:Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Friends;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
