.class public Lcom/oculus/horizon/parties/api/PartyStatusResponse;
.super Ljava/lang/Object;
.source "PartyStatusResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/parties/api/PartyStatusResponse$User;
    }
.end annotation


# instance fields
.field public user:Lcom/oculus/horizon/parties/api/PartyStatusResponse$User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
