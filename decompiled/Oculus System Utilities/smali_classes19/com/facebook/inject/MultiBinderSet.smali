.class public final Lcom/facebook/inject/MultiBinderSet;
.super Ljava/util/AbstractSet;
.source "MultiBinderSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/inject/MultiBinderSet$IndexedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ITEM_UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private mFirstUninitializedIndex:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mItems"
    .end annotation
.end field

.field private final mInjector:Lcom/facebook/inject/Injector;

.field private final mItems:[Ljava/lang/Object;

.field private final mProvider:Lcom/facebook/inject/MultiBindIndexedProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/MultiBindIndexedProvider",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/inject/MultiBinderSet;->ITEM_UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/Injector;Lcom/facebook/inject/MultiBindIndexedProvider;)V
    .locals 1
    .param p1, "injector"    # Lcom/facebook/inject/Injector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/Injector;",
            "Lcom/facebook/inject/MultiBindIndexedProvider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/facebook/inject/MultiBinderSet;, "Lcom/facebook/inject/MultiBinderSet<TT;>;"
    .local p2, "provider":Lcom/facebook/inject/MultiBindIndexedProvider;, "Lcom/facebook/inject/MultiBindIndexedProvider<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/inject/MultiBinderSet;->mInjector:Lcom/facebook/inject/Injector;

    .line 41
    iput-object p2, p0, Lcom/facebook/inject/MultiBinderSet;->mProvider:Lcom/facebook/inject/MultiBindIndexedProvider;

    .line 42
    invoke-interface {p2}, Lcom/facebook/inject/MultiBindIndexedProvider;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/inject/MultiBinderSet;->mItems:[Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/inject/MultiBinderSet;->mFirstUninitializedIndex:I

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/inject/MultiBinderSet;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/inject/MultiBinderSet;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet;->mItems:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/inject/MultiBinderSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/facebook/inject/MultiBinderSet;

    .prologue
    .line 28
    iget v0, p0, Lcom/facebook/inject/MultiBinderSet;->mFirstUninitializedIndex:I

    return v0
.end method

.method static synthetic access$204(Lcom/facebook/inject/MultiBinderSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/facebook/inject/MultiBinderSet;

    .prologue
    .line 28
    iget v0, p0, Lcom/facebook/inject/MultiBinderSet;->mFirstUninitializedIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/inject/MultiBinderSet;->mFirstUninitializedIndex:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/inject/MultiBinderSet;->ITEM_UNINITIALIZED:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/inject/MultiBinderSet;)Lcom/facebook/inject/Injector;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/inject/MultiBinderSet;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet;->mInjector:Lcom/facebook/inject/Injector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/inject/MultiBinderSet;)Lcom/facebook/inject/MultiBindIndexedProvider;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/inject/MultiBinderSet;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet;->mProvider:Lcom/facebook/inject/MultiBindIndexedProvider;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/facebook/inject/MultiBinderSet;, "Lcom/facebook/inject/MultiBinderSet<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 57
    .local p0, "this":Lcom/facebook/inject/MultiBinderSet;, "Lcom/facebook/inject/MultiBinderSet<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/inject/MultiBinderSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_1

    if-nez v0, :cond_0

    .line 59
    :goto_0
    const/4 v1, 0x1

    .line 63
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :goto_1
    return v1

    .line 58
    .restart local v0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 63
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/facebook/inject/MultiBinderSet;, "Lcom/facebook/inject/MultiBinderSet<TT;>;"
    new-instance v0, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/inject/MultiBinderSet$IndexedIterator;-><init>(Lcom/facebook/inject/MultiBinderSet;Lcom/facebook/inject/MultiBinderSet$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 68
    .local p0, "this":Lcom/facebook/inject/MultiBinderSet;, "Lcom/facebook/inject/MultiBinderSet<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/facebook/inject/MultiBinderSet;, "Lcom/facebook/inject/MultiBinderSet<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderSet;->mItems:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
