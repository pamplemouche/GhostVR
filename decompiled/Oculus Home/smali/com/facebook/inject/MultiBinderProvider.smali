.class public Lcom/facebook/inject/MultiBinderProvider;
.super Ljava/lang/Object;
.source "MultiBinderProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Ljava/util/Set",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final mInjector:Lcom/facebook/inject/FbInjector;

.field private final mKeys:[Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/inject/Key",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final mProvidedKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/inject/FbInjector;Ljava/util/List;Lcom/google/inject/Key;)V
    .locals 1
    .param p1, "injector"    # Lcom/facebook/inject/FbInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/FbInjector;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/Key",
            "<+TT;>;>;",
            "Lcom/google/inject/Key",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/facebook/inject/MultiBinderProvider;, "Lcom/facebook/inject/MultiBinderProvider<TT;>;"
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/Key<+TT;>;>;"
    .local p3, "providedKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/inject/MultiBinderProvider;->mInjector:Lcom/facebook/inject/FbInjector;

    .line 24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/inject/Key;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/inject/Key;

    iput-object v0, p0, Lcom/facebook/inject/MultiBinderProvider;->mKeys:[Lcom/google/inject/Key;

    .line 25
    iput-object p3, p0, Lcom/facebook/inject/MultiBinderProvider;->mProvidedKey:Lcom/google/inject/Key;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/inject/MultiBinderProvider;)[Lcom/google/inject/Key;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/inject/MultiBinderProvider;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderProvider;->mKeys:[Lcom/google/inject/Key;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/facebook/inject/MultiBinderProvider;, "Lcom/facebook/inject/MultiBinderProvider<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/inject/MultiBinderProvider;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/facebook/inject/MultiBinderProvider;, "Lcom/facebook/inject/MultiBinderProvider<TT;>;"
    const-string v0, "MultiBinderProvider: %s"

    iget-object v1, p0, Lcom/facebook/inject/MultiBinderProvider;->mProvidedKey:Lcom/google/inject/Key;

    invoke-static {v0, v1}, Lcom/facebook/debug/tracer/Tracer;->startTracer(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    :try_start_0
    new-instance v0, Lcom/facebook/inject/MultiBinderSet;

    iget-object v1, p0, Lcom/facebook/inject/MultiBinderProvider;->mInjector:Lcom/facebook/inject/FbInjector;

    .line 40
    invoke-virtual {v1}, Lcom/facebook/inject/FbInjector;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v1

    new-instance v2, Lcom/facebook/inject/MultiBinderProvider$1;

    invoke-direct {v2, p0}, Lcom/facebook/inject/MultiBinderProvider$1;-><init>(Lcom/facebook/inject/MultiBinderProvider;)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/inject/MultiBinderSet;-><init>(Lcom/facebook/inject/Injector;Lcom/facebook/inject/MultiBindIndexedProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    throw v0
.end method

.method public getKeys()Ljava/util/Collection;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/inject/Key",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/facebook/inject/MultiBinderProvider;, "Lcom/facebook/inject/MultiBinderProvider<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderProvider;->mKeys:[Lcom/google/inject/Key;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
