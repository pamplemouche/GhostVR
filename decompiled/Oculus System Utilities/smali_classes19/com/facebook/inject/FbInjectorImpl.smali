.class public Lcom/facebook/inject/FbInjectorImpl;
.super Lcom/facebook/inject/AbstractInjector;
.source "FbInjectorImpl.java"

# interfaces
.implements Lcom/facebook/inject/ScopeUnawareInjector;


# static fields
.field private static final MAIN_THREAD:Ljava/lang/Thread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mAppContextScopeAwareInjector:Lcom/facebook/inject/ContextScopeAwareInjector;

.field private mBindingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/inject/Binding;",
            ">;"
        }
    .end annotation
.end field

.field private mClearedOutForTest:Z

.field private mComponentBindingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/ComponentBinding;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mInjectorStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/inject/InjectorThreadStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjectorThreadStackForMainThread:Lcom/facebook/inject/InjectorThreadStack;

.field private final mIsDebugMode:Z

.field private mModulesInstalled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMultiBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/MultiBinder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mScopeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/facebook/inject/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    sput-object v0, Lcom/facebook/inject/FbInjectorImpl;->MAIN_THREAD:Ljava/lang/Thread;

    .line 66
    return-void

    .line 69
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/inject/PrivateModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "modules":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/inject/PrivateModule;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Lcom/facebook/inject/AbstractInjector;-><init>()V

    .line 47
    iput-boolean v3, p0, Lcom/facebook/inject/FbInjectorImpl;->mClearedOutForTest:Z

    .line 53
    new-instance v4, Lcom/facebook/inject/FbInjectorImpl$1;

    invoke-direct {v4, p0}, Lcom/facebook/inject/FbInjectorImpl$1;-><init>(Lcom/facebook/inject/FbInjectorImpl;)V

    iput-object v4, p0, Lcom/facebook/inject/FbInjectorImpl;->mInjectorStack:Ljava/lang/ThreadLocal;

    .line 73
    const-string v4, "FbInjectorImpl.init"

    invoke-static {v4}, Lcom/facebook/debug/tracer/Tracer;->startTracer(Ljava/lang/String;)V

    .line 75
    :try_start_0
    iput-object p1, p0, Lcom/facebook/inject/FbInjectorImpl;->mAppContext:Landroid/content/Context;

    .line 76
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v4

    iput-boolean v4, p0, Lcom/facebook/inject/FbInjectorImpl;->mIsDebugMode:Z

    .line 77
    new-instance v4, Lcom/facebook/inject/InjectorThreadStack;

    iget-object v5, p0, Lcom/facebook/inject/FbInjectorImpl;->mAppContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/facebook/inject/InjectorThreadStack;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/facebook/inject/FbInjectorImpl;->mInjectorThreadStackForMainThread:Lcom/facebook/inject/InjectorThreadStack;

    .line 78
    new-instance v4, Lcom/facebook/inject/ContextScopeAwareInjector;

    invoke-direct {v4, p0, p1}, Lcom/facebook/inject/ContextScopeAwareInjector;-><init>(Lcom/facebook/inject/FbInjector;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/facebook/inject/FbInjectorImpl;->mAppContextScopeAwareInjector:Lcom/facebook/inject/ContextScopeAwareInjector;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-ne p1, v4, :cond_0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 82
    new-instance v0, Lcom/facebook/inject/FbInjectorInitializer;

    iget-boolean v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mIsDebugMode:Z

    invoke-direct {v0, p0, p2, v2}, Lcom/facebook/inject/FbInjectorInitializer;-><init>(Lcom/facebook/inject/FbInjector;Ljava/util/List;Z)V

    .line 84
    .local v0, "initializer":Lcom/facebook/inject/FbInjectorInitializer;
    invoke-virtual {v0}, Lcom/facebook/inject/FbInjectorInitializer;->init()Lcom/facebook/inject/FbInjectorInitializer$Result;

    move-result-object v1

    .line 85
    .local v1, "result":Lcom/facebook/inject/FbInjectorInitializer$Result;
    iget-object v2, v1, Lcom/facebook/inject/FbInjectorInitializer$Result;->bindingMap:Ljava/util/Map;

    iput-object v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mBindingMap:Ljava/util/Map;

    .line 86
    iget-object v2, v1, Lcom/facebook/inject/FbInjectorInitializer$Result;->scopeMap:Ljava/util/Map;

    iput-object v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mScopeMap:Ljava/util/Map;

    .line 87
    iget-object v2, v1, Lcom/facebook/inject/FbInjectorInitializer$Result;->componentBindingMap:Ljava/util/Map;

    iput-object v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mComponentBindingMap:Ljava/util/Map;

    .line 88
    iget-boolean v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mIsDebugMode:Z

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, v1, Lcom/facebook/inject/FbInjectorInitializer$Result;->modulesInstalled:Ljava/util/Set;

    iput-object v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mModulesInstalled:Ljava/util/Set;

    .line 90
    iget-object v2, v1, Lcom/facebook/inject/FbInjectorInitializer$Result;->multiBindings:Ljava/util/Map;

    iput-object v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mMultiBindings:Ljava/util/Map;

    .line 96
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    .line 100
    return-void

    .end local v0    # "initializer":Lcom/facebook/inject/FbInjectorInitializer;
    .end local v1    # "result":Lcom/facebook/inject/FbInjectorInitializer$Result;
    :cond_0
    move v2, v3

    .line 80
    goto :goto_0

    .line 92
    .restart local v0    # "initializer":Lcom/facebook/inject/FbInjectorInitializer;
    .restart local v1    # "result":Lcom/facebook/inject/FbInjectorInitializer$Result;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mModulesInstalled:Ljava/util/Set;

    .line 93
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mMultiBindings:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 98
    .end local v0    # "initializer":Lcom/facebook/inject/FbInjectorInitializer;
    .end local v1    # "result":Lcom/facebook/inject/FbInjectorInitializer$Result;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    throw v2
.end method

.method static synthetic access$000(Lcom/facebook/inject/FbInjectorImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/inject/FbInjectorImpl;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorImpl;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private ensureInitialized()V
    .locals 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/facebook/inject/FbInjectorImpl;->mInitialized:Z

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Called injector during binding"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/inject/FbInjectorImpl;->mClearedOutForTest:Z

    if-eqz v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It looks like the bindings map has been cleared. This might happen insome tests that use AppInjectors.clearBindings(), but also havebackground threads or asynchronous handlers that are accessing theinjector after that call.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    return-void
.end method

.method public static getBinding(Lcom/facebook/inject/InjectorLike;I)Ljava/lang/Object;
    .locals 2
    .param p0, "injectorLike"    # Lcom/facebook/inject/InjectorLike;
    .param p1, "bindingId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/inject/InjectorLike;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This should be only used by static DI"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getPrivateNameId(Ljava/lang/String;)I
    .locals 1
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method private getScopeAwareInjectorOrNull()Lcom/facebook/inject/ScopeAwareInjector;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/facebook/inject/FbInjectorImpl;->ensureInitialized()V

    .line 258
    invoke-virtual {p0}, Lcom/facebook/inject/FbInjectorImpl;->getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    .line 259
    .local v0, "injectorThreadStack":Lcom/facebook/inject/InjectorThreadStack;
    invoke-virtual {v0}, Lcom/facebook/inject/InjectorThreadStack;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getApplicationInjector()Lcom/facebook/inject/InjectorLike;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorImpl;->mAppContextScopeAwareInjector:Lcom/facebook/inject/ContextScopeAwareInjector;

    return-object v0
.end method

.method public getBindingMapForTool()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/Binding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getComponentBindingMapForTool()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/ComponentBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorImpl;->mComponentBindingMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/facebook/inject/FbInjectorImpl;->MAIN_THREAD:Ljava/lang/Thread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/facebook/inject/FbInjectorImpl;->MAIN_THREAD:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorImpl;->mInjectorThreadStackForMainThread:Lcom/facebook/inject/InjectorThreadStack;

    .line 231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorImpl;->mInjectorStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/InjectorThreadStack;

    goto :goto_0
.end method

.method public getInstance(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/facebook/inject/FbInjectorImpl;->ensureInitialized()V

    .line 142
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorImpl;->mBindingMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/facebook/inject/ProvisioningException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No provider bound for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Map has # bindings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mBindingMap:Ljava/util/Map;

    .line 144
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    const-string v0, "getInstance"

    iget-object v1, p0, Lcom/facebook/inject/FbInjectorImpl;->mBindingMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;Ljava/util/Map;I)V

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorImpl;->mBindingMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/Binding;

    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getProvider()Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method

.method public getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    const-string v0, "getInstance"

    invoke-static {v0, p1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;Lcom/google/inject/Key;)V

    .line 133
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/inject/FbInjectorImpl;->getProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method

.method public getLazy(Lcom/google/inject/Key;)Lcom/facebook/inject/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/inject/Lazy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/inject/FbInjectorImpl;->getProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/inject/FbInjectorImpl;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/inject/ProviderLazy;->fromProvider(Ljavax/inject/Provider;Lcom/facebook/inject/BasicScopeAwareInjector;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Lcom/google/inject/Key;)Ljavax/inject/Provider;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    const-string v2, "getProvider"

    invoke-static {v2, p1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;Lcom/google/inject/Key;)V

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/inject/FbInjectorImpl;->ensureInitialized()V

    .line 159
    iget-boolean v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mIsDebugMode:Z

    if-eqz v2, :cond_0

    .line 160
    sget-object v2, Lcom/facebook/inject/ProvisioningDebugStack$StackType;->PROVIDER_GET:Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    invoke-static {v2, p1}, Lcom/facebook/inject/ProvisioningDebugStack;->push(Lcom/facebook/inject/ProvisioningDebugStack$StackType;Lcom/google/inject/Key;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mBindingMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/ultralight/UL$id;->dynamicId(Lcom/google/inject/Key;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/Binding;

    .line 165
    .local v0, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    if-nez v0, :cond_2

    .line 166
    new-instance v2, Lcom/facebook/inject/ProvisioningException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider bound for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .end local v0    # "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    iget-boolean v3, p0, Lcom/facebook/inject/FbInjectorImpl;->mIsDebugMode:Z

    if-eqz v3, :cond_1

    .line 174
    invoke-static {}, Lcom/facebook/inject/ProvisioningDebugStack;->pop()V

    :cond_1
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    :catchall_1
    move-exception v2

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v2

    .line 169
    .restart local v0    # "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getProvider()Ljavax/inject/Provider;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 173
    .local v1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    :try_start_4
    iget-boolean v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mIsDebugMode:Z

    if-eqz v2, :cond_3

    .line 174
    invoke-static {}, Lcom/facebook/inject/ProvisioningDebugStack;->pop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    :cond_3
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v1
.end method

.method public getRequiredModulesForTool()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/LibraryModule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScope(Ljava/lang/Class;)Lcom/facebook/inject/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/inject/Scope;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorImpl;->mScopeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/Scope;

    return-object v0
.end method

.method public getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/facebook/inject/FbInjectorImpl;->getScopeAwareInjectorOrNull()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v0

    .line 246
    .local v0, "contextAware":Lcom/facebook/inject/ScopeAwareInjector;
    if-eqz v0, :cond_0

    .line 247
    return-object v0

    .line 249
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Should never call getScopeAwareInjector without an active ThreadStack"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;
    .locals 0

    .prologue
    .line 264
    return-object p0
.end method

.method protected injectComponent(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "instance":Ljava/lang/Object;, "TT;"
    const-string v2, "injectComponent"

    invoke-static {v2, p1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;Ljava/lang/Class;)V

    .line 186
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/inject/FbInjectorImpl;->ensureInitialized()V

    .line 188
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    .line 189
    .local v1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-boolean v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mIsDebugMode:Z

    if-eqz v2, :cond_0

    .line 190
    sget-object v2, Lcom/facebook/inject/ProvisioningDebugStack$StackType;->INJECT_COMPONENT:Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    invoke-static {v2, v1}, Lcom/facebook/inject/ProvisioningDebugStack;->push(Lcom/facebook/inject/ProvisioningDebugStack$StackType;Lcom/google/inject/Key;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mComponentBindingMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/ComponentBinding;

    .line 194
    .local v0, "binding":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    if-nez v0, :cond_2

    .line 195
    new-instance v2, Lcom/facebook/inject/ProvisioningException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider bound for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .end local v0    # "binding":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    iget-boolean v3, p0, Lcom/facebook/inject/FbInjectorImpl;->mIsDebugMode:Z

    if-eqz v3, :cond_1

    .line 201
    invoke-static {}, Lcom/facebook/inject/ProvisioningDebugStack;->pop()V

    :cond_1
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    .end local v1    # "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    :catchall_1
    move-exception v2

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v2

    .line 197
    .restart local v0    # "binding":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    .restart local v1    # "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Lcom/facebook/inject/ComponentBinding;->getProvider()Lcom/facebook/inject/ComponentProvider;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/facebook/inject/ComponentProvider;->inject(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    :try_start_4
    iget-boolean v2, p0, Lcom/facebook/inject/FbInjectorImpl;->mIsDebugMode:Z

    if-eqz v2, :cond_3

    .line 201
    invoke-static {}, Lcom/facebook/inject/ProvisioningDebugStack;->pop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 205
    :cond_3
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    .line 207
    return-void
.end method

.method public updateWithModules(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/inject/PrivateModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "modules":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/inject/PrivateModule;>;"
    invoke-direct {p0}, Lcom/facebook/inject/FbInjectorImpl;->ensureInitialized()V

    .line 105
    new-instance v0, Lcom/facebook/inject/FbInjectorInitializer;

    iget-boolean v3, p0, Lcom/facebook/inject/FbInjectorImpl;->mIsDebugMode:Z

    iget-object v4, p0, Lcom/facebook/inject/FbInjectorImpl;->mBindingMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/facebook/inject/FbInjectorImpl;->mScopeMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/facebook/inject/FbInjectorImpl;->mComponentBindingMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/facebook/inject/FbInjectorImpl;->mModulesInstalled:Ljava/util/Set;

    iget-object v8, p0, Lcom/facebook/inject/FbInjectorImpl;->mMultiBindings:Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/inject/FbInjectorInitializer;-><init>(Lcom/facebook/inject/FbInjector;Ljava/util/List;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V

    .line 116
    .local v0, "initializer":Lcom/facebook/inject/FbInjectorInitializer;
    invoke-virtual {v0}, Lcom/facebook/inject/FbInjectorInitializer;->init()Lcom/facebook/inject/FbInjectorInitializer$Result;

    move-result-object v9

    .line 117
    .local v9, "result":Lcom/facebook/inject/FbInjectorInitializer$Result;
    iget-object v1, v9, Lcom/facebook/inject/FbInjectorInitializer$Result;->bindingMap:Ljava/util/Map;

    iput-object v1, p0, Lcom/facebook/inject/FbInjectorImpl;->mBindingMap:Ljava/util/Map;

    .line 118
    iget-object v1, v9, Lcom/facebook/inject/FbInjectorInitializer$Result;->scopeMap:Ljava/util/Map;

    iput-object v1, p0, Lcom/facebook/inject/FbInjectorImpl;->mScopeMap:Ljava/util/Map;

    .line 119
    iget-object v1, v9, Lcom/facebook/inject/FbInjectorInitializer$Result;->componentBindingMap:Ljava/util/Map;

    iput-object v1, p0, Lcom/facebook/inject/FbInjectorImpl;->mComponentBindingMap:Ljava/util/Map;

    .line 120
    iget-object v1, v9, Lcom/facebook/inject/FbInjectorInitializer$Result;->modulesInstalled:Ljava/util/Set;

    iput-object v1, p0, Lcom/facebook/inject/FbInjectorImpl;->mModulesInstalled:Ljava/util/Set;

    .line 121
    iget-object v1, v9, Lcom/facebook/inject/FbInjectorInitializer$Result;->multiBindings:Ljava/util/Map;

    iput-object v1, p0, Lcom/facebook/inject/FbInjectorImpl;->mMultiBindings:Ljava/util/Map;

    .line 122
    return-void
.end method
