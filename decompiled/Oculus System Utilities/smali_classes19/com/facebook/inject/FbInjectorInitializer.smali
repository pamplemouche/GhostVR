.class Lcom/facebook/inject/FbInjectorInitializer;
.super Ljava/lang/Object;
.source "FbInjectorInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/inject/FbInjectorInitializer$Result;
    }
.end annotation


# instance fields
.field private final mBindingMap:Ljava/util/Map;
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

.field private final mComponentBindingMap:Ljava/util/Map;
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

.field private final mFbInjector:Lcom/facebook/inject/FbInjector;

.field private final mIsDebugMode:Z

.field private final mModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/inject/PrivateModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mModulesInstalled:Ljava/util/Set;
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
.end field

.field private final mMultiBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/MultiBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mScopeMap:Ljava/util/Map;
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
.method public constructor <init>(Lcom/facebook/inject/FbInjector;Ljava/util/List;Z)V
    .locals 1
    .param p1, "fbInjector"    # Lcom/facebook/inject/FbInjector;
    .param p3, "isDebugMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/FbInjector;",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/inject/PrivateModule;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "modules":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/inject/PrivateModule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mBindingMap:Ljava/util/Map;

    .line 38
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mComponentBindingMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModulesInstalled:Ljava/util/Set;

    .line 40
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mScopeMap:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mMultiBindings:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    .line 46
    iput-object p2, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModules:Ljava/util/List;

    .line 47
    iput-boolean p3, p0, Lcom/facebook/inject/FbInjectorInitializer;->mIsDebugMode:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/FbInjector;Ljava/util/List;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V
    .locals 1
    .param p1, "fbInjector"    # Lcom/facebook/inject/FbInjector;
    .param p3, "isDebugMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/FbInjector;",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/inject/PrivateModule;",
            ">;Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/inject/Binding;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/facebook/inject/Scope;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/ComponentBinding;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/MultiBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "modules":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/inject/PrivateModule;>;"
    .local p4, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/inject/Binding;>;"
    .local p5, "scopeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lcom/facebook/inject/Scope;>;"
    .local p6, "componentBindingMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/inject/Key;Lcom/facebook/inject/ComponentBinding;>;"
    .local p7, "modulesInstalled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Lcom/facebook/inject/Module;>;>;"
    .local p8, "multiBindings":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/inject/Key;Lcom/facebook/inject/MultiBinder;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/inject/FbInjectorInitializer;-><init>(Lcom/facebook/inject/FbInjector;Ljava/util/List;Z)V

    .line 61
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mBindingMap:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 62
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mComponentBindingMap:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 63
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mScopeMap:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 64
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModulesInstalled:Ljava/util/Set;

    invoke-interface {v0, p7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mMultiBindings:Ljava/util/Map;

    invoke-interface {v0, p8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66
    return-void
.end method

.method private addSingleBinding(Lcom/facebook/inject/FbInjector;Lcom/facebook/inject/Module;Lcom/facebook/inject/Binding;Ljava/util/List;)V
    .locals 9
    .param p1, "moduleInjector"    # Lcom/facebook/inject/FbInjector;
    .param p2, "module"    # Lcom/facebook/inject/Module;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/inject/FbInjector;",
            "Lcom/facebook/inject/Module;",
            "Lcom/facebook/inject/Binding",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/LibraryModule;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p3, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    .local p4, "requiredModules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lcom/facebook/inject/LibraryModule;>;>;"
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    .line 267
    .local v0, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-static {v0}, Lcom/facebook/ultralight/UL$id;->dynamicId(Lcom/google/inject/Key;)I

    move-result v3

    .line 268
    .local v3, "ultralightKey":I
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getProvider()Ljavax/inject/Provider;

    move-result-object v2

    .line 269
    .local v2, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    invoke-virtual {p3, v2}, Lcom/facebook/inject/Binding;->setOriginalProvider(Ljavax/inject/Provider;)V

    .line 271
    iget-object v4, p0, Lcom/facebook/inject/FbInjectorInitializer;->mBindingMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/inject/Binding;

    .line 273
    .local v1, "oldBinding":Lcom/facebook/inject/Binding;
    if-eqz v1, :cond_0

    const-class v4, Lcom/facebook/ultralight/UL$InitModule;

    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    :goto_0
    return-void

    .line 277
    :cond_0
    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/facebook/inject/FbInjectorInitializer;->canOverrideBindings(Lcom/facebook/inject/Module;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 278
    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->isDefaultBinding()Z

    move-result v4

    if-nez v4, :cond_1

    .line 279
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Module %s illegally overriding binding for %s from module %s. Either require module %s(base module) from %s or provide %s as a default binding so it can be overridden in module %s(top module) ."

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 284
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 285
    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 286
    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 287
    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 288
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    .line 289
    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 290
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 280
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->isDefaultBinding()Z

    move-result v4

    if-nez v4, :cond_2

    .line 294
    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 295
    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 296
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Module %s is overriding binding for %s from module %s, but does not require that module. Add %s(base module) in the dependency list of %s."

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 300
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 301
    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 302
    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 303
    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 304
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 297
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 309
    :cond_2
    instance-of v4, v2, Lcom/facebook/inject/ProviderWithInjector;

    if-eqz v4, :cond_3

    move-object v4, v2

    .line 310
    check-cast v4, Lcom/facebook/inject/ProviderWithInjector;

    invoke-interface {v4, p1}, Lcom/facebook/inject/ProviderWithInjector;->setInjector(Lcom/facebook/inject/InjectorLike;)V

    .line 314
    :cond_3
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getScope()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 315
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getScope()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/inject/FbInjectorInitializer;->getScope(Ljava/lang/Class;)Lcom/facebook/inject/Scope;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Lcom/facebook/inject/Scope;->scope(Lcom/google/inject/Key;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 316
    instance-of v4, v2, Lcom/facebook/inject/ProviderWithInjector;

    if-eqz v4, :cond_4

    move-object v4, v2

    .line 317
    check-cast v4, Lcom/facebook/inject/ProviderWithInjector;

    invoke-interface {v4, p1}, Lcom/facebook/inject/ProviderWithInjector;->setInjector(Lcom/facebook/inject/InjectorLike;)V

    .line 323
    :cond_4
    iget-boolean v4, p0, Lcom/facebook/inject/FbInjectorInitializer;->mIsDebugMode:Z

    if-eqz v4, :cond_5

    new-instance v4, Lcom/facebook/inject/ProvisioningDebugStackProvider;

    invoke-direct {v4, v0, v2}, Lcom/facebook/inject/ProvisioningDebugStackProvider;-><init>(Lcom/google/inject/Key;Ljavax/inject/Provider;)V

    move-object v2, v4

    .line 324
    :cond_5
    invoke-virtual {p3, v2}, Lcom/facebook/inject/Binding;->setProvider(Ljavax/inject/Provider;)V

    .line 325
    iget-object v4, p0, Lcom/facebook/inject/FbInjectorInitializer;->mBindingMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private canOverrideBindings(Lcom/facebook/inject/Module;)Z
    .locals 1
    .param p1, "module"    # Lcom/facebook/inject/Module;

    .prologue
    .line 368
    instance-of v0, p1, Lcom/facebook/inject/testing/OverridesBindings;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/ultralight/UL$InitModule;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScope(Ljava/lang/Class;)Lcom/facebook/inject/Scope;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/facebook/inject/Scope;"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "scopeAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v1, p0, Lcom/facebook/inject/FbInjectorInitializer;->mScopeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/Scope;

    .line 361
    .local v0, "scope":Lcom/facebook/inject/Scope;
    if-nez v0, :cond_0

    .line 362
    new-instance v1, Lcom/facebook/inject/ProvisioningException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No scope registered for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_0
    return-object v0
.end method

.method private initializeMultiBindings()V
    .locals 5

    .prologue
    .line 345
    const-string v2, "FbInjectorImpl.init#multiBinding"

    invoke-static {v2}, Lcom/facebook/debug/tracer/Tracer;->startTracer(Ljava/lang/String;)V

    .line 347
    :try_start_0
    iget-object v2, p0, Lcom/facebook/inject/FbInjectorInitializer;->mMultiBindings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/MultiBinder;

    .line 348
    .local v0, "binder":Lcom/facebook/inject/MultiBinder;, "Lcom/facebook/inject/MultiBinder<*>;"
    new-instance v1, Lcom/facebook/inject/Binding;

    invoke-direct {v1}, Lcom/facebook/inject/Binding;-><init>()V

    .line 349
    .local v1, "binding":Lcom/facebook/inject/Binding;
    invoke-virtual {v0}, Lcom/facebook/inject/MultiBinder;->getBoundKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/inject/Binding;->setKey(Lcom/google/inject/Key;)V

    .line 350
    invoke-virtual {v0}, Lcom/facebook/inject/MultiBinder;->getProvider()Ljavax/inject/Provider;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/inject/Binding;->setProvider(Ljavax/inject/Provider;)V

    .line 351
    invoke-virtual {v0}, Lcom/facebook/inject/MultiBinder;->getProvider()Ljavax/inject/Provider;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/inject/Binding;->setOriginalProvider(Ljavax/inject/Provider;)V

    .line 352
    iget-object v3, p0, Lcom/facebook/inject/FbInjectorInitializer;->mBindingMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/inject/MultiBinder;->getBoundKey()Lcom/google/inject/Key;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/ultralight/UL$id;->dynamicId(Lcom/google/inject/Key;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 355
    .end local v0    # "binder":Lcom/facebook/inject/MultiBinder;, "Lcom/facebook/inject/MultiBinder<*>;"
    .end local v1    # "binding":Lcom/facebook/inject/Binding;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    throw v2

    :cond_0
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    .line 357
    return-void
.end method

.method private installLegacyModule(Lcom/facebook/inject/LibraryModule;)V
    .locals 3
    .param p1, "module"    # Lcom/facebook/inject/LibraryModule;

    .prologue
    .line 141
    new-instance v0, Lcom/facebook/inject/BinderImpl;

    iget-object v1, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/inject/BinderImpl;-><init>(Lcom/facebook/inject/FbInjector;Ljava/lang/Class;)V

    .line 142
    .local v0, "binder":Lcom/facebook/inject/Binder;
    const-class v1, Lcom/facebook/inject/testing/OverridesBindings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/facebook/inject/InjectorModule;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_1

    .line 144
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/inject/FbInjectorInitializer;->invokeConfigure(Lcom/facebook/inject/Module;Lcom/facebook/inject/Binder;)V

    .line 148
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/facebook/inject/FbInjectorInitializer;->installModule(Lcom/facebook/inject/Binder;Lcom/facebook/inject/Module;)V

    .line 149
    return-void

    .line 146
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/facebook/inject/FbInjectorInitializer;->invokeAutoGeneratedBindings(Lcom/facebook/inject/Module;Lcom/facebook/inject/Binder;)V

    goto :goto_0
.end method

.method private installModule(Lcom/facebook/inject/Binder;Lcom/facebook/inject/Module;)V
    .locals 15
    .param p1, "binder"    # Lcom/facebook/inject/Binder;
    .param p2, "module"    # Lcom/facebook/inject/Module;

    .prologue
    .line 201
    iget-object v12, p0, Lcom/facebook/inject/FbInjectorInitializer;->mScopeMap:Ljava/util/Map;

    invoke-interface/range {p1 .. p1}, Lcom/facebook/inject/Binder;->getScopes()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 204
    invoke-interface/range {p1 .. p1}, Lcom/facebook/inject/Binder;->getRequiredModules()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    .line 205
    .local v10, "requiredModuleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/inject/LibraryModule;>;"
    iget-object v13, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModulesInstalled:Ljava/util/Set;

    invoke-interface {v13, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 206
    iget-object v13, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModulesInstalled:Ljava/util/Set;

    invoke-interface {v13, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-direct {p0, v10}, Lcom/facebook/inject/FbInjectorInitializer;->newInstanceOfModule(Ljava/lang/Class;)Lcom/facebook/inject/LibraryModule;

    move-result-object v6

    .line 208
    .local v6, "libraryModule":Lcom/facebook/inject/LibraryModule;
    invoke-direct {p0, v6}, Lcom/facebook/inject/FbInjectorInitializer;->installLegacyModule(Lcom/facebook/inject/LibraryModule;)V

    goto :goto_0

    .line 213
    .end local v6    # "libraryModule":Lcom/facebook/inject/LibraryModule;
    .end local v10    # "requiredModuleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/inject/LibraryModule;>;"
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/facebook/inject/Binder;->getBindings()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/inject/Binding;

    .line 214
    .local v2, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<*>;"
    iget-object v13, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-interface/range {p1 .. p1}, Lcom/facebook/inject/Binder;->getRequiredModules()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-direct {p0, v13, v0, v2, v14}, Lcom/facebook/inject/FbInjectorInitializer;->addSingleBinding(Lcom/facebook/inject/FbInjector;Lcom/facebook/inject/Module;Lcom/facebook/inject/Binding;Ljava/util/List;)V

    goto :goto_1

    .line 217
    .end local v2    # "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<*>;"
    :cond_2
    sget-boolean v12, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-nez v12, :cond_3

    .line 218
    invoke-interface/range {p1 .. p1}, Lcom/facebook/inject/Binder;->getScopes()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/inject/Scope;

    .line 219
    .local v11, "scope":Lcom/facebook/inject/Scope;
    new-instance v1, Lcom/facebook/inject/Binding;

    invoke-direct {v1}, Lcom/facebook/inject/Binding;-><init>()V

    .line 220
    .local v1, "binding":Lcom/facebook/inject/Binding;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/facebook/inject/Binding;->setModule(Ljava/lang/Class;)V

    .line 221
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/facebook/inject/Binding;->setKey(Lcom/google/inject/Key;)V

    .line 222
    new-instance v13, Lcom/facebook/inject/InstanceProvider;

    invoke-direct {v13, v11}, Lcom/facebook/inject/InstanceProvider;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v13}, Lcom/facebook/inject/Binding;->setProvider(Ljavax/inject/Provider;)V

    .line 223
    iget-object v13, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-interface/range {p1 .. p1}, Lcom/facebook/inject/Binder;->getRequiredModules()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-direct {p0, v13, v0, v1, v14}, Lcom/facebook/inject/FbInjectorInitializer;->addSingleBinding(Lcom/facebook/inject/FbInjector;Lcom/facebook/inject/Module;Lcom/facebook/inject/Binding;Ljava/util/List;)V

    goto :goto_2

    .line 228
    .end local v1    # "binding":Lcom/facebook/inject/Binding;
    .end local v11    # "scope":Lcom/facebook/inject/Scope;
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/facebook/inject/Binder;->getComponentBindings()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/inject/ComponentBinding;

    .line 229
    .local v1, "binding":Lcom/facebook/inject/ComponentBinding;
    invoke-virtual {v1}, Lcom/facebook/inject/ComponentBinding;->getProvider()Lcom/facebook/inject/ComponentProvider;

    move-result-object v9

    .line 230
    .local v9, "provider":Lcom/facebook/inject/ComponentProvider;
    instance-of v13, v9, Lcom/facebook/inject/ComponentProviderWithInjector;

    if-eqz v13, :cond_4

    .line 231
    check-cast v9, Lcom/facebook/inject/ComponentProviderWithInjector;

    .end local v9    # "provider":Lcom/facebook/inject/ComponentProvider;
    iget-object v13, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-interface {v9, v13}, Lcom/facebook/inject/ComponentProviderWithInjector;->setInjector(Lcom/facebook/inject/InjectorLike;)V

    .line 235
    :cond_4
    invoke-virtual {v1}, Lcom/facebook/inject/ComponentBinding;->getKey()Lcom/google/inject/Key;

    move-result-object v5

    .line 236
    .local v5, "key":Lcom/google/inject/Key;
    iget-object v13, p0, Lcom/facebook/inject/FbInjectorInitializer;->mComponentBindingMap:Ljava/util/Map;

    invoke-interface {v13, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 241
    .end local v1    # "binding":Lcom/facebook/inject/ComponentBinding;
    .end local v5    # "key":Lcom/google/inject/Key;
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/facebook/inject/Binder;->getMultiBindingDeclarations()Ljava/util/Set;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lcom/facebook/inject/Binder;->getMultiBindings()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v8

    .line 243
    .local v8, "multibindingKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/Key;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/inject/Key;

    .line 244
    .restart local v5    # "key":Lcom/google/inject/Key;
    iget-object v13, p0, Lcom/facebook/inject/FbInjectorInitializer;->mMultiBindings:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/inject/MultiBinder;

    .line 245
    .local v7, "multiBinder":Lcom/facebook/inject/MultiBinder;
    if-nez v7, :cond_6

    .line 246
    new-instance v7, Lcom/facebook/inject/MultiBinder;

    .end local v7    # "multiBinder":Lcom/facebook/inject/MultiBinder;
    iget-object v13, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-direct {v7, v13, v5}, Lcom/facebook/inject/MultiBinder;-><init>(Lcom/facebook/inject/FbInjector;Lcom/google/inject/Key;)V

    .line 247
    .restart local v7    # "multiBinder":Lcom/facebook/inject/MultiBinder;
    iget-object v13, p0, Lcom/facebook/inject/FbInjectorInitializer;->mMultiBindings:Ljava/util/Map;

    invoke-interface {v13, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 252
    .end local v5    # "key":Lcom/google/inject/Key;
    .end local v7    # "multiBinder":Lcom/facebook/inject/MultiBinder;
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/facebook/inject/Binder;->getMultiBindings()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 253
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/inject/Key;Lcom/facebook/inject/MultiBinding;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/inject/Key;

    .line 254
    .restart local v5    # "key":Lcom/google/inject/Key;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/inject/MultiBinding;

    .line 255
    .local v3, "binding":Lcom/facebook/inject/MultiBinding;, "Lcom/facebook/inject/MultiBinding<*>;"
    iget-object v13, p0, Lcom/facebook/inject/FbInjectorInitializer;->mMultiBindings:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/inject/MultiBinder;

    .line 256
    .restart local v7    # "multiBinder":Lcom/facebook/inject/MultiBinder;
    invoke-virtual {v3}, Lcom/facebook/inject/MultiBinding;->getValues()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/facebook/inject/MultiBinder;->addAll(Ljava/util/Collection;)V

    goto :goto_5

    .line 258
    .end local v3    # "binding":Lcom/facebook/inject/MultiBinding;, "Lcom/facebook/inject/MultiBinding<*>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/inject/Key;Lcom/facebook/inject/MultiBinding;>;"
    .end local v5    # "key":Lcom/google/inject/Key;
    .end local v7    # "multiBinder":Lcom/facebook/inject/MultiBinder;
    :cond_8
    return-void
.end method

.method private installPrivateModule(Lcom/facebook/inject/PrivateModule;)V
    .locals 3
    .param p1, "module"    # Lcom/facebook/inject/PrivateModule;

    .prologue
    .line 152
    new-instance v0, Lcom/facebook/inject/BinderImpl;

    iget-object v1, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/inject/BinderImpl;-><init>(Lcom/facebook/inject/FbInjector;Ljava/lang/Class;)V

    .line 153
    .local v0, "binder":Lcom/facebook/inject/Binder;
    invoke-direct {p0, p1, v0}, Lcom/facebook/inject/FbInjectorInitializer;->invokeConfigure(Lcom/facebook/inject/Module;Lcom/facebook/inject/Binder;)V

    .line 154
    invoke-direct {p0, v0, p1}, Lcom/facebook/inject/FbInjectorInitializer;->installModule(Lcom/facebook/inject/Binder;Lcom/facebook/inject/Module;)V

    .line 155
    return-void
.end method

.method private installSpecialModule(Lcom/facebook/inject/SpecialModule;)V
    .locals 3
    .param p1, "module"    # Lcom/facebook/inject/SpecialModule;

    .prologue
    .line 134
    new-instance v0, Lcom/facebook/inject/BinderImpl;

    iget-object v1, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/inject/BinderImpl;-><init>(Lcom/facebook/inject/FbInjector;Ljava/lang/Class;)V

    .line 135
    .local v0, "binder":Lcom/facebook/inject/Binder;
    invoke-interface {p1, v0}, Lcom/facebook/inject/SpecialModule;->configure(Lcom/facebook/inject/Binder;)V

    .line 136
    invoke-direct {p0, v0, p1}, Lcom/facebook/inject/FbInjectorInitializer;->installModule(Lcom/facebook/inject/Binder;Lcom/facebook/inject/Module;)V

    .line 137
    iget-object v1, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModulesInstalled:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method private invokeAutoGeneratedBindings(Lcom/facebook/inject/Module;Lcom/facebook/inject/Binder;)V
    .locals 7
    .param p1, "module"    # Lcom/facebook/inject/Module;
    .param p2, "binder"    # Lcom/facebook/inject/Binder;

    .prologue
    .line 160
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$AutoGeneratedBindingsFor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "bind"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/facebook/inject/Binder;

    aput-object v6, v4, v5

    .line 165
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 166
    .local v0, "configure":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 167
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 177
    .end local v0    # "configure":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 170
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 172
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-class v3, Ljava/lang/RuntimeException;

    invoke-static {v2, v3}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    goto :goto_0

    .line 174
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private invokeConfigure(Lcom/facebook/inject/Module;Lcom/facebook/inject/Binder;)V
    .locals 6
    .param p1, "module"    # Lcom/facebook/inject/Module;
    .param p2, "binder"    # Lcom/facebook/inject/Binder;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "binderField":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v3, Lcom/facebook/inject/AbstractModule;

    const-string v4, "mBinder"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 183
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 184
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "configure"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 187
    .local v1, "configure":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 188
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 198
    .end local v1    # "configure":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v2}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 191
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v2}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 193
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 194
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 195
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    const-class v4, Ljava/lang/RuntimeException;

    invoke-static {v3, v4}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private newInstanceOfModule(Ljava/lang/Class;)Lcom/facebook/inject/LibraryModule;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/LibraryModule;",
            ">;)",
            "Lcom/facebook/inject/LibraryModule;"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/inject/LibraryModule;>;"
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 331
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/facebook/inject/LibraryModule;>;"
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 332
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/inject/LibraryModule;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 333
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/facebook/inject/LibraryModule;>;"
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find public default constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 335
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 337
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 339
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to access constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private runInit(Z)Lcom/facebook/inject/FbInjectorInitializer$Result;
    .locals 7
    .param p1, "isUpdate"    # Z

    .prologue
    .line 109
    const-string v0, "FbInjectorImpl.init#modules"

    invoke-static {v0}, Lcom/facebook/debug/tracer/Tracer;->startTracer(Ljava/lang/String;)V

    .line 111
    if-nez p1, :cond_0

    .line 112
    :try_start_0
    new-instance v0, Lcom/facebook/ultralight/UL$InitModule;

    invoke-direct {v0}, Lcom/facebook/ultralight/UL$InitModule;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/inject/FbInjectorInitializer;->installSpecialModule(Lcom/facebook/inject/SpecialModule;)V

    .line 114
    :cond_0
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/inject/PrivateModule;

    .line 116
    .local v6, "module":Lcom/facebook/inject/PrivateModule;
    iget-object v1, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModulesInstalled:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-direct {p0, v6}, Lcom/facebook/inject/FbInjectorInitializer;->installPrivateModule(Lcom/facebook/inject/PrivateModule;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    .end local v6    # "module":Lcom/facebook/inject/PrivateModule;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    .line 124
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-nez v0, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/facebook/inject/FbInjectorInitializer;->initializeMultiBindings()V

    .line 129
    :cond_2
    new-instance v0, Lcom/facebook/inject/FbInjectorInitializer$Result;

    iget-object v1, p0, Lcom/facebook/inject/FbInjectorInitializer;->mBindingMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/inject/FbInjectorInitializer;->mScopeMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/facebook/inject/FbInjectorInitializer;->mComponentBindingMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModulesInstalled:Ljava/util/Set;

    iget-object v5, p0, Lcom/facebook/inject/FbInjectorInitializer;->mMultiBindings:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/inject/FbInjectorInitializer$Result;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public init()Lcom/facebook/inject/FbInjectorInitializer$Result;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/inject/FbInjectorInitializer;->runInit(Z)Lcom/facebook/inject/FbInjectorInitializer$Result;

    move-result-object v0

    return-object v0
.end method

.method public update()Lcom/facebook/inject/FbInjectorInitializer$Result;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/inject/FbInjectorInitializer;->runInit(Z)Lcom/facebook/inject/FbInjectorInitializer$Result;

    move-result-object v0

    return-object v0
.end method
