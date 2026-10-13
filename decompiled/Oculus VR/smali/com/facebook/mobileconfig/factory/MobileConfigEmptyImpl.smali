.class public Lcom/facebook/mobileconfig/factory/MobileConfigEmptyImpl;
.super Ljava/lang/Object;
.source "MobileConfigEmptyImpl.java"

# interfaces
.implements Lcom/facebook/mobileconfig/factory/MobileConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(J)Z
    .locals 1

    .prologue
    .line 39
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/MobileConfigDefaults;->getBoolDefaults(J)Z

    move-result v0

    return v0
.end method
