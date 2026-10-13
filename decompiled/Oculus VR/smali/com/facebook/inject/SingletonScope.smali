.class public Lcom/facebook/inject/SingletonScope;
.super Ljava/lang/Object;
.source "SingletonScope.java"

# interfaces
.implements Lcom/facebook/inject/Scope;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mInjector:Lcom/facebook/inject/FbInjector;

.field private final mScopeAwareInjector:Lcom/facebook/inject/SingletonAwareInjector;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/FbInjector;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/inject/SingletonScope;->mInjector:Lcom/facebook/inject/FbInjector;

    .line 24
    invoke-virtual {p1}, Lcom/facebook/inject/FbInjector;->getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/inject/InjectorThreadStack;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/SingletonScope;->mAppContext:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/facebook/inject/SingletonAwareInjector;

    iget-object v1, p0, Lcom/facebook/inject/SingletonScope;->mInjector:Lcom/facebook/inject/FbInjector;

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/SingletonAwareInjector;-><init>(Lcom/facebook/inject/FbInjector;Lcom/facebook/inject/SingletonScope;)V

    iput-object v0, p0, Lcom/facebook/inject/SingletonScope;->mScopeAwareInjector:Lcom/facebook/inject/SingletonAwareInjector;

    .line 26
    return-void
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    const-class v0, Ljavax/inject/Singleton;

    return-object v0
.end method

.method public enterScope()Lcom/facebook/inject/InjectorThreadStack;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/inject/SingletonScope;->mInjector:Lcom/facebook/inject/FbInjector;

    invoke-virtual {v0}, Lcom/facebook/inject/FbInjector;->getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/facebook/inject/InjectorThreadStack;->enterAppContext()V

    .line 42
    iget-object v1, p0, Lcom/facebook/inject/SingletonScope;->mScopeAwareInjector:Lcom/facebook/inject/SingletonAwareInjector;

    invoke-virtual {v0, v1}, Lcom/facebook/inject/InjectorThreadStack;->pushInjector(Lcom/facebook/inject/ScopeAwareInjector;)V

    .line 43
    return-object v0
.end method

.method public exitScope(Lcom/facebook/inject/InjectorThreadStack;)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/facebook/inject/InjectorThreadStack;->exitContext()V

    .line 48
    invoke-virtual {p1}, Lcom/facebook/inject/InjectorThreadStack;->popInjector()V

    .line 49
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/inject/SingletonScope;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public scope(Lcom/google/inject/Key;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljavax/inject/Provider",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/facebook/inject/SingletonProvider;

    invoke-direct {v0, p0, p2}, Lcom/facebook/inject/SingletonProvider;-><init>(Lcom/facebook/inject/SingletonScope;Ljavax/inject/Provider;)V

    return-object v0
.end method
