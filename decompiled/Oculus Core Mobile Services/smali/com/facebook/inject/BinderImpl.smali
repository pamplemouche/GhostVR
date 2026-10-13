.class public Lcom/facebook/inject/BinderImpl;
.super Ljava/lang/Object;
.source "BinderImpl.java"

# interfaces
.implements Lcom/facebook/inject/Binder;


# instance fields
.field private mBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/Binding;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/ComponentBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeclaringModule:Ljava/lang/Class;

.field private final mInjector:Lcom/facebook/inject/FbInjector;

.field private mMultiBindingDeclarations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/MultiBinding;",
            ">;"
        }
    .end annotation
.end field

.field private mRequiredModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/LibraryModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScopes:Ljava/util/Map;
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
.method public constructor <init>(Lcom/facebook/inject/FbInjector;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/inject/BinderImpl;->mInjector:Lcom/facebook/inject/FbInjector;

    .line 44
    iput-object p2, p0, Lcom/facebook/inject/BinderImpl;->mDeclaringModule:Ljava/lang/Class;

    .line 45
    return-void
.end method


# virtual methods
.method public bindScope(Ljava/lang/Class;Lcom/facebook/inject/Scope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/facebook/inject/Scope;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mScopes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/BinderImpl;->mScopes:Ljava/util/Map;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mScopes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public getBindings()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/Binding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 141
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mBindings:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 142
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mBindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 143
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mBindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/Binding;

    .line 144
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/ultralight/UL$id;->dynamicId(Lcom/google/inject/Key;)I

    move-result v4

    .line 145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getComponentBindings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/ComponentBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mComponentBindings:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mComponentBindings:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public getInjector()Lcom/facebook/inject/Injector;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mInjector:Lcom/facebook/inject/FbInjector;

    return-object v0
.end method

.method public getMultiBindingDeclarations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindingDeclarations:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindingDeclarations:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public getMultiBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/MultiBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindings:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequiredModules()Ljava/util/List;
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
    .line 259
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mRequiredModules:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mRequiredModules:Ljava/util/List;

    .line 261
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public getScopes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .prologue
    .line 266
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mScopes:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mScopes:Ljava/util/Map;

    goto :goto_0
.end method
