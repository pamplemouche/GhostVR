.class public Lcom/facebook/quicklog/PointData;
.super Ljava/lang/Object;
.source "PointData.java"


# instance fields
.field private mIndex:I

.field private mKeyVals:[Ljava/lang/String;

.field private volatile mLocked:Z

.field private mTypes:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/quicklog/PointData;->mTypes:[I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    return-void
.end method

.method private ensureSize()V
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    iget-object v1, p0, Lcom/facebook/quicklog/PointData;->mTypes:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/facebook/quicklog/PointData;->mTypes:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/facebook/quicklog/PointData;->mTypes:[I

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 136
    iget-object v1, p0, Lcom/facebook/quicklog/PointData;->mTypes:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/quicklog/PointData;->mTypes:[I

    .line 137
    iget-object v1, p0, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    .line 139
    :cond_0
    return-void
.end method

.method public static singleStringOrNull(Ljava/lang/String;)Lcom/facebook/quicklog/PointData;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/quicklog/PointData;

    invoke-direct {v0}, Lcom/facebook/quicklog/PointData;-><init>()V

    const-string v1, "__key"

    invoke-virtual {v0, v1, p0}, Lcom/facebook/quicklog/PointData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/quicklog/PointData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/quicklog/PointData;->lock()Lcom/facebook/quicklog/PointData;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/quicklog/PointData;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/quicklog/PointData;->addData(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    return-object p0
.end method

.method addData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/facebook/quicklog/PointData;->mLocked:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to modify locked instance of PointData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/facebook/quicklog/PointData;->ensureSize()V

    .line 125
    iget v0, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    mul-int/lit8 v0, v0, 0x2

    .line 126
    add-int/lit8 v1, v0, 0x1

    .line 127
    iget-object v2, p0, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    aput-object p1, v2, v0

    .line 128
    iget-object v0, p0, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 129
    iget-object v0, p0, Lcom/facebook/quicklog/PointData;->mTypes:[I

    iget v1, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    aput p3, v0, v1

    .line 130
    iget v0, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    .line 131
    return-void
.end method

.method public ensureLocked()V
    .locals 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/facebook/quicklog/PointData;->mLocked:Z

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PointData should be locked before passing to the storage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 161
    instance-of v1, p1, Lcom/facebook/quicklog/PointData;

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    check-cast p1, Lcom/facebook/quicklog/PointData;

    .line 165
    iget v1, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    iget v2, p1, Lcom/facebook/quicklog/PointData;->mIndex:I

    if-ne v1, v2, :cond_0

    .line 168
    iget v1, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    mul-int/lit8 v2, v1, 0x2

    .line 169
    iget v3, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    move v1, v0

    .line 170
    :goto_1
    if-ge v1, v2, :cond_4

    .line 171
    iget-object v4, p0, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 172
    iget-object v5, p1, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 173
    if-nez v4, :cond_3

    .line 174
    if-nez v5, :cond_0

    .line 170
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_4
    move v1, v0

    .line 181
    :goto_2
    if-ge v1, v3, :cond_5

    .line 182
    iget-object v2, p0, Lcom/facebook/quicklog/PointData;->mTypes:[I

    aget v2, v2, v1

    .line 183
    iget-object v4, p1, Lcom/facebook/quicklog/PointData;->mTypes:[I

    aget v4, v4, v1

    .line 184
    if-ne v2, v4, :cond_0

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 188
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 193
    const/16 v0, 0x1f

    .line 194
    iget v2, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    mul-int/lit8 v3, v2, 0x2

    .line 195
    iget v4, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    move v2, v1

    .line 196
    :goto_0
    if-ge v2, v3, :cond_1

    .line 197
    iget-object v5, p0, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_0

    .line 198
    mul-int/lit8 v0, v0, 0x1f

    iget-object v5, p0, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    .line 196
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v6, v1

    move v1, v0

    move v0, v6

    .line 201
    :goto_1
    if-ge v0, v4, :cond_2

    .line 202
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/facebook/quicklog/PointData;->mTypes:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_2
    return v1
.end method

.method public lock()Lcom/facebook/quicklog/PointData;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/quicklog/PointData;->mLocked:Z

    .line 117
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 210
    iget v1, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    if-ne v1, v3, :cond_0

    .line 211
    iget-object v1, p0, Lcom/facebook/quicklog/PointData;->mTypes:[I

    aget v1, v1, v0

    if-ne v1, v3, :cond_0

    const-string v1, "__key"

    iget-object v2, p0, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    aget-object v0, v0, v3

    .line 222
    :goto_0
    return-object v0

    .line 216
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const/16 v1, 0x7b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v0

    .line 218
    :goto_1
    iget v3, p0, Lcom/facebook/quicklog/PointData;->mIndex:I

    if-ge v0, v3, :cond_1

    .line 219
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/quicklog/PointData;->mKeyVals:[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v0, v1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
