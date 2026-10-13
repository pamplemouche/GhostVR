.class public final Lcom/facebook/inject/UltralightMultiBind;
.super Ljava/util/AbstractCollection;
.source "UltralightMultiBind.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TT;>;",
        "Ljava/util/Set",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ITEM_UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private final mCollectionIndexToBindingId:[I

.field private mFirstUninitializedIndex:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mItems"
    .end annotation
.end field

.field private final mInjector:Lcom/facebook/inject/InjectorLike;

.field private final mItems:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/inject/UltralightMultiBind;->ITEM_UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/InjectorLike;[I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 44
    invoke-interface {p1}, Lcom/facebook/inject/InjectorLike;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/InjectorLike;

    iput-object v0, p0, Lcom/facebook/inject/UltralightMultiBind;->mInjector:Lcom/facebook/inject/InjectorLike;

    .line 45
    iput-object p2, p0, Lcom/facebook/inject/UltralightMultiBind;->mCollectionIndexToBindingId:[I

    .line 46
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/inject/UltralightMultiBind;->mItems:[Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/inject/UltralightMultiBind;->mFirstUninitializedIndex:I

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/inject/UltralightMultiBind;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind;->mItems:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/inject/UltralightMultiBind;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/facebook/inject/UltralightMultiBind;->mFirstUninitializedIndex:I

    return v0
.end method

.method static synthetic access$204(Lcom/facebook/inject/UltralightMultiBind;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/facebook/inject/UltralightMultiBind;->mFirstUninitializedIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/inject/UltralightMultiBind;->mFirstUninitializedIndex:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/facebook/inject/UltralightMultiBind;->ITEM_UNINITIALIZED:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/inject/UltralightMultiBind;)[I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind;->mCollectionIndexToBindingId:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/inject/UltralightMultiBind;)Lcom/facebook/inject/InjectorLike;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind;->mInjector:Lcom/facebook/inject/InjectorLike;

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
    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/facebook/inject/UltralightMultiBind;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 62
    if-nez p1, :cond_1

    if-nez v1, :cond_0

    .line 63
    :goto_0
    const/4 v0, 0x1

    .line 67
    :goto_1
    return v0

    .line 62
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 67
    :cond_2
    const/4 v0, 0x0

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
    .line 77
    new-instance v0, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/inject/UltralightMultiBind$IndexedIterator;-><init>(Lcom/facebook/inject/UltralightMultiBind;Lcom/facebook/inject/UltralightMultiBind$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/inject/UltralightMultiBind;->mItems:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
