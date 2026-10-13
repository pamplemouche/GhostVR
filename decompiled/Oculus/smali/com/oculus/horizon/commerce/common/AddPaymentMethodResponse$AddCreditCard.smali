.class public Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse$AddCreditCard;
.super Ljava/lang/Object;
.source "AddPaymentMethodResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCreditCard"
.end annotation


# instance fields
.field public payment_method:Lcom/oculus/horizon/api/common/ExternalCreditCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
