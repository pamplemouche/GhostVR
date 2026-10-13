.class public Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;
.super Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;
.source "AnnotatedBindingBuilderImpl.java"

# interfaces
.implements Lcom/facebook/inject/binder/AnnotatedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/inject/binder/LinkedBindingBuilderImpl",
        "<TT;>;",
        "Lcom/facebook/inject/binder/AnnotatedBindingBuilder",
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
    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;-><init>(Lcom/facebook/inject/Binding;)V

    .line 15
    return-void
.end method
