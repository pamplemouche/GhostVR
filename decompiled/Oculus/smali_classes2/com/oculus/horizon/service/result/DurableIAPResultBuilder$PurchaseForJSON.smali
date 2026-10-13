.class public Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchaseForJSON;
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
    name = "PurchaseForJSON"
.end annotation


# instance fields
.field public final expiration_time:J

.field public final grant_time:J

.field public final id:Ljava/lang/String;

.field public final item:Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$ItemForJSON;


# direct methods
.method public constructor <init>(Lcom/oculus/durableiap/Purchase;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-object v0, p1, Lcom/oculus/durableiap/Purchase;->expirationTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 47
    :goto_0
    iput-wide v0, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchaseForJSON;->expiration_time:J

    .line 48
    iget-object v0, p1, Lcom/oculus/durableiap/Purchase;->grantTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchaseForJSON;->grant_time:J

    .line 49
    iget-object v0, p1, Lcom/oculus/durableiap/Purchase;->purchaseID:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchaseForJSON;->id:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$ItemForJSON;

    iget-object v1, p1, Lcom/oculus/durableiap/Purchase;->sku:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$ItemForJSON;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$PurchaseForJSON;->item:Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$ItemForJSON;

    .line 51
    return-void

    .line 46
    :cond_0
    iget-object v0, p1, Lcom/oculus/durableiap/Purchase;->expirationTime:Ljava/lang/String;

    .line 47
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method
