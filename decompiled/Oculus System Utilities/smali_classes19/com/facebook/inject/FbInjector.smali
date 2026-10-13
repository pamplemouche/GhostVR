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
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->getInjectorProvider(Landroid/content/Context;)Lcom/facebook/inject/FbInjectorProvider;

    move-result-object v0

    return-object v0
.end method

.method public static avoidInjectorMemoryThrashing()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/facebook/inject/FbInjector;->sAvoidInjectorMemoryThrashing:Z

    return v0
.end method

.method public static clearCachedInjectors()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 99
    sget-object v0, Lcom/facebook/inject/FbInjector;->sCachedInjectors:Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;

    invoke-virtual {v0}, Lcom/facebook/common/cache/WeakKeyWeakValueLoadingCache;->clear()V

    .line 100
    return-void
.end method

.method public static createForApp(Landroid/content/Context;Lcom/facebook/inject/FbInjectorProvider;Ljava/util/List;)Lcom/facebook/inject/FbInjector;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "injectorProvider"    # Lcom/facebook/inject/FbInjectorProvider;
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
    .local p2, "modules":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/inject/PrivateModule;>;"
    sget-object v0, Lcom/facebook/inject/FbInjector;->sInjectorProvider:Lcom/facebook/inject/FbInjectorProvider;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you cannot call createForApp twice"

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
    .param p0, "context"    # Landroid/content/Context;
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
    .local p1, "modules":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/inject/PrivateModule;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/inject/FbInjector;->createForApp(Landroid/content/Context;Lcom/facebook/inject/FbInjectorProvider;Ljava/util/List;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

.method public static createForTest(Landroid/content/Context;Ljava/util/List;)Lcom/facebook/inject/FbInjector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
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
    .line 145
    .local p1, "modules":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/inject/PrivateModule;>;"
    new-instance v0, Lcom/facebook/inject/FbInjectorImpl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/inject/FbInjectorImpl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
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
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    sget-object v1, Lcom/facebook/inject/FbInjector;->sTestInjectorProvider:Lcom/facebook/inject/FbInjectorProvider;

    if-eqz v1, :cond_0

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

    .local v0, "provider":Ljava/lang/Object;
    goto :goto_1

    .line 294
    .end local v0    # "provider":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Lcom/facebook/inject/FbInjectorProvider;

    if-eqz v1, :cond_2

    .line 295
    check-cast v0, Lcom/facebook/inject/FbInjectorProvider;

    goto :goto_0

    .line 298
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Injector is not supported in process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 300
    invoke-static {}, Lcom/facebook/common/process/ProcessName;->current()Lcom/facebook/common/process/ProcessName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/common/process/ProcessName;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Current thread is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 302
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and current Looper is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(ILandroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .param p0, "bindingId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {p1}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    .line 212
    .local v0, "injector":Lcom/facebook/inject/FbInjector;
    invoke-static {p0, v0}, Lcom/facebook/ultralight/UL$factorymap;->get(ILcom/facebook/inject/InjectorLike;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getMultiBindingKey(Lcom/google/inject/Key;)Lcom/google/inject/Key;
    .locals 9
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
    .local p0, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v2, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Set;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/reflect/Type;

    const/4 v7, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v2, v4, v5, v6}, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 160
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v2}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v3

    .line 161
    .local v3, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<Ljava/util/Set<TT;>;>;"
    invoke-virtual {p0}, Lcom/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 162
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    .line 163
    .local v1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_0

    .line 164
    invoke-static {v3, v0}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v4

    .line 168
    :goto_0
    return-object v4

    .line 165
    :cond_0
    if-eqz v1, :cond_1

    .line 166
    invoke-static {v3, v1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v4

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {v3}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v4

    goto :goto_0
.end method

.method public static injectMe(Ljava/lang/Class;Landroid/app/Dialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Dialog;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "instance":Landroid/app/Dialog;, "TT;"
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/inject/FbInjector;->injectMeInternal(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 248
    return-void
.end method

.method public static injectMe(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "instance":Landroid/content/Context;, "TT;"
    invoke-static {p0, p1, p1}, Lcom/facebook/inject/FbInjector;->injectMeInternal(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 227
    return-void
.end method

.method public static injectMe(Ljava/lang/Class;Landroid/preference/Preference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/preference/Preference;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "instance":Landroid/preference/Preference;, "TT;"
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/inject/FbInjector;->injectMeInternal(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 244
    return-void
.end method

.method public static injectMe(Ljava/lang/Class;Landroid/preference/PreferenceGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/preference/PreferenceGroup;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "instance":Landroid/preference/PreferenceGroup;, "TT;"
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/inject/FbInjector;->injectMeInternal(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 240
    return-void
.end method

.method public static injectMe(Ljava/lang/Class;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "instance":Landroid/view/View;, "TT;"
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/inject/FbInjector;->injectMeInternal(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 236
    return-void
.end method

.method public static injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/inject/InjectableComponentWithContext;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "instance":Lcom/facebook/inject/InjectableComponentWithContext;, "TT;"
    invoke-interface {p1}, Lcom/facebook/inject/InjectableComponentWithContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/inject/FbInjector;->injectMeInternal(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 232
    return-void
.end method

.method public static injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
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
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "instance":Lcom/facebook/inject/InjectableComponentWithoutContext;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/facebook/inject/FbInjector;->injectMeInternal(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 204
    return-void
.end method

.method public static injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
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
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/facebook/inject/FbInjector;->injectMeInternal(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 199
    return-void
.end method

.method private static injectMeInternal(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
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
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const-string v1, "injectMe"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;Ljava/lang/Class;)V

    .line 218
    :try_start_0
    invoke-static {p2}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    .line 219
    .local v0, "injector":Lcom/facebook/inject/FbInjector;
    invoke-virtual {v0, p0, p1}, Lcom/facebook/inject/FbInjector;->injectComponent(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    .line 223
    return-void

    .line 221
    .end local v0    # "injector":Lcom/facebook/inject/FbInjector;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v1
.end method

.method public static lazyApplicationInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;
    .locals 3
    .param p0, "localId"    # I
    .param p1, "bindingId"    # I
    .param p2, "context"    # Lcom/facebook/inject/InjectionContext;
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
    .line 368
    if-nez p2, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    iget-byte v0, p2, Lcom/facebook/inject/InjectionContext;->scopesSeenAtConstruction:B

    iget-object v1, p2, Lcom/facebook/inject/InjectionContext;->injector:Lcom/facebook/inject/ScopeAwareInjector;

    .line 375
    invoke-interface {v1}, Lcom/facebook/inject/ScopeAwareInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/inject/ScopeUnawareInjector;->getApplicationInjector()Lcom/facebook/inject/InjectorLike;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/inject/InjectorLike;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v1

    iget-object v2, p2, Lcom/facebook/inject/InjectionContext;->lazyCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 371
    invoke-static {p0, p1, v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IIBLcom/facebook/inject/ScopeAwareInjector;Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static lazyInstance(IIBLcom/facebook/inject/ScopeAwareInjector;Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/lang/Object;
    .locals 9
    .param p0, "localId"    # I
    .param p1, "bindingId"    # I
    .param p2, "scopesSeenAtConstruction"    # B
    .param p3, "scopeAwareInjector"    # Lcom/facebook/inject/ScopeAwareInjector;
    .param p4, "cache"    # Ljava/util/concurrent/atomic/AtomicReferenceArray;
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
    const/4 v6, 0x0

    .line 395
    const-string v7, "InjectingLazyInstance"

    invoke-static {v7, p1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;I)V

    .line 397
    :try_start_0
    invoke-virtual {p4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 398
    .local v2, "instance":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    .line 400
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v4

    .line 401
    .local v4, "scopeSet":Lcom/facebook/inject/ScopeSet;
    invoke-virtual {v4, p2}, Lcom/facebook/inject/ScopeSet;->enterScopes(B)B

    move-result v1

    .line 402
    .local v1, "enterResult":B
    invoke-interface {p3}, Lcom/facebook/inject/ScopeAwareInjector;->enterPreamble()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 405
    .local v5, "token":Ljava/lang/Object;
    :try_start_1
    invoke-interface {p3}, Lcom/facebook/inject/ScopeAwareInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/facebook/ultralight/UL$factorymap;->get(ILcom/facebook/inject/InjectorLike;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 414
    .local v3, "newInstance":Ljava/lang/Object;, "TT;"
    :try_start_2
    invoke-interface {p3, v5}, Lcom/facebook/inject/ScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    .line 415
    invoke-virtual {v4, v1}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    .line 417
    const/4 v8, 0x0

    if-nez v3, :cond_2

    sget-object v7, Lcom/facebook/inject/FbInjector;->LAZY_INSTANCE_NULL_SENTINEL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p4, p0, v8, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 419
    move-object v2, v3

    .line 424
    .end local v1    # "enterResult":B
    .end local v3    # "newInstance":Ljava/lang/Object;, "TT;"
    .end local v4    # "scopeSet":Lcom/facebook/inject/ScopeSet;
    .end local v5    # "token":Ljava/lang/Object;
    :cond_0
    :goto_1
    sget-object v7, Lcom/facebook/inject/FbInjector;->LAZY_INSTANCE_NULL_SENTINEL:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v7, :cond_1

    move-object v2, v6

    .line 426
    .end local v2    # "instance":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v2

    .line 406
    .restart local v1    # "enterResult":B
    .restart local v2    # "instance":Ljava/lang/Object;, "TT;"
    .restart local v4    # "scopeSet":Lcom/facebook/inject/ScopeSet;
    .restart local v5    # "token":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to lazy inject class with binding ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and localId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    :try_start_4
    invoke-interface {p3, v5}, Lcom/facebook/inject/ScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    .line 415
    invoke-virtual {v4, v1}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 426
    .end local v1    # "enterResult":B
    .end local v2    # "instance":Ljava/lang/Object;, "TT;"
    .end local v4    # "scopeSet":Lcom/facebook/inject/ScopeSet;
    .end local v5    # "token":Ljava/lang/Object;
    :catchall_1
    move-exception v6

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v6

    .restart local v1    # "enterResult":B
    .restart local v2    # "instance":Ljava/lang/Object;, "TT;"
    .restart local v3    # "newInstance":Ljava/lang/Object;, "TT;"
    .restart local v4    # "scopeSet":Lcom/facebook/inject/ScopeSet;
    .restart local v5    # "token":Ljava/lang/Object;
    :cond_2
    move-object v7, v3

    .line 417
    goto :goto_0

    .line 421
    :cond_3
    :try_start_5
    invoke-virtual {p4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    goto :goto_1
.end method

.method public static lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;
    .locals 3
    .param p0, "localId"    # I
    .param p1, "bindingId"    # I
    .param p2, "context"    # Lcom/facebook/inject/InjectionContext;
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

.method public static localApplicationInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;
    .locals 1
    .param p0, "bindingId"    # I
    .param p1, "context"    # Lcom/facebook/inject/InjectionContext;
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
    .line 326
    if-nez p1, :cond_0

    .line 327
    invoke-static {}, Lcom/facebook/ultralight/UltralightRuntime;->throwLocalInjectionTooEarly()Ljava/lang/Object;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/facebook/inject/InjectionContext;->injector:Lcom/facebook/inject/ScopeAwareInjector;

    .line 333
    invoke-interface {v0}, Lcom/facebook/inject/ScopeAwareInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v0

    .line 334
    invoke-interface {v0}, Lcom/facebook/inject/ScopeUnawareInjector;->getApplicationInjector()Lcom/facebook/inject/InjectorLike;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Lcom/facebook/inject/InjectorLike;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v0

    .line 329
    invoke-static {p0, v0}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/ScopeAwareInjector;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;
    .locals 1
    .param p0, "bindingId"    # I
    .param p1, "context"    # Lcom/facebook/inject/InjectionContext;
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
    .param p0, "bindingId"    # I
    .param p1, "scopeAwareInjector"    # Lcom/facebook/inject/ScopeAwareInjector;
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
    const-string v2, "injectingLocalInstance"

    invoke-static {v2, p0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;I)V

    .line 350
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/inject/ScopeAwareInjector;->enterPreamble()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 352
    .local v1, "token":Ljava/lang/Object;
    :try_start_1
    invoke-interface {p1}, Lcom/facebook/inject/ScopeAwareInjector;->getScopeUnawareInjector()Lcom/facebook/inject/ScopeUnawareInjector;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/facebook/ultralight/UL$factorymap;->get(ILcom/facebook/inject/InjectorLike;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 356
    :try_start_2
    invoke-interface {p1, v1}, Lcom/facebook/inject/ScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 359
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v2

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/RuntimeException;
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
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-interface {p1, v1}, Lcom/facebook/inject/ScopeAwareInjector;->exitPostamble(Ljava/lang/Object;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 359
    .end local v1    # "token":Ljava/lang/Object;
    :catchall_1
    move-exception v2

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v2
.end method

.method public static setInjectorCacheBehavior(ZZ)V
    .locals 0
    .param p0, "useGuavaReplacementCaches"    # Z
    .param p1, "avoidInjectorMemoryThrashing"    # Z

    .prologue
    .line 61
    sput-boolean p0, Lcom/facebook/inject/FbInjector;->sUseGuavaReplacementCaches:Z

    .line 62
    sput-boolean p1, Lcom/facebook/inject/FbInjector;->sAvoidInjectorMemoryThrashing:Z

    .line 63
    return-void
.end method

.method public static setTestInjectorProvider(Lcom/facebook/inject/FbInjectorProvider;)V
    .locals 0
    .param p0, "injectorProvider"    # Lcom/facebook/inject/FbInjectorProvider;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 319
    sput-object p0, Lcom/facebook/inject/FbInjector;->sTestInjectorProvider:Lcom/facebook/inject/FbInjectorProvider;

    .line 320
    invoke-static {}, Lcom/facebook/inject/FbInjector;->clearCachedInjectors()V

    .line 321
    return-void
.end method

.method public static throwForInvalidAnnotation(Ljava/lang/String;)V
    .locals 3
    .param p0, "annotationName"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v0, Lcom/facebook/inject/ProvisioningException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid annotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static updateForTest(Lcom/facebook/inject/FbInjector;Ljava/util/List;)V
    .locals 2
    .param p0, "fbInjector"    # Lcom/facebook/inject/FbInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/FbInjector;",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/inject/PrivateModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "modules":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/inject/PrivateModule;>;"
    instance-of v0, p0, Lcom/facebook/inject/FbInjectorImpl;

    const-string v1, "Must use the injector that was returned via FbInjector#createForTest!"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 153
    check-cast p0, Lcom/facebook/inject/FbInjectorImpl;

    .end local p0    # "fbInjector":Lcom/facebook/inject/FbInjector;
    invoke-virtual {p0, p1}, Lcom/facebook/inject/FbInjectorImpl;->updateWithModules(Ljava/util/List;)V

    .line 154
    return-void
.end method

.method public static useGuavaReplacementCaches()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/facebook/inject/FbInjector;->sUseGuavaReplacementCaches:Z

    return v0
.end method


# virtual methods
.method public abstract getBindingMapForTool()Ljava/util/Map;
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
.end method

.method public abstract getComponentBindingMapForTool()Ljava/util/Map;
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
.end method

.method public abstract getRequiredModulesForTool()Ljava/util/List;
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
.end method

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
