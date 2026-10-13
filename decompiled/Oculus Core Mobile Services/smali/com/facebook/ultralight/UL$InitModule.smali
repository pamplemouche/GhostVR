.class public final Lcom/facebook/ultralight/UL$InitModule;
.super Lcom/facebook/inject/AbstractPrivateModule;
.source "UL.java"

# interfaces
.implements Lcom/facebook/inject/SpecialModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ultralight/UL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitModule"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1460
    invoke-direct {p0}, Lcom/facebook/inject/AbstractPrivateModule;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lcom/facebook/inject/Binder;)V
    .locals 3

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/facebook/ultralight/UL$InitModule;->mBinder:Lcom/facebook/inject/Binder;

    .line 1466
    const-class v1, Ljavax/inject/Singleton;

    new-instance v2, Lcom/facebook/inject/SingletonScope;

    invoke-interface {p1}, Lcom/facebook/inject/Binder;->getInjector()Lcom/facebook/inject/Injector;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/FbInjector;

    invoke-direct {v2, v0}, Lcom/facebook/inject/SingletonScope;-><init>(Lcom/facebook/inject/FbInjector;)V

    invoke-virtual {p0, v1, v2}, Lcom/facebook/ultralight/UL$InitModule;->bindScope(Ljava/lang/Class;Lcom/facebook/inject/Scope;)V

    .line 1467
    const-class v1, Lcom/facebook/inject/ContextScoped;

    new-instance v2, Lcom/facebook/inject/ContextScope;

    invoke-interface {p1}, Lcom/facebook/inject/Binder;->getInjector()Lcom/facebook/inject/Injector;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/FbInjector;

    invoke-direct {v2, v0}, Lcom/facebook/inject/ContextScope;-><init>(Lcom/facebook/inject/FbInjector;)V

    invoke-virtual {p0, v1, v2}, Lcom/facebook/ultralight/UL$InitModule;->bindScope(Ljava/lang/Class;Lcom/facebook/inject/Scope;)V

    .line 1468
    return-void
.end method
