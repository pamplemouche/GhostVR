.class Lcom/facebook/inject/MultiBinder;
.super Ljava/lang/Object;
.source "MultiBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CLASS_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInjector:Lcom/facebook/inject/FbInjector;

.field private final mKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/Key",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/inject/MultiBinder$1;

    invoke-direct {v0}, Lcom/facebook/inject/MultiBinder$1;-><init>()V

    sput-object v0, Lcom/facebook/inject/MultiBinder;->CLASS_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/facebook/inject/FbInjector;Lcom/google/inject/Key;)V
    .locals 1
    .param p1, "injector"    # Lcom/facebook/inject/FbInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/FbInjector;",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/facebook/inject/MultiBinder;, "Lcom/facebook/inject/MultiBinder<TT;>;"
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/inject/MultiBinder;->mInjector:Lcom/facebook/inject/FbInjector;

    .line 38
    iput-object p2, p0, Lcom/facebook/inject/MultiBinder;->mKey:Lcom/google/inject/Key;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/inject/MultiBinder;->mValues:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method add(Lcom/google/inject/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/facebook/inject/MultiBinder;, "Lcom/facebook/inject/MultiBinder<TT;>;"
    .local p1, "other":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/facebook/inject/MultiBinder;->mValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 44
    iget-object v2, p0, Lcom/facebook/inject/MultiBinder;->mValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/Key;

    invoke-virtual {v2, p1}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    :goto_1
    return-void

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/facebook/inject/MultiBinder;->mValues:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/inject/Key",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/facebook/inject/MultiBinder;, "Lcom/facebook/inject/MultiBinder<TT;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/inject/Key<+TT;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 53
    .local v0, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+TT;>;"
    invoke-virtual {p0, v0}, Lcom/facebook/inject/MultiBinder;->add(Lcom/google/inject/Key;)V

    goto :goto_0

    .line 55
    .end local v0    # "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/facebook/inject/MultiBinder;->mValues:Ljava/util/List;

    sget-object v2, Lcom/facebook/inject/MultiBinder;->CLASS_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 56
    return-void
.end method

.method getBoundKey()Lcom/google/inject/Key;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<+",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/facebook/inject/MultiBinder;, "Lcom/facebook/inject/MultiBinder<TT;>;"
    new-instance v1, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;

    const/4 v2, 0x0

    const-class v3, Ljava/util/Set;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/reflect/Type;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/inject/MultiBinder;->mKey:Lcom/google/inject/Key;

    .line 69
    invoke-virtual {v6}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 71
    .local v1, "boundType":Ljava/lang/reflect/ParameterizedType;
    iget-object v2, p0, Lcom/facebook/inject/MultiBinder;->mKey:Lcom/google/inject/Key;

    invoke-virtual {v2}, Lcom/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/facebook/inject/MultiBinder;->mKey:Lcom/google/inject/Key;

    invoke-virtual {v2}, Lcom/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/inject/Key;->get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v0

    .line 79
    .local v0, "boundKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljava/util/Set<TT;>;>;"
    :goto_0
    return-object v0

    .line 73
    .end local v0    # "boundKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljava/util/Set<TT;>;>;"
    :cond_0
    iget-object v2, p0, Lcom/facebook/inject/MultiBinder;->mKey:Lcom/google/inject/Key;

    invoke-virtual {v2}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/facebook/inject/MultiBinder;->mKey:Lcom/google/inject/Key;

    invoke-virtual {v2}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/inject/Key;->get(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    .restart local v0    # "boundKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljava/util/Set<TT;>;>;"
    goto :goto_0

    .line 76
    .end local v0    # "boundKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljava/util/Set<TT;>;>;"
    :cond_1
    invoke-static {v1}, Lcom/google/inject/Key;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;

    move-result-object v0

    .restart local v0    # "boundKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljava/util/Set<TT;>;>;"
    goto :goto_0
.end method

.method getKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/facebook/inject/MultiBinder;, "Lcom/facebook/inject/MultiBinder<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/MultiBinder;->mKey:Lcom/google/inject/Key;

    return-object v0
.end method

.method getProvider()Ljavax/inject/Provider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/facebook/inject/MultiBinder;, "Lcom/facebook/inject/MultiBinder<TT;>;"
    new-instance v0, Lcom/facebook/inject/MultiBinderProvider;

    iget-object v1, p0, Lcom/facebook/inject/MultiBinder;->mInjector:Lcom/facebook/inject/FbInjector;

    iget-object v2, p0, Lcom/facebook/inject/MultiBinder;->mValues:Ljava/util/List;

    iget-object v3, p0, Lcom/facebook/inject/MultiBinder;->mKey:Lcom/google/inject/Key;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/inject/MultiBinderProvider;-><init>(Lcom/facebook/inject/FbInjector;Ljava/util/List;Lcom/google/inject/Key;)V

    return-object v0
.end method
