.class public Lcom/oculus/horizon/social/api/PartyCreateResponse;
.super Ljava/lang/Object;
.source "PartyCreateResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/PartyCreateResponse$Party;
    }
.end annotation


# instance fields
.field public party:Lcom/oculus/horizon/social/api/PartyCreateResponse$Party;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oculus/horizon/social/api/PartyCreateResponse;->party:Lcom/oculus/horizon/social/api/PartyCreateResponse$Party;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Party was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/social/api/PartyCreateResponse;->party:Lcom/oculus/horizon/social/api/PartyCreateResponse$Party;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/PartyCreateResponse$Party;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/social/api/PartyCreateResponse;->party:Lcom/oculus/horizon/social/api/PartyCreateResponse$Party;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/PartyCreateResponse$Party;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Party.id was null or empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_2
    return-void
.end method
