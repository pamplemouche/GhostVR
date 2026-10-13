.class public Lcom/oculus/durableiap/net/IAPEntitlementsResponse$ActiveAndroidEntitlements;
.super Ljava/lang/Object;
.source "IAPEntitlementsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/durableiap/net/IAPEntitlementsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveAndroidEntitlements"
.end annotation


# instance fields
.field public nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/durableiap/net/IAPEntitlementsResponse$ActiveAndroidEntitlement;",
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
