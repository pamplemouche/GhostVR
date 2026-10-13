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
    .local p0, "this":Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;, "Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl<TT;>;"
    .local p1, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    invoke-direct {p0, p1}, Lcom/facebook/inject/binder/LinkedBindingBuilderImpl;-><init>(Lcom/facebook/inject/Binding;)V

    .line 15
    return-void
.end method


# virtual methods
.method public annotatedWith(Ljava/lang/Class;)Lcom/facebook/inject/binder/LinkedBindingBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/facebook/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;, "Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    iget-object v1, p0, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/inject/Binding;->setKey(Lcom/google/inject/Key;)V

    .line 20
    return-object p0
.end method

.method public annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/facebook/inject/binder/LinkedBindingBuilder;
    .locals 2
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/facebook/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;, "Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    iget-object v1, p0, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;->mBinding:Lcom/facebook/inject/Binding;

    invoke-virtual {v1}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/inject/Binding;->setKey(Lcom/google/inject/Key;)V

    .line 26
    return-object p0
.end method
