.class public Lcom/oculus/horizon/api/commerce/PaymentMethodsResponse;
.super Ljava/lang/Object;
.source "PaymentMethodsResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation


# instance fields
.field public all_payment_methods:Lcom/oculus/horizon/api/common/PaymentMethods;

.field public default_digital_payment_method:Lcom/oculus/horizon/api/common/PaymentMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
    .line 18
    iget-object v0, p0, Lcom/oculus/horizon/api/commerce/PaymentMethodsResponse;->all_payment_methods:Lcom/oculus/horizon/api/common/PaymentMethods;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "UserToAllPaymentMethodsResponse had no all_payment_methods"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/api/commerce/PaymentMethodsResponse;->all_payment_methods:Lcom/oculus/horizon/api/common/PaymentMethods;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentMethods;->nodes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "all_payment_methods had no nodes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    return-void
.end method
