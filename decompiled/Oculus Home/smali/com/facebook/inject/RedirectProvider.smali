.class public Lcom/facebook/inject/RedirectProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "RedirectProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/inject/AbstractProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private volatile mProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/facebook/inject/RedirectProvider;, "Lcom/facebook/inject/RedirectProvider<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+TT;>;"
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/inject/RedirectProvider;->mKey:Lcom/google/inject/Key;

    .line 16
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/facebook/inject/RedirectProvider;, "Lcom/facebook/inject/RedirectProvider<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/RedirectProvider;->mProvider:Ljavax/inject/Provider;

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/facebook/inject/RedirectProvider;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/inject/RedirectProvider;->mKey:Lcom/google/inject/Key;

    invoke-interface {v0, v1}, Lcom/facebook/inject/ScopeUnawareInjector;->getProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/RedirectProvider;->mProvider:Ljavax/inject/Provider;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/RedirectProvider;->mProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/facebook/inject/RedirectProvider;, "Lcom/facebook/inject/RedirectProvider<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/RedirectProvider;->mKey:Lcom/google/inject/Key;

    return-object v0
.end method
