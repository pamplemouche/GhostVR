.class public Lcom/oculus/library/net/ActiveEntitlementsResponse;
.super Ljava/lang/Object;
.source "ActiveEntitlementsResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/library/net/ActiveEntitlementsResponse$ActiveAndroidEntitlement;,
        Lcom/oculus/library/net/ActiveEntitlementsResponse$ActiveEntitlements;,
        Lcom/oculus/library/net/ActiveEntitlementsResponse$MyEntitlements;
    }
.end annotation


# instance fields
.field public entitlements:Lcom/oculus/library/net/ActiveEntitlementsResponse$MyEntitlements;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
