.class public Lcom/facebook/inject/MultiBinding;
.super Ljava/lang/Object;
.source "MultiBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/inject/MultiBinding$ArrayListSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mValues:Lcom/facebook/inject/MultiBinding$ArrayListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/MultiBinding$ArrayListSet",
            "<",
            "Lcom/google/inject/Key",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/facebook/inject/MultiBinding;, "Lcom/facebook/inject/MultiBinding<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/inject/MultiBinding;->mKey:Lcom/google/inject/Key;

    .line 18
    new-instance v0, Lcom/facebook/inject/MultiBinding$ArrayListSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/inject/MultiBinding$ArrayListSet;-><init>(Lcom/facebook/inject/MultiBinding$1;)V

    iput-object v0, p0, Lcom/facebook/inject/MultiBinding;->mValues:Lcom/facebook/inject/MultiBinding$ArrayListSet;

    .line 19
    return-void
.end method


# virtual methods
.method public add(Lcom/google/inject/Key;)Lcom/facebook/inject/MultiBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<+TT;>;)",
            "Lcom/facebook/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/facebook/inject/MultiBinding;, "Lcom/facebook/inject/MultiBinding<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/MultiBinding;->mValues:Lcom/facebook/inject/MultiBinding$ArrayListSet;

    invoke-virtual {v0, p1}, Lcom/facebook/inject/MultiBinding$ArrayListSet;->add(Ljava/lang/Object;)Z

    .line 35
    return-object p0
.end method

.method public add(Ljava/lang/Class;)Lcom/facebook/inject/MultiBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lcom/facebook/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/facebook/inject/MultiBinding;, "Lcom/facebook/inject/MultiBinding<TT;>;"
    .local p1, "other":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/inject/MultiBinding;->add(Lcom/google/inject/Key;)Lcom/facebook/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Class;Ljava/lang/Class;)Lcom/facebook/inject/MultiBinding;
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
            "Lcom/facebook/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/facebook/inject/MultiBinding;, "Lcom/facebook/inject/MultiBinding<TT;>;"
    .local p1, "other":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1, p2}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/inject/MultiBinding;->add(Lcom/google/inject/Key;)Lcom/facebook/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/facebook/inject/MultiBinding;, "Lcom/facebook/inject/MultiBinding<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/MultiBinding;->mKey:Lcom/google/inject/Key;

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/facebook/inject/MultiBinding;, "Lcom/facebook/inject/MultiBinding<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/MultiBinding;->mValues:Lcom/facebook/inject/MultiBinding$ArrayListSet;

    return-object v0
.end method
