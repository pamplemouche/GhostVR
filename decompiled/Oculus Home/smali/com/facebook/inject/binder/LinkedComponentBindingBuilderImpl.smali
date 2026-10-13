.class public Lcom/facebook/inject/binder/LinkedComponentBindingBuilderImpl;
.super Ljava/lang/Object;
.source "LinkedComponentBindingBuilderImpl.java"

# interfaces
.implements Lcom/facebook/inject/binder/LinkedComponentBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/binder/LinkedComponentBindingBuilder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mBinding:Lcom/facebook/inject/ComponentBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/ComponentBinding",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/inject/ComponentBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/ComponentBinding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/facebook/inject/binder/LinkedComponentBindingBuilderImpl;, "Lcom/facebook/inject/binder/LinkedComponentBindingBuilderImpl<TT;>;"
    .local p1, "binding":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/inject/binder/LinkedComponentBindingBuilderImpl;->mBinding:Lcom/facebook/inject/ComponentBinding;

    .line 15
    return-void
.end method


# virtual methods
.method public toProvider(Lcom/facebook/inject/ComponentProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/ComponentProvider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/facebook/inject/binder/LinkedComponentBindingBuilderImpl;, "Lcom/facebook/inject/binder/LinkedComponentBindingBuilderImpl<TT;>;"
    .local p1, "provider":Lcom/facebook/inject/ComponentProvider;, "Lcom/facebook/inject/ComponentProvider<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/binder/LinkedComponentBindingBuilderImpl;->mBinding:Lcom/facebook/inject/ComponentBinding;

    invoke-virtual {v0, p1}, Lcom/facebook/inject/ComponentBinding;->setProvider(Lcom/facebook/inject/ComponentProvider;)V

    .line 20
    return-void
.end method
