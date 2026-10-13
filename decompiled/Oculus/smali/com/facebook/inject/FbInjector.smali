.class public abstract Lcom/facebook/inject/FbInjector;
.super Ljava/lang/Object;
.source "FbInjector.java"

# interfaces
.implements Lcom/facebook/inject/InjectorLike;


# static fields
.field private static final LAZY_INSTANCE_NULL_SENTINEL:Ljava/lang/Object;

.field private static sAvoidInjectorMemoryThrashing:Z

.field private static final sCachedInjectors:Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache",
            "<",
            "Landroid/content/Context;",
            "Lcom/facebook/inject/ContextScopeAwareInjector;",
            ">;"
        }
    .end annotation
.end field

.field private static sInjectorProvider:Lcom/facebook/inject/FbInjectorProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sTestInjectorProvider:Lcom/facebook/inject/FbInjectorProvider;

.field private static sUseGuavaReplacementCaches:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;

    invoke-static {}, Lcom/facebook/inject/FbInjector;->getCacheLoader()Lcom/facebook/common/cache/CacheLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;-><init>(Lcom/facebook/common/cache/CacheLoader;)V

    sput-object v0, Lcom/facebook/inject/FbInjector;->sCachedInjectors:Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;

    .line 48
    sput-boolean v2, Lcom/facebook/inject/FbInjector;->sUseGuavaReplacementCaches:Z

    .line 49
    sput-boolean v2, Lcom/facebook/inject/FbInjector;->sAvoidInjectorMemoryThrashing:Z

    .line 363
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/inject/FbInjector;->LAZY_INSTANCE_NULL_SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/facebook/inject/FbInjectorProvider;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/inject/FbInjector;->sInjectorProvider:Lcom/facebook/inject/FbInjectorProvider;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Lcom/facebook/inject/FbInjectorProvider;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->getInjectorProvider(Landroid/content/Context;)Lcom/facebook/inject/FbInjectorProvider;

    move-result-object v0

    return-object v0
.end method

.method public static createForApp(Landroid/content/Context;Lcom/facebook/inject/FbInjectorProvider;Ljava/util/List;)Lcom/facebook/inject/FbInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/inject/FbInjectorProvider;",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/inject/PrivateModule;",
            ">;)",
            "Lcom/facebook/inject/FbInjector;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lcom/facebook/inject/FbInjector;->sInjectorProvider:Lcom/facebook/inject/FbInjectorProvider;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "you cannot call createForApp twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    sput-object p1, Lcom/facebook/inject/FbInjector;->sInjectorProvider:Lcom/facebook/inject/FbInjectorProvider;

    .line 122
    new-instance v0, Lcom/facebook/inject/FbInjectorImpl;

    invoke-direct {v0, p0, p2}, Lcom/facebook/inject/FbInjectorImpl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public static createForApp(Landroid/content/Context;Ljava/util/List;)Lcom/facebook/inject/FbInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/inject/PrivateModule;",
            ">;)",
            "Lcom/facebook/inject/FbInjector;"
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/inject/FbInjector;->createForApp(Landroid/content/Context;Lcom/facebook/inject/FbInjectorProvider;Ljava/util/List;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/facebook/inject/FbInjector;->sCachedInjectors:Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;

    invoke-virtual {v0, p0}, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/FbInjector;

    return-object v0
.end method

.method private static getCacheLoader()Lcom/facebook/common/cache/CacheLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/cache/CacheLoader",
            "<",
            "Landroid/content/Context;",
            "Lcom/facebook/inject/ContextScopeAwareInjector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/facebook/inject/FbInjector$1;

    invoke-direct {v0}, Lcom/facebook/inject/FbInjector$1;-><init>()V

    return-object v0
.end method

.method private static getInjectorProvider(Landroid/content/Context;)Lcom/facebook/inject/FbInjectorProvider;
    .locals 3

    .prologue
    .line 285
    sget-object v0, Lcom/facebook/inject/FbInjector;->sTestInjectorProvider:Lcom/facebook/inject/FbInjectorProvider;

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lcom/facebook/inject/FbInjector;->sTestInjectorProvider:Lcom/facebook/inject/FbInjectorProvider;

    .line 295
    :goto_0
    return-object v0

    .line 289
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 290
    :goto_1
    instance-of v1, v0, Lcom/facebook/inject/FbInjectorProviderProvider;

    if-eqz v1, :cond_1

    .line 291
    check-cast v0, Lcom/facebook/inject/FbInjectorProviderProvider;

    invoke-interface {v0}, Lcom/facebook/inject/FbInjectorProviderProvider;->getInjectorProvider()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 294
    :cond_1
    instance-of v1, v0, Lcom/facebook/inject/FbInjectorProvider;

    if-eqz v1, :cond_2

    .line 295
    check-cast v0, Lcom/facebook/inject/FbInjectorProvider;

    goto :goto_0

    .line 298
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injector is not supported in process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 300
    invoke-static {}, Lcom/facebook/common/process/ProcessName;->current()Lcom/facebook/common/process/ProcessName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/common/process/ProcessName;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Current thread is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and current Looper is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMultiBindingKey(Lcom/google/inject/Key;)Lcom/google/inject/Key;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/Key",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;

    const/4 v1, 0x0

    const-class v2, Ljava/util/Set;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 160
    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v2

    .line 163
    if-eqz v1, :cond_0

    .line 164
    invoke-static {v0, v1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 165
    :cond_0
    if-eqz v2, :cond_1

    .line 166
    invoke-static {v0, v2}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {v0}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    goto :goto_0
.end method

.method public static injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/inject/InjectableComponentWithoutContext;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p0, p1, p2}, Lcom/facebook/inject/FbInjector;->injectMeInternal(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 204
    return-void
.end method

.method public static injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    invoke-static {p0, p1, p2}, Lcom/facebook/inject/FbInjector;->injectMeInternal(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 199
    return-void
.end method

.method private static injectMeInternal(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    const-string v0, "injectMe"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;Ljava/lang/Class;)V

    .line 218
    :try_start_0
    invoke-static {p2}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p0, p1}, Lcom/facebook/inject/FbInjector;->injectComponent(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    .line 223
    return-void

    .line 221
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method

.method private static lazyInstance(IIBLcom/facebook/inject/ScopeAwareInjector;Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IIB",
            "Lcom/facebook/inject/ScopeAwareInjector;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 395
    const-string v1, "InjectingLazyInstance"

    invoke-static {v1, p1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;I)V

    .line 397
    :try_start_0
    invoke-virtual {p4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 398
    if-nez v1, :cond_0

    .line 400
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v2

    .line 401
    invoke-virtual {v2, p2}, Lcom/facebook/inject/ScopeSet;->enterScopes(B)B

    move-result v3

    .line 402
    invoke-interface {p3}, Lcom/facebook/inject/ScopeAwareInjector;->enterPreamble()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 405
    :try_start_1
    invoke-interface {p3}, Lcom/facebook/inject/ScopeAwareInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/ultralight/UL$factorymap;->get(ILcom/facebook/inject/InjectorLike;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 414
    :try_start_2
    invoke-interface {p3, v4}, Lcom/facebook/inject/ScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    .line 415
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    .line 417
    const/4 v3, 0x0

    if-nez v1, :cond_1

    sget-object v2, Lcom/facebook/inject/FbInjector;->LAZY_INSTANCE_NULL_SENTINEL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    :cond_0
    :goto_1
    sget-object v2, Lcom/facebook/inject/FbInjector;->LAZY_INSTANCE_NULL_SENTINEL:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v1, v2, :cond_3

    .line 426
    :goto_2
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to lazy inject class with binding ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and localId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {p3, v4}, Lcom/facebook/inject/ScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    .line 415
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 426
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0

    :cond_1
    move-object v2, v1

    .line 417
    goto :goto_0

    .line 421
    :cond_2
    :try_start_5
    invoke-virtual {p4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 424
    goto :goto_2
.end method

.method public static lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lcom/facebook/inject/InjectionContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lcom/facebook/inject/InjectionContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 382
    if-nez p2, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    iget-byte v0, p2, Lcom/facebook/inject/InjectionContext;->scopesSeenAtConstruction:B

    iget-object v1, p2, Lcom/facebook/inject/InjectionContext;->injector:Lcom/facebook/inject/ScopeAwareInjector;

    iget-object v2, p2, Lcom/facebook/inject/InjectionContext;->lazyCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IIBLcom/facebook/inject/ScopeAwareInjector;Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/facebook/inject/InjectionContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/facebook/inject/InjectionContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    invoke-static {}, Lcom/facebook/ultralight/UltralightRuntime;->throwLocalInjectionTooEarly()Ljava/lang/Object;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/facebook/inject/InjectionContext;->injector:Lcom/facebook/inject/ScopeAwareInjector;

    invoke-static {p0, v0}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/ScopeAwareInjector;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static localInstance(ILcom/facebook/inject/ScopeAwareInjector;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/facebook/inject/ScopeAwareInjector;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 348
    const-string v0, "injectingLocalInstance"

    invoke-static {v0, p0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;I)V

    .line 350
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/inject/ScopeAwareInjector;->enterPreamble()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 352
    :try_start_1
    invoke-interface {p1}, Lcom/facebook/inject/ScopeAwareInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ultralight/UL$factorymap;->get(ILcom/facebook/inject/InjectorLike;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 356
    :try_start_2
    invoke-interface {p1, v1}, Lcom/facebook/inject/ScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 359
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to local inject class with binding ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 356
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {p1, v1}, Lcom/facebook/inject/ScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 359
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method


# virtual methods
.method protected abstract injectComponent(Ljava/lang/Class;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method
