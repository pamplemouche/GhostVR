.class public Lcom/oculus/horizon/api/commerce/ExternalCreditCardsResponse;
.super Ljava/lang/Object;
.source "ExternalCreditCardsResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation


# instance fields
.field public payment_methods:Lcom/oculus/horizon/api/common/ExternalCreditCards;


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
    iget-object v0, p0, Lcom/oculus/horizon/api/commerce/ExternalCreditCardsResponse;->payment_methods:Lcom/oculus/horizon/api/common/ExternalCreditCards;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ExternalCreditCardsResponse had no payment_methods"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/api/commerce/ExternalCreditCardsResponse;->payment_methods:Lcom/oculus/horizon/api/common/ExternalCreditCards;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/ExternalCreditCards;->nodes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "payment_methods had no nodes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    return-void
.end method
