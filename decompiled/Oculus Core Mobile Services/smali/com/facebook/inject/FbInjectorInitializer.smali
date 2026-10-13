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

.method private addSingleBinding(Lcom/facebook/inject/FbInjector;Lcom/facebook/inject/Module;Lcom/facebook/inject/Binding;Ljava/util/List;)V
    .locals 11
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
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 266
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    .line 267
    invoke-static {v2}, Lcom/facebook/ultralight/UL$id;->dynamicId(Lcom/google/inject/Key;)I

    move-result v3

    .line 268
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getProvider()Ljavax/inject/Provider;

    move-result-object v1

    .line 269
    invoke-virtual {p3, v1}, Lcom/facebook/inject/Binding;->setOriginalProvider(Ljavax/inject/Provider;)V

    .line 271
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mBindingMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/Binding;

    .line 273
    if-eqz v0, :cond_0

    const-class v4, Lcom/facebook/ultralight/UL$InitModule;

    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    :goto_0
    return-void

    .line 277
    :cond_0
    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/facebook/inject/FbInjectorInitializer;->canOverrideBindings(Lcom/facebook/inject/Module;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 278
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->isDefaultBinding()Z

    move-result v4

    if-nez v4, :cond_1

    .line 279
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Module %s illegally overriding binding for %s from module %s. Either require module %s(base module) from %s or provide %s as a default binding so it can be overridden in module %s(top module) ."

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    .line 284
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 285
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 286
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 287
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 288
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const/4 v4, 0x5

    .line 289
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x6

    .line 290
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 280
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->isDefaultBinding()Z

    move-result v4

    if-nez v4, :cond_2

    .line 294
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 295
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 296
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Module %s is overriding binding for %s from module %s, but does not require that module. Add %s(base module) in the dependency list of %s."

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 300
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 301
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 302
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 303
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    .line 304
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getDeclaringModule()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    .line 297
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_2
    instance-of v0, v1, Lcom/facebook/inject/ProviderWithInjector;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 310
    check-cast v0, Lcom/facebook/inject/ProviderWithInjector;

    invoke-interface {v0, p1}, Lcom/facebook/inject/ProviderWithInjector;->setInjector(Lcom/facebook/inject/InjectorLike;)V

    .line 314
    :cond_3
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getScope()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 315
    invoke-virtual {p3}, Lcom/facebook/inject/Binding;->getScope()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/inject/FbInjectorInitializer;->getScope(Ljava/lang/Class;)Lcom/facebook/inject/Scope;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/facebook/inject/Scope;->scope(Lcom/google/inject/Key;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    .line 316
    instance-of v0, v1, Lcom/facebook/inject/ProviderWithInjector;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 317
    check-cast v0, Lcom/facebook/inject/ProviderWithInjector;

    invoke-interface {v0, p1}, Lcom/facebook/inject/ProviderWithInjector;->setInjector(Lcom/facebook/inject/InjectorLike;)V

    .line 323
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mIsDebugMode:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/facebook/inject/ProvisioningDebugStackProvider;

    invoke-direct {v0, v2, v1}, Lcom/facebook/inject/ProvisioningDebugStackProvider;-><init>(Lcom/google/inject/Key;Ljavax/inject/Provider;)V

    move-object v1, v0

    .line 324
    :cond_5
    invoke-virtual {p3, v1}, Lcom/facebook/inject/Binding;->setProvider(Ljavax/inject/Provider;)V

    .line 325
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mBindingMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private canOverrideBindings(Lcom/facebook/inject/Module;)Z
    .locals 1

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
    .locals 3
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
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mScopeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/Scope;

    .line 361
    if-nez v0, :cond_0

    .line 362
    new-instance v0, Lcom/facebook/inject/ProvisioningException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No scope registered for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    return-object v0
.end method

.method private initializeMultiBindings()V
    .locals 4

    .prologue
    .line 345
    const-string v0, "FbInjectorImpl.init#multiBinding"

    invoke-static {v0}, Lcom/facebook/debug/tracer/Tracer;->startTracer(Ljava/lang/String;)V

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mMultiBindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/MultiBinder;

    .line 348
    new-instance v2, Lcom/facebook/inject/Binding;

    invoke-direct {v2}, Lcom/facebook/inject/Binding;-><init>()V

    .line 349
    invoke-virtual {v0}, Lcom/facebook/inject/MultiBinder;->getBoundKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/inject/Binding;->setKey(Lcom/google/inject/Key;)V

    .line 350
    invoke-virtual {v0}, Lcom/facebook/inject/MultiBinder;->getProvider()Ljavax/inject/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/inject/Binding;->setProvider(Ljavax/inject/Provider;)V

    .line 351
    invoke-virtual {v0}, Lcom/facebook/inject/MultiBinder;->getProvider()Ljavax/inject/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/inject/Binding;->setOriginalProvider(Ljavax/inject/Provider;)V

    .line 352
    iget-object v3, p0, Lcom/facebook/inject/FbInjectorInitializer;->mBindingMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/inject/MultiBinder;->getBoundKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ultralight/UL$id;->dynamicId(Lcom/google/inject/Key;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    .line 357
    return-void
.end method

.method private installLegacyModule(Lcom/facebook/inject/LibraryModule;)V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lcom/facebook/inject/BinderImpl;

    iget-object v1, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/inject/BinderImpl;-><init>(Lcom/facebook/inject/FbInjector;Ljava/lang/Class;)V

    .line 142
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
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mScopeMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/facebook/inject/Binder;->getScopes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 204
    invoke-interface {p1}, Lcom/facebook/inject/Binder;->getRequiredModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 205
    iget-object v2, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModulesInstalled:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModulesInstalled:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-direct {p0, v0}, Lcom/facebook/inject/FbInjectorInitializer;->newInstanceOfModule(Ljava/lang/Class;)Lcom/facebook/inject/LibraryModule;

    move-result-object v0

    .line 208
    invoke-direct {p0, v0}, Lcom/facebook/inject/FbInjectorInitializer;->installLegacyModule(Lcom/facebook/inject/LibraryModule;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-interface {p1}, Lcom/facebook/inject/Binder;->getBindings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/Binding;

    .line 214
    iget-object v2, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-interface {p1}, Lcom/facebook/inject/Binder;->getRequiredModules()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, p2, v0, v3}, Lcom/facebook/inject/FbInjectorInitializer;->addSingleBinding(Lcom/facebook/inject/FbInjector;Lcom/facebook/inject/Module;Lcom/facebook/inject/Binding;Ljava/util/List;)V

    goto :goto_1

    .line 217
    :cond_2
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-nez v0, :cond_3

    .line 218
    invoke-interface {p1}, Lcom/facebook/inject/Binder;->getScopes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/Scope;

    .line 219
    new-instance v2, Lcom/facebook/inject/Binding;

    invoke-direct {v2}, Lcom/facebook/inject/Binding;-><init>()V

    .line 220
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/inject/Binding;->setModule(Ljava/lang/Class;)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/inject/Binding;->setKey(Lcom/google/inject/Key;)V

    .line 222
    new-instance v3, Lcom/facebook/inject/InstanceProvider;

    invoke-direct {v3, v0}, Lcom/facebook/inject/InstanceProvider;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/facebook/inject/Binding;->setProvider(Ljavax/inject/Provider;)V

    .line 223
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-interface {p1}, Lcom/facebook/inject/Binder;->getRequiredModules()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, p2, v2, v3}, Lcom/facebook/inject/FbInjectorInitializer;->addSingleBinding(Lcom/facebook/inject/FbInjector;Lcom/facebook/inject/Module;Lcom/facebook/inject/Binding;Ljava/util/List;)V

    goto :goto_2

    .line 228
    :cond_3
    invoke-interface {p1}, Lcom/facebook/inject/Binder;->getComponentBindings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/ComponentBinding;

    .line 229
    invoke-virtual {v0}, Lcom/facebook/inject/ComponentBinding;->getProvider()Lcom/facebook/inject/ComponentProvider;

    move-result-object v1

    .line 230
    instance-of v3, v1, Lcom/facebook/inject/ComponentProviderWithInjector;

    if-eqz v3, :cond_4

    .line 231
    check-cast v1, Lcom/facebook/inject/ComponentProviderWithInjector;

    iget-object v3, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-interface {v1, v3}, Lcom/facebook/inject/ComponentProviderWithInjector;->setInjector(Lcom/facebook/inject/InjectorLike;)V

    .line 235
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/inject/ComponentBinding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    .line 236
    iget-object v3, p0, Lcom/facebook/inject/FbInjectorInitializer;->mComponentBindingMap:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 241
    :cond_5
    invoke-interface {p1}, Lcom/facebook/inject/Binder;->getMultiBindingDeclarations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/inject/Binder;->getMultiBindings()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 244
    iget-object v1, p0, Lcom/facebook/inject/FbInjectorInitializer;->mMultiBindings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/inject/MultiBinder;

    .line 245
    if-nez v1, :cond_6

    .line 246
    new-instance v1, Lcom/facebook/inject/MultiBinder;

    iget-object v3, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-direct {v1, v3, v0}, Lcom/facebook/inject/MultiBinder;-><init>(Lcom/facebook/inject/FbInjector;Lcom/google/inject/Key;)V

    .line 247
    iget-object v3, p0, Lcom/facebook/inject/FbInjectorInitializer;->mMultiBindings:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 252
    :cond_7
    invoke-interface {p1}, Lcom/facebook/inject/Binder;->getMultiBindings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Key;

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/MultiBinding;

    .line 255
    iget-object v3, p0, Lcom/facebook/inject/FbInjectorInitializer;->mMultiBindings:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/inject/MultiBinder;

    .line 256
    invoke-virtual {v0}, Lcom/facebook/inject/MultiBinding;->getValues()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/inject/MultiBinder;->addAll(Ljava/util/Collection;)V

    goto :goto_5

    .line 258
    :cond_8
    return-void
.end method

.method private installPrivateModule(Lcom/facebook/inject/PrivateModule;)V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lcom/facebook/inject/BinderImpl;

    iget-object v1, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/inject/BinderImpl;-><init>(Lcom/facebook/inject/FbInjector;Ljava/lang/Class;)V

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/facebook/inject/FbInjectorInitializer;->invokeConfigure(Lcom/facebook/inject/Module;Lcom/facebook/inject/Binder;)V

    .line 154
    invoke-direct {p0, v0, p1}, Lcom/facebook/inject/FbInjectorInitializer;->installModule(Lcom/facebook/inject/Binder;Lcom/facebook/inject/Module;)V

    .line 155
    return-void
.end method

.method private installSpecialModule(Lcom/facebook/inject/SpecialModule;)V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lcom/facebook/inject/BinderImpl;

    iget-object v1, p0, Lcom/facebook/inject/FbInjectorInitializer;->mFbInjector:Lcom/facebook/inject/FbInjector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/inject/BinderImpl;-><init>(Lcom/facebook/inject/FbInjector;Ljava/lang/Class;)V

    .line 135
    invoke-interface {p1, v0}, Lcom/facebook/inject/SpecialModule;->configure(Lcom/facebook/inject/Binder;)V

    .line 136
    invoke-direct {p0, v0, p1}, Lcom/facebook/inject/FbInjectorInitializer;->installModule(Lcom/facebook/inject/Binder;Lcom/facebook/inject/Module;)V

    .line 137
    iget-object v0, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModulesInstalled:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method private invokeAutoGeneratedBindings(Lcom/facebook/inject/Module;Lcom/facebook/inject/Binder;)V
    .locals 5

    .prologue
    .line 160
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$AutoGeneratedBindingsFor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "bind"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/facebook/inject/Binder;

    aput-object v4, v2, v3

    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 167
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 177
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 170
    :catch_1
    move-exception v0

    .line 171
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 172
    :catch_2
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-class v1, Ljava/lang/RuntimeException;

    invoke-static {v0, v1}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    goto :goto_0

    .line 174
    :catch_3
    move-exception v0

    .line 175
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private invokeConfigure(Lcom/facebook/inject/Module;Lcom/facebook/inject/Binder;)V
    .locals 3

    .prologue
    .line 182
    :try_start_0
    const-class v0, Lcom/facebook/inject/AbstractModule;

    const-string v1, "mBinder"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 184
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "configure"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 188
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 198
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 191
    :catch_1
    move-exception v0

    .line 192
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 193
    :catch_2
    move-exception v0

    .line 194
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 195
    :catch_3
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-class v1, Ljava/lang/RuntimeException;

    invoke-static {v0, v1}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private newInstanceOfModule(Ljava/lang/Class;)Lcom/facebook/inject/LibraryModule;
    .locals 4
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
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 331
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 332
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/LibraryModule;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find public default constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 335
    :catch_1
    move-exception v0

    .line 336
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 337
    :catch_2
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 339
    :catch_3
    move-exception v0

    .line 340
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to access constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runInit(Z)Lcom/facebook/inject/FbInjectorInitializer$Result;
    .locals 6

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

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/PrivateModule;

    .line 116
    iget-object v2, p0, Lcom/facebook/inject/FbInjectorInitializer;->mModulesInstalled:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-direct {p0, v0}, Lcom/facebook/inject/FbInjectorInitializer;->installPrivateModule(Lcom/facebook/inject/PrivateModule;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
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
