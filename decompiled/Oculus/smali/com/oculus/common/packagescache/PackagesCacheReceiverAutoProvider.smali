.class public Lcom/oculus/common/packagescache/PackagesCacheReceiverAutoProvider;
.super Lcom/facebook/inject/AbstractComponentProvider;
.source "PackagesCacheReceiverAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractComponentProvider",
        "<",
        "Lcom/oculus/common/packagescache/PackagesCacheReceiver;",
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
    instance-of v0, p1, Lcom/oculus/common/packagescache/PackagesCacheReceiverAutoProvider;

    return v0
.end method

.method public inject(Lcom/oculus/common/packagescache/PackagesCacheReceiver;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/oculus/common/packagescache/PackagesCacheReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/common/packagescache/PackagesCacheReceiver;)V

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/oculus/common/packagescache/PackagesCacheReceiver;

    invoke-virtual {p0, p1}, Lcom/oculus/common/packagescache/PackagesCacheReceiverAutoProvider;->inject(Lcom/oculus/common/packagescache/PackagesCacheReceiver;)V

    return-void
.end method
