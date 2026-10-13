.class public Lcom/facebook/inject/AssistedProviderProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "AssistedProviderProvider.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ExplicitComplexProvider",
        "FbInjectorGet"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/inject/AssistedProvider",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final mAssistedProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/inject/AssistedProvider",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private volatile mAssistedProviderConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Lcom/facebook/inject/AssistedProvider",
            "<TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/inject/AssistedProvider",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/facebook/inject/AssistedProviderProvider;, "Lcom/facebook/inject/AssistedProviderProvider<TT;>;"
    .local p1, "assistedProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/facebook/inject/AssistedProvider<TT;>;>;"
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/inject/AssistedProviderProvider;->mAssistedProviderClass:Ljava/lang/Class;

    .line 22
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-direct {p0}, Lcom/facebook/inject/AssistedProviderProvider;->getConstructor()Ljava/lang/reflect/Constructor;

    .line 26
    :cond_0
    return-void
.end method

.method private createAssistedProvider()Lcom/facebook/inject/AssistedProvider;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/inject/AssistedProvider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/facebook/inject/AssistedProviderProvider;, "Lcom/facebook/inject/AssistedProviderProvider<TT;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/inject/AssistedProviderProvider;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/facebook/inject/AssistedProviderProvider;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v1

    check-cast v1, Lcom/facebook/inject/InjectorLike;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/inject/AssistedProvider;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 38
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 40
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getConstructor()Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Lcom/facebook/inject/AssistedProvider",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/facebook/inject/AssistedProviderProvider;, "Lcom/facebook/inject/AssistedProviderProvider<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/AssistedProviderProvider;->mAssistedProviderConstructor:Ljava/lang/reflect/Constructor;

    .line 47
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/facebook/inject/AssistedProvider<TT;>;>;"
    if-nez v0, :cond_0

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/facebook/inject/AssistedProviderProvider;->mAssistedProviderClass:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/facebook/inject/InjectorLike;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/facebook/inject/AssistedProviderProvider;->mAssistedProviderConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    return-object v0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assisted provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/inject/AssistedProviderProvider;->mAssistedProviderClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t have default constructor."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public get()Lcom/facebook/inject/AssistedProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/inject/AssistedProvider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/facebook/inject/AssistedProviderProvider;, "Lcom/facebook/inject/AssistedProviderProvider<TT;>;"
    invoke-direct {p0}, Lcom/facebook/inject/AssistedProviderProvider;->createAssistedProvider()Lcom/facebook/inject/AssistedProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/facebook/inject/AssistedProviderProvider;, "Lcom/facebook/inject/AssistedProviderProvider<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/inject/AssistedProviderProvider;->get()Lcom/facebook/inject/AssistedProvider;

    move-result-object v0

    return-object v0
.end method

.method public getAssistedProviderClass()Ljava/lang/Class;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/AssistedProvider",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/facebook/inject/AssistedProviderProvider;, "Lcom/facebook/inject/AssistedProviderProvider<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/AssistedProviderProvider;->mAssistedProviderClass:Ljava/lang/Class;

    return-object v0
.end method
