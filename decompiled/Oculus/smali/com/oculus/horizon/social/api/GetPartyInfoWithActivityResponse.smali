.class public Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;
.super Ljava/lang/Object;
.source "GetPartyInfoWithActivityResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyUsers;,
        Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyBlockedUsers;,
        Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInvitedUsers;,
        Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyBlockedInvitedUsers;,
        Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;,
        Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$ActivityImage;,
        Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$Application;
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public party_blocked_invited_users:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyBlockedInvitedUsers;

.field public party_blocked_users:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyBlockedUsers;

.field public party_invite_activity:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public party_invited_users:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInvitedUsers;

.field public party_users:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyUsers;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
