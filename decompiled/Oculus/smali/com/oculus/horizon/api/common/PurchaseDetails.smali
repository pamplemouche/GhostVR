.class public Lcom/oculus/horizon/api/common/PurchaseDetails;
.super Ljava/lang/Object;
.source "PurchaseDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;
    }
.end annotation


# instance fields
.field public exemptions:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

.field public price:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

.field public purchase_time:Ljava/lang/String;

.field public show_store_credit_warning:Z

.field public tax:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

.field public terms_of_service:Ljava/lang/String;

.field public total:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

.field public usable_store_credit:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
