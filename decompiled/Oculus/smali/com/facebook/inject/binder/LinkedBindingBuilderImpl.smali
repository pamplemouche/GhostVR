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
    invoke-direct {p0, p1}, Lcom/facebook/inject/binder/ScopedBindingBuilderImpl;-><init>(Lcom/facebook/inject/Binding;)V

    .line 19
    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    invoke-virtual {v0, p1}, Lcom/facebook/inject/Binding;->setProvider(Ljavax/inject/Provider;)V

    .line 53
    return-object p0
.end method
