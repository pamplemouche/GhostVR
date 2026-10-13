.class public abstract Lcom/facebook/inject/AbstractModule;
.super Ljava/lang/Object;
.source "AbstractModule.java"

# interfaces
.implements Lcom/facebook/inject/Module;


# instance fields
.field protected mBinder:Lcom/facebook/inject/Binder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected assertBindingInstalled(Lcom/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->assertBindingInstalled(Lcom/google/inject/Key;)V

    .line 160
    return-void
.end method

.method protected assertBindingInstalled(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->assertBindingInstalled(Ljava/lang/Class;)V

    .line 142
    return-void
.end method

.method protected assertBindingInstalled(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-static {p1, p2}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/inject/Binder;->assertBindingInstalled(Lcom/google/inject/Key;)V

    .line 151
    return-void
.end method

.method protected bind(Ljava/lang/Class;)Lcom/facebook/inject/binder/AnnotatedBindingBuilder;
    .locals 1
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

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->bind(Ljava/lang/Class;)Lcom/facebook/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected bind(Lcom/google/inject/Key;)Lcom/facebook/inject/binder/LinkedBindingBuilder;
    .locals 1
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

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/facebook/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected bindAssistedProvider(Ljava/lang/Class;)V
    .locals 1
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

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->bindAssistedProvider(Ljava/lang/Class;)V

    .line 87
    return-void
.end method

.method protected bindComponent(Ljava/lang/Class;)Lcom/facebook/inject/binder/LinkedComponentBindingBuilder;
    .locals 1
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

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->bindComponent(Ljava/lang/Class;)Lcom/facebook/inject/binder/LinkedComponentBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected bindDefault(Ljava/lang/Class;)Lcom/facebook/inject/binder/AnnotatedBindingBuilder;
    .locals 1
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

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->bindDefault(Ljava/lang/Class;)Lcom/facebook/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected bindDefault(Lcom/google/inject/Key;)Lcom/facebook/inject/binder/LinkedBindingBuilder;
    .locals 1
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

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->bindDefault(Lcom/google/inject/Key;)Lcom/facebook/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected bindMulti(Lcom/google/inject/Key;)Lcom/facebook/inject/MultiBinding;
    .locals 1
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

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->bindMulti(Lcom/google/inject/Key;)Lcom/facebook/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method

.method protected bindMulti(Ljava/lang/Class;)Lcom/facebook/inject/MultiBinding;
    .locals 1
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

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->bindMulti(Ljava/lang/Class;)Lcom/facebook/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method

.method protected bindMulti(Ljava/lang/Class;Ljava/lang/Class;)Lcom/facebook/inject/MultiBinding;
    .locals 1
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

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1, p2}, Lcom/facebook/inject/Binder;->bindMulti(Ljava/lang/Class;Ljava/lang/Class;)Lcom/facebook/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method

.method protected bindScope(Ljava/lang/Class;Lcom/facebook/inject/Scope;)V
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
    .line 178
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1, p2}, Lcom/facebook/inject/Binder;->bindScope(Ljava/lang/Class;Lcom/facebook/inject/Scope;)V

    .line 179
    return-void
.end method

.method protected configure()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method protected declareMultiBinding(Lcom/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->declareMultiBinding(Lcom/google/inject/Key;)V

    .line 102
    return-void
.end method

.method protected declareMultiBinding(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->declareMultiBinding(Ljava/lang/Class;)V

    .line 92
    return-void
.end method

.method protected declareMultiBinding(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1, p2}, Lcom/facebook/inject/Binder;->declareMultiBinding(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 97
    return-void
.end method

.method protected getBinder()Lcom/facebook/inject/Binder;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    return-object v0
.end method

.method protected require(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/LibraryModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/inject/AbstractModule;->mBinder:Lcom/facebook/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/inject/Binder;->require(Ljava/lang/Class;)V

    .line 169
    return-void
.end method
