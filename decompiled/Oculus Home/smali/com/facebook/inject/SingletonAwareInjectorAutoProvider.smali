.class public Lcom/facebook/inject/SingletonAwareInjectorAutoProvider;
.super Lcom/facebook/inject/AbstractComponentProvider;
.source "SingletonAwareInjectorAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractComponentProvider",
        "<",
        "Lcom/facebook/inject/SingletonAwareInjector;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/facebook/inject/AbstractComponentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 18
    instance-of v0, p1, Lcom/facebook/inject/SingletonAwareInjectorAutoProvider;

    return v0
.end method

.method public inject(Lcom/facebook/inject/SingletonAwareInjector;)V
    .locals 0
    .param p1, "instance"    # Lcom/facebook/inject/SingletonAwareInjector;

    .prologue
    .line 13
    invoke-static {p0, p1}, Lcom/facebook/inject/SingletonAwareInjector;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/facebook/inject/SingletonAwareInjector;)V

    .line 14
    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/facebook/inject/SingletonAwareInjector;

    invoke-virtual {p0, p1}, Lcom/facebook/inject/SingletonAwareInjectorAutoProvider;->inject(Lcom/facebook/inject/SingletonAwareInjector;)V

    return-void
.end method
