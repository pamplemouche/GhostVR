.class public Lcom/oculus/horizon/commerce/CompletePurchaseResponse$EntitleUser;
.super Ljava/lang/Object;
.source "CompletePurchaseResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/commerce/CompletePurchaseResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntitleUser"
.end annotation


# instance fields
.field public entitlement:Lcom/oculus/horizon/api/common/Entitlement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
