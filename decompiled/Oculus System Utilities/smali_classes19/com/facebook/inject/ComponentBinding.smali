.class public Lcom/facebook/inject/ComponentBinding;
.super Ljava/lang/Object;
.source "ComponentBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDeclaringModule:Ljava/lang/Class;

.field private mKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mProvider:Lcom/facebook/inject/ComponentProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/ComponentProvider",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 23
    .local p0, "this":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/ComponentBinding;->mKey:Lcom/google/inject/Key;

    return-object v0
.end method

.method public getProvider()Lcom/facebook/inject/ComponentProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/inject/ComponentProvider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/ComponentBinding;->mProvider:Lcom/facebook/inject/ComponentProvider;

    return-object v0
.end method

.method public setKey(Lcom/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iput-object p1, p0, Lcom/facebook/inject/ComponentBinding;->mKey:Lcom/google/inject/Key;

    .line 28
    return-void
.end method

.method public setModule(Ljava/lang/Class;)V
    .locals 0
    .param p1, "declaringModule"    # Ljava/lang/Class;

    .prologue
    .line 19
    .local p0, "this":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    iput-object p1, p0, Lcom/facebook/inject/ComponentBinding;->mDeclaringModule:Ljava/lang/Class;

    .line 20
    return-void
.end method

.method public setProvider(Lcom/facebook/inject/ComponentProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/ComponentProvider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    .local p1, "provider":Lcom/facebook/inject/ComponentProvider;, "Lcom/facebook/inject/ComponentProvider<TT;>;"
    iput-object p1, p0, Lcom/facebook/inject/ComponentBinding;->mProvider:Lcom/facebook/inject/ComponentProvider;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    .local p0, "this":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    const-string v0, "%s{declaringModuleName = %s, key = $s, provider = %s}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/inject/ComponentBinding;->mDeclaringModule:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/inject/ComponentBinding;->mKey:Lcom/google/inject/Key;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/inject/ComponentBinding;->mProvider:Lcom/facebook/inject/ComponentProvider;

    aput-object v3, v1, v2

    .line 41
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
