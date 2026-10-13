.class public Lcom/facebook/quicklog/IntermediatePoints;
.super Ljava/lang/Object;
.source "IntermediatePoints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/quicklog/IntermediatePoints$Visitor;
    }
.end annotation


# instance fields
.field private mData:[Lcom/facebook/quicklog/PointData;

.field private mDuplicates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mHashOfStrings:I

.field private mIndex:I

.field private mLevels:[I

.field private mNames:[Ljava/lang/String;

.field private mStopMetadata:[Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/SparseArray",
            "<*>;"
        }
    .end annotation
.end field

.field private mTimestamps:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mTimestamps:[J

    .line 32
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mNames:[Ljava/lang/String;

    .line 33
    new-array v0, v1, [Lcom/facebook/quicklog/PointData;

    iput-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mData:[Lcom/facebook/quicklog/PointData;

    .line 34
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mLevels:[I

    .line 35
    new-array v0, v1, [Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mStopMetadata:[Landroid/util/SparseArray;

    .line 36
    return-void
.end method

.method private grow(I)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mTimestamps:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mTimestamps:[J

    .line 134
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mNames:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mNames:[Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mData:[Lcom/facebook/quicklog/PointData;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/quicklog/PointData;

    iput-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mData:[Lcom/facebook/quicklog/PointData;

    .line 136
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mLevels:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mLevels:[I

    .line 137
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mStopMetadata:[Landroid/util/SparseArray;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mStopMetadata:[Landroid/util/SparseArray;

    .line 138
    return-void
.end method

.method private keyIndex(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 87
    iget v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mIndex:I

    .line 88
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 89
    iget-object v2, p0, Lcom/facebook/quicklog/IntermediatePoints;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    :goto_1
    return v0

    .line 88
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public acceptForAll(Lcom/facebook/quicklog/IntermediatePoints$Visitor;)V
    .locals 8

    .prologue
    .line 95
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mIndex:I

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mTimestamps:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mLevels:[I

    aget v4, v1, v0

    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mNames:[Ljava/lang/String;

    aget-object v5, v1, v0

    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mData:[Lcom/facebook/quicklog/PointData;

    aget-object v6, v1, v0

    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mStopMetadata:[Landroid/util/SparseArray;

    aget-object v7, v1, v0

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/quicklog/IntermediatePoints$Visitor;->visit(JILjava/lang/String;Lcom/facebook/quicklog/PointData;Landroid/util/SparseArray;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public add(JILjava/lang/String;Lcom/facebook/quicklog/PointData;Landroid/util/SparseArray;)V
    .locals 3
    .param p3    # I
        .annotation build Lcom/facebook/quicklog/EventLevel;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/quicklog/PointData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Lcom/facebook/quicklog/PointData;",
            "Landroid/util/SparseArray",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 57
    iget v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mHashOfStrings:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 59
    invoke-direct {p0, p4}, Lcom/facebook/quicklog/IntermediatePoints;->keyIndex(Ljava/lang/String;)I

    move-result v0

    .line 60
    if-ltz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mDuplicates:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mDuplicates:Ljava/util/ArrayList;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mDuplicates:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :goto_0
    return-void

    .line 67
    :cond_1
    iget v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mIndex:I

    .line 73
    :goto_1
    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mTimestamps:[J

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 74
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/facebook/quicklog/IntermediatePoints;->grow(I)V

    .line 76
    :cond_2
    if-eqz p5, :cond_3

    .line 77
    invoke-virtual {p5}, Lcom/facebook/quicklog/PointData;->ensureLocked()V

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mTimestamps:[J

    aput-wide p1, v1, v0

    .line 80
    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mNames:[Ljava/lang/String;

    aput-object p4, v1, v0

    .line 81
    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mData:[Lcom/facebook/quicklog/PointData;

    aput-object p5, v1, v0

    .line 82
    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mLevels:[I

    aput p3, v1, v0

    .line 83
    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mStopMetadata:[Landroid/util/SparseArray;

    aput-object p6, v1, v0

    goto :goto_0

    .line 70
    :cond_4
    iget v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mIndex:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/facebook/quicklog/IntermediatePoints;->mIndex:I

    .line 71
    iget v2, p0, Lcom/facebook/quicklog/IntermediatePoints;->mHashOfStrings:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mHashOfStrings:I

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    iput v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mIndex:I

    .line 40
    iput v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mHashOfStrings:I

    .line 41
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mNames:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mData:[Lcom/facebook/quicklog/PointData;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mStopMetadata:[Landroid/util/SparseArray;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mDuplicates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mDuplicates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    :cond_0
    return-void
.end method

.method public findPointIndex(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mIndex:I

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :goto_1
    return v0

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getAllNames()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    iget v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mIndex:I

    new-array v0, v0, [Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/facebook/quicklog/IntermediatePoints;->mNames:[Ljava/lang/String;

    iget v2, p0, Lcom/facebook/quicklog/IntermediatePoints;->mIndex:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-object v0
.end method

.method public getStopMetadata(I)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mStopMetadata:[Landroid/util/SparseArray;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTimestamp(I)J
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/quicklog/IntermediatePoints;->mTimestamps:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
