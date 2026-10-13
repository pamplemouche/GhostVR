.class public Lcom/oculus/horizon/payments/ui/PurchaseActivityAutoProvider;
.super Lcom/facebook/inject/AbstractComponentProvider;
.source "PurchaseActivityAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractComponentProvider",
        "<",
        "Lcom/oculus/horizon/payments/ui/PurchaseActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractComponentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    instance-of v0, p1, Lcom/oculus/horizon/payments/ui/PurchaseActivityAutoProvider;

    return v0
.end method

.method public inject(Lcom/oculus/horizon/payments/ui/PurchaseActivity;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/PurchaseActivity;)V

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/oculus/horizon/payments/ui/PurchaseActivity;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/payments/ui/PurchaseActivityAutoProvider;->inject(Lcom/oculus/horizon/payments/ui/PurchaseActivity;)V

    return-void
.end method
