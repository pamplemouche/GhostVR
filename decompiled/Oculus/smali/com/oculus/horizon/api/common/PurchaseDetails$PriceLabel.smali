.class public Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;
.super Ljava/lang/Object;
.source "PurchaseDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/PurchaseDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriceLabel"
.end annotation


# instance fields
.field public formatted:Ljava/lang/String;

.field public offset_amount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
