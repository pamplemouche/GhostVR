.class public Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchasesForJSON;
.super Ljava/lang/Object;
.source "DurableIAPResultBuilder.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/result/DurableIAPResultBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PurchasesForJSON"
.end annotation


# instance fields
.field public final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchaseForJSON;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/durableiap/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchasesForJSON;->data:Ljava/util/List;

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/durableiap/Purchase;

    .line 62
    iget-object v2, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchasesForJSON;->data:Ljava/util/List;

    new-instance v3, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchaseForJSON;

    invoke-direct {v3, v0}, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchaseForJSON;-><init>(Lcom/oculus/durableiap/Purchase;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
