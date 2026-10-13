.class public Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;
.super Ljava/lang/Object;
.source "ConfirmOrderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/commerce/ConfirmOrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmOrder"
.end annotation


# instance fields
.field public entitlement:Lcom/oculus/horizon/api/common/Entitlement;

.field public related_entitlements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Entitlement;",
            ">;"
        }
    .end annotation
.end field

.field public stored_credits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
