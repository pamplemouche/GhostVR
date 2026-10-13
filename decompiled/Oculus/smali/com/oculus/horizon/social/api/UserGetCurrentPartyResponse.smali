.class public Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse;
.super Ljava/lang/Object;
.source "UserGetCurrentPartyResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse$Party;
    }
.end annotation


# instance fields
.field public current_party:Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse$Party;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
