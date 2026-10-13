.class public Lcom/oculus/durableiap/net/IAPEntitlementsResponse$IAPEntitlement;
.super Ljava/lang/Object;
.source "IAPEntitlementsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/durableiap/net/IAPEntitlementsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IAPEntitlement"
.end annotation


# instance fields
.field public active_state:Ljava/lang/String;

.field public expiration_time:Ljava/lang/String;

.field public grant_time:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public item:Lcom/oculus/durableiap/net/IAPEntitlementsResponse$Item;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
