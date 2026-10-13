.class public Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;
.super Ljava/lang/Object;
.source "PaymentAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/PaymentAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoredCredit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits;
    }
.end annotation


# instance fields
.field public balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

.field public id:Ljava/lang/String;

.field public subcredits:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->subcredits:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->subcredits:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits;->nodes:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
