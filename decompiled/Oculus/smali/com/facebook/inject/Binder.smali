.class public interface abstract Lcom/facebook/inject/Binder;
.super Ljava/lang/Object;
.source "Binder.java"


# virtual methods
.method public abstract assertBindingInstalled(Lcom/google/inject/Key;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract assertBindingInstalled(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract bind(Ljava/lang/Class;)Lcom/facebook/inject/binder/AnnotatedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract bind(Lcom/google/inject/Key;)Lcom/facebook/inject/binder/LinkedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract bindAssistedProvider(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/AssistedProvider",
            "<TT;>;>;)V"
        }
    .end annotation
.end method

.method public abstract bindComponent(Ljava/lang/Class;)Lcom/facebook/inject/binder/LinkedComponentBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/inject/binder/LinkedComponentBindingBuilder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract bindDefault(Ljava/lang/Class;)Lcom/facebook/inject/binder/AnnotatedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract bindDefault(Lcom/google/inject/Key;)Lcom/facebook/inject/binder/LinkedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract bindMulti(Lcom/google/inject/Key;)Lcom/facebook/inject/MultiBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract bindMulti(Ljava/lang/Class;)Lcom/facebook/inject/MultiBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract bindMulti(Ljava/lang/Class;Ljava/lang/Class;)Lcom/facebook/inject/MultiBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/facebook/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract bindScope(Ljava/lang/Class;Lcom/facebook/inject/Scope;)V
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
.end method

.method public abstract declareMultiBinding(Lcom/google/inject/Key;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract declareMultiBinding(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract declareMultiBinding(Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getBindings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/Binding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getComponentBindings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/ComponentBinding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInjector()Lcom/facebook/inject/Injector;
.end method

.method public abstract getMultiBindingDeclarations()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMultiBindings()Ljava/util/Map;
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
.end method

.method public abstract getRequiredModules()Ljava/util/List;
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

.method public abstract getScopes()Ljava/util/Map;
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
.end method

.method public abstract require(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/LibraryModule;",
            ">;)V"
        }
    .end annotation
.end method
