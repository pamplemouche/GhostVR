.class public Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;
.super Ljava/lang/Object;
.source "ScopedBindingBuilderImpl.java"

# interfaces
.implements Lcom/facebook/inject/binder/ScopedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/binder/ScopedBindingBuilder;"
    }
.end annotation


# instance fields
.field protected final mBinding:Lcom/facebook/inject/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Binding",
            "<TT;>;"
        }
    .end annotation
.end field


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
    .line 15
    .local p0, "this":Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;, "Lcom/facebook/inject/binder/ScopedBindingBuilderImpl<TT;>;"
    .local p1, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    .line 17
    return-void
.end method


# virtual methods
.method public asContextLocal()V
    .locals 2

    .prologue
    .line 26
    .local p0, "this":Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;, "Lcom/facebook/inject/binder/ScopedBindingBuilderImpl<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    const-class v1, Lcom/facebook/inject/ContextScoped;

    invoke-virtual {v0, v1}, Lcom/facebook/inject/Binding;->setScope(Ljava/lang/Class;)V

    .line 27
    return-void
.end method

.method public asSingleton()V
    .locals 2

    .prologue
    .line 21
    .local p0, "this":Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;, "Lcom/facebook/inject/binder/ScopedBindingBuilderImpl<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    const-class v1, Ljavax/inject/Singleton;

    invoke-virtual {v0, v1}, Lcom/facebook/inject/Binding;->setScope(Ljava/lang/Class;)V

    .line 22
    return-void
.end method

.method public in(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;, "Lcom/facebook/inject/binder/ScopedBindingBuilderImpl<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    invoke-virtual {v0, p1}, Lcom/facebook/inject/Binding;->setScope(Ljava/lang/Class;)V

    .line 32
    return-void
.end method
