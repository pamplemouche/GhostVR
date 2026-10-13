.class public Lcom/oculus/durableiap/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# instance fields
.field public final expirationTime:Ljava/lang/String;

.field public final grantTime:Ljava/lang/String;

.field public final purchaseID:Ljava/lang/String;

.field public final sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oculus/durableiap/Purchase;->sku:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/oculus/durableiap/Purchase;->purchaseID:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/oculus/durableiap/Purchase;->grantTime:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/oculus/durableiap/Purchase;->expirationTime:Ljava/lang/String;

    .line 16
    return-void
.end method
