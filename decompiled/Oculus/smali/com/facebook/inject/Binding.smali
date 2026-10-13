.class public Lcom/facebook/inject/Binding;
.super Ljava/lang/Object;
.source "Binding.java"


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

.field private mFlags:B

.field private mKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOriginalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private mProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private mScopeAnnotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFlag(B)Z
    .locals 1

    .prologue
    .line 62
    iget-byte v0, p0, Lcom/facebook/inject/Binding;->mFlags:B

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFlag(BZ)V
    .locals 2

    .prologue
    .line 66
    if-eqz p2, :cond_0

    .line 67
    iget-byte v0, p0, Lcom/facebook/inject/Binding;->mFlags:B

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/facebook/inject/Binding;->mFlags:B

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-byte v0, p0, Lcom/facebook/inject/Binding;->mFlags:B

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/facebook/inject/Binding;->mFlags:B

    goto :goto_0
.end method


# virtual methods
.method public getDeclaringModule()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/inject/Binding;->mDeclaringModule:Ljava/lang/Class;

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
    .line 30
    iget-object v0, p0, Lcom/facebook/inject/Binding;->mKey:Lcom/google/inject/Key;

    return-object v0
.end method

.method public getProvider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/inject/Binding;->mProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method public getScope()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/inject/Binding;->mScopeAnnotation:Ljava/lang/Class;

    return-object v0
.end method

.method public isDefaultBinding()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/inject/Binding;->getFlag(B)Z

    move-result v0

    return v0
.end method

.method public setDefaultBinding(Z)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/facebook/inject/Binding;->setFlag(BZ)V

    .line 59
    return-void
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
    .line 34
    iput-object p1, p0, Lcom/facebook/inject/Binding;->mKey:Lcom/google/inject/Key;

    .line 35
    return-void
.end method

.method public setModule(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/facebook/inject/Binding;->mDeclaringModule:Ljava/lang/Class;

    .line 27
    return-void
.end method

.method public setOriginalProvider(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/inject/Binding;->mOriginalProvider:Ljavax/inject/Provider;

    .line 79
    return-void
.end method

.method public setProvider(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lcom/facebook/inject/Binding;->mProvider:Ljavax/inject/Provider;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    const-string v0, "%s{declaringModuleName = %s, key = %s, provider = %s, scope = %s, default = %s}"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/inject/Binding;->mDeclaringModule:Ljava/lang/Class;

    .line 87
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/inject/Binding;->mKey:Lcom/google/inject/Key;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/inject/Binding;->mProvider:Ljavax/inject/Provider;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/facebook/inject/Binding;->mScopeAnnotation:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 91
    invoke-virtual {p0}, Lcom/facebook/inject/Binding;->isDefaultBinding()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 84
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
