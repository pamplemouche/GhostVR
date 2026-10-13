.class public Lcom/oculus/durableiap/net/IAPEntitlementsResponse$AppItem;
.super Ljava/lang/Object;
.source "IAPEntitlementsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/durableiap/net/IAPEntitlementsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation


# instance fields
.field public grouping:Lcom/oculus/durableiap/net/IAPEntitlementsResponse$Grouping;

.field public iap_entitlements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/durableiap/net/IAPEntitlementsResponse$IAPEntitlement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
