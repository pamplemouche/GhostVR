.class public Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse;
.super Ljava/lang/Object;
.source "PartyInvitableUsersResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Party;,
        Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Friends;
    }
.end annotation


# instance fields
.field public current_party:Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Party;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public friends:Lcom/oculus/horizon/social/api/PartyInvitableUsersResponse$Friends;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
