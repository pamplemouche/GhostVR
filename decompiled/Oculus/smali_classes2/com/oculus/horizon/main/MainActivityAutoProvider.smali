.class public Lcom/oculus/horizon/main/MainActivityAutoProvider;
.super Lcom/facebook/inject/AbstractComponentProvider;
.source "MainActivityAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractComponentProvider",
        "<",
        "Lcom/oculus/horizon/main/MainActivity;",
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
    instance-of v0, p1, Lcom/oculus/horizon/main/MainActivityAutoProvider;

    return v0
.end method

.method public inject(Lcom/oculus/horizon/main/MainActivity;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/oculus/horizon/main/MainActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/main/MainActivity;)V

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/oculus/horizon/main/MainActivity;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/main/MainActivityAutoProvider;->inject(Lcom/oculus/horizon/main/MainActivity;)V

    return-void
.end method
