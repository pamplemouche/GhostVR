.class public Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;
.super Ljava/lang/Object;
.source "PaymentAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subcredit"
.end annotation


# instance fields
.field public balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

.field public expiration_time:Ljava/lang/String;

.field public subcredit_status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
