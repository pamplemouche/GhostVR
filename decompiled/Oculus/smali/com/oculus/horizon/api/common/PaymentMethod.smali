.class public Lcom/oculus/horizon/api/common/PaymentMethod;
.super Ljava/lang/Object;
.source "PaymentMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/PaymentMethod$Balance;
    }
.end annotation


# instance fields
.field public __typename:Ljava/lang/String;

.field public balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

.field public card_type:Ljava/lang/String;

.field public display_name:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public last4:Ljava/lang/String;

.field public paypal_context:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
