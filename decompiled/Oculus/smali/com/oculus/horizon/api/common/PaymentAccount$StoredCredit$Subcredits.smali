.class public Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits;
.super Ljava/lang/Object;
.source "PaymentAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subcredits"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;
    }
.end annotation


# instance fields
.field public nodes:Ljava/util/List;
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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
