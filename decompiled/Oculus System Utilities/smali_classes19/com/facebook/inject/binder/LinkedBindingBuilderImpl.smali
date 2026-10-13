.class public Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;
.super Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;
.source "LinkedBindingBuilderImpl.java"

# interfaces
.implements Lcom/facebook/inject/binder/LinkedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/inject/binder/ScopedBindingBuilderImpl",
        "<TT;>;",
        "Lcom/facebook/inject/binder/LinkedBindingBuilder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/Binding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/Binding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;, "Lcom/facebook/inject/binder/LinkedBindingBuilderImpl<TT;>;"
    .local p1, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    invoke-direct {p0, p1}, Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;-><init>(Lcom/facebook/inject/Binding;)V

    .line 19
    return-void
.end method


# virtual methods
.method public to(Lcom/google/inject/Key;)Lcom/facebook/inject/binder/ScopedBindingBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<+TT;>;)",
            "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;, "Lcom/facebook/inject/binder/LinkedBindingBuilderImpl<TT;>;"
    .local p1, "targetKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    new-instance v1, Lcom/facebook/inject/RedirectProvider;

    invoke-direct {v1, p1}, Lcom/facebook/inject/RedirectProvider;-><init>(Lcom/google/inject/Key;)V

    invoke-virtual {v0, v1}, Lcom/facebook/inject/Binding;->setProvider(Ljavax/inject/Provider;)V

    .line 42
    return-object p0
.end method

.method public to(Lcom/google/inject/TypeLiteral;)Lcom/facebook/inject/binder/ScopedBindingBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<+TT;>;)",
            "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;, "Lcom/facebook/inject/binder/LinkedBindingBuilderImpl<TT;>;"
    .local p1, "implementation":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<+TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    new-instance v1, Lcom/facebook/inject/RedirectProvider;

    invoke-static {p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/inject/RedirectProvider;-><init>(Lcom/google/inject/Key;)V

    invoke-virtual {v0, v1}, Lcom/facebook/inject/Binding;->setProvider(Ljavax/inject/Provider;)V

    .line 36
    return-object p0
.end method

.method public to(Ljava/lang/Class;)Lcom/facebook/inject/binder/ScopedBindingBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;, "Lcom/facebook/inject/binder/LinkedBindingBuilderImpl<TT;>;"
    .local p1, "implementation":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    new-instance v1, Lcom/facebook/inject/RedirectProvider;

    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/inject/RedirectProvider;-><init>(Lcom/google/inject/Key;)V

    invoke-virtual {v0, v1}, Lcom/facebook/inject/Binding;->setProvider(Ljavax/inject/Provider;)V

    .line 24
    return-object p0
.end method

.method public to(Ljava/lang/Class;Ljava/lang/Class;)Lcom/facebook/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;, "Lcom/facebook/inject/binder/LinkedBindingBuilderImpl<TT;>;"
    .local p1, "implementation":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1, p2}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;->to(Lcom/google/inject/Key;)Lcom/facebook/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toInstance(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;, "Lcom/facebook/inject/binder/LinkedBindingBuilderImpl<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    new-instance v1, Lcom/facebook/inject/InstanceProvider;

    invoke-direct {v1, p1}, Lcom/facebook/inject/InstanceProvider;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/facebook/inject/Binding;->setProvider(Ljavax/inject/Provider;)V

    .line 48
    return-void
.end method

.method public toProvider(Ljavax/inject/Provider;)Lcom/facebook/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<+TT;>;)",
            "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;, "Lcom/facebook/inject/binder/LinkedBindingBuilderImpl<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    invoke-virtual {v0, p1}, Lcom/facebook/inject/Binding;->setProvider(Ljavax/inject/Provider;)V

    .line 53
    return-object p0
.end method
