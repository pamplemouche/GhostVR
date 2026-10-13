.class Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;
.super Ljava/lang/Object;
.source "BatchDirectoryStructureIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mArrayLength:I

.field private mIndex:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;->mArray:[Ljava/lang/Object;

    .line 352
    array-length p1, p1

    iput p1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;->mArrayLength:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 357
    iget v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;->mIndex:I

    iget v1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;->mArrayLength:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;->mArray:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;->mIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 367
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
