.class public Lcom/oculus/durableiap/net/IAPEntitlementsResponse;
.super Ljava/lang/Object;
.source "IAPEntitlementsResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/durableiap/net/IAPEntitlementsResponse$Item;,
        Lcom/oculus/durableiap/net/IAPEntitlementsResponse$IAPEntitlement;,
        Lcom/oculus/durableiap/net/IAPEntitlementsResponse$Grouping;,
        Lcom/oculus/durableiap/net/IAPEntitlementsResponse$AppItem;,
        Lcom/oculus/durableiap/net/IAPEntitlementsResponse$ActiveAndroidEntitlement;,
        Lcom/oculus/durableiap/net/IAPEntitlementsResponse$ActiveAndroidEntitlements;,
        Lcom/oculus/durableiap/net/IAPEntitlementsResponse$AppEntitlements;
    }
.end annotation


# static fields
.field public static ACTIVE_STATE_PERMANENT:Ljava/lang/String;


# instance fields
.field public entitlements:Lcom/oculus/durableiap/net/IAPEntitlementsResponse$AppEntitlements;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "PERMANENT"

    sput-object v0, Lcom/oculus/durableiap/net/IAPEntitlementsResponse;->ACTIVE_STATE_PERMANENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
