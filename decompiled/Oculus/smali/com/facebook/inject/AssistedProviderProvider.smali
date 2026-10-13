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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/inject/AssistedProvider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/inject/AssistedProviderProvider;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/facebook/inject/AssistedProviderProvider;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/InjectorLike;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/AssistedProvider;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 38
    :catch_1
    move-exception v0

    .line 39
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 40
    :catch_2
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private getConstructor()Ljava/lang/reflect/Constructor;
    .locals 4
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
    iget-object v0, p0, Lcom/facebook/inject/AssistedProviderProvider;->mAssistedProviderConstructor:Ljava/lang/reflect/Constructor;

    .line 47
    if-nez v0, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/AssistedProviderProvider;->mAssistedProviderClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/facebook/inject/InjectorLike;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

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
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assisted provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/inject/AssistedProviderProvider;->mAssistedProviderClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t have default constructor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    invoke-direct {p0}, Lcom/facebook/inject/AssistedProviderProvider;->createAssistedProvider()Lcom/facebook/inject/AssistedProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/facebook/inject/AssistedProviderProvider;->get()Lcom/facebook/inject/AssistedProvider;

    move-result-object v0

    return-object v0
.end method
