.class public Lcom/facebook/crudolib/text/CharArrayScanner;
.super Ljava/lang/Object;
.source "CharArrayScanner.java"


# static fields
.field private static final WHITESPACE_CHARS:[C


# instance fields
.field private mBoundaryOffset:I

.field private mCurrentOffset:I

.field private mData:[C
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDelimiterSet:Z

.field private mDelimiters:[C

.field private mSingleCharDelimiter:[C
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/crudolib/text/CharArrayScanner;->WHITESPACE_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x20s
        0x9s
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isWhitespace(C)Z
    .locals 5

    .line 145
    sget-object v0, Lcom/facebook/crudolib/text/CharArrayScanner;->WHITESPACE_CHARS:[C

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v0, v3

    if-ne p0, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private throwIfDelimiterNotSet()V
    .locals 2

    .line 73
    iget-boolean v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mDelimiterSet:Z

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call useDelimiter first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfNotReset()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mData:[C

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call reset first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public advance()I
    .locals 4

    .line 154
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfNotReset()V

    .line 155
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfDelimiterNotSet()V

    .line 156
    iget-object v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mData:[C

    .line 157
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iget v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    iget v2, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mBoundaryOffset:I

    iget-object v3, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mDelimiters:[C

    .line 156
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/crudolib/text/CharArrays;->indexOf([CII[C)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 162
    iget v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mBoundaryOffset:I

    iget v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    sub-int v1, v0, v1

    .line 163
    iput v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    return v1

    .line 166
    :cond_0
    iget v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    sub-int v1, v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 167
    iput v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    return v1
.end method

.method public countComponents()I
    .locals 2

    .line 173
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfNotReset()V

    .line 174
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfDelimiterNotSet()V

    const/4 v0, 0x0

    .line 177
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 179
    invoke-virtual {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->skip()V

    goto :goto_0

    :cond_0
    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfNotReset()V

    .line 80
    iget v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    iget v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mBoundaryOffset:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextInt()I
    .locals 4

    .line 101
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfNotReset()V

    .line 102
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfDelimiterNotSet()V

    .line 103
    iget v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    .line 104
    invoke-virtual {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->advance()I

    move-result v1

    .line 105
    iget-object v2, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mData:[C

    .line 106
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    add-int/2addr v1, v0

    const/16 v3, 0xa

    .line 105
    invoke-static {v2, v0, v1, v3}, Lcom/facebook/crudolib/text/CharArrays;->parseInt([CIII)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 4

    .line 114
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfNotReset()V

    .line 115
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfDelimiterNotSet()V

    .line 116
    iget v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    .line 117
    invoke-virtual {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->advance()I

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mData:[C

    .line 119
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    add-int/2addr v1, v0

    const/16 v3, 0xa

    .line 118
    invoke-static {v2, v0, v1, v3}, Lcom/facebook/crudolib/text/CharArrays;->parseLong([CIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextString(Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
    .locals 3

    .line 84
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfNotReset()V

    .line 85
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfDelimiterNotSet()V

    .line 86
    iget v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    .line 87
    invoke-virtual {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->advance()I

    move-result v1

    .line 88
    iget-object v2, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mData:[C

    invoke-static {v2, v0, p1, v1}, Lcom/facebook/crudolib/text/CharArrayBuffers;->copy([CILandroid/database/CharArrayBuffer;I)V

    return-object p1
.end method

.method public nextString()Ljava/lang/String;
    .locals 4

    .line 93
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfNotReset()V

    .line 94
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfDelimiterNotSet()V

    .line 95
    iget v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    .line 96
    invoke-virtual {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->advance()I

    move-result v1

    .line 97
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mData:[C

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public reset(Landroid/database/CharArrayBuffer;)Lcom/facebook/crudolib/text/CharArrayScanner;
    .locals 2

    .line 29
    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    iget p1, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/crudolib/text/CharArrayScanner;->reset([CII)Lcom/facebook/crudolib/text/CharArrayScanner;

    move-result-object p1

    return-object p1
.end method

.method public reset([CII)Lcom/facebook/crudolib/text/CharArrayScanner;
    .locals 3

    if-ltz p2, :cond_0

    add-int v0, p2, p3

    .line 33
    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mData:[C

    .line 38
    iput p2, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    .line 39
    iput v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mBoundaryOffset:I

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mDelimiterSet:Z

    return-object p0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; offset="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; length="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfNotReset()V

    .line 128
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfDelimiterNotSet()V

    .line 129
    invoke-virtual {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->advance()I

    return-void
.end method

.method public skipWhitespace()I
    .locals 3

    .line 133
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfNotReset()V

    .line 134
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfDelimiterNotSet()V

    const/4 v0, 0x0

    .line 136
    :goto_0
    iget v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    iget v2, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mBoundaryOffset:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mData:[C

    .line 137
    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iget v2, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    aget-char v1, v1, v2

    invoke-static {v1}, Lcom/facebook/crudolib/text/CharArrayScanner;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharArrayScanner{mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mData:[C

    .line 188
    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mCurrentOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBoundaryOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mBoundaryOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDelimiters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mDelimiters:[C

    .line 191
    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDelimiterSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mDelimiterSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDelimiter(C)Lcom/facebook/crudolib/text/CharArrayScanner;
    .locals 3

    .line 56
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfNotReset()V

    .line 57
    iget-object v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mSingleCharDelimiter:[C

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 58
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mSingleCharDelimiter:[C

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mSingleCharDelimiter:[C

    const/4 v2, 0x0

    aput-char p1, v0, v2

    .line 61
    iput-object v0, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mDelimiters:[C

    .line 62
    iput-boolean v1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mDelimiterSet:Z

    return-object p0
.end method

.method public useDelimiter([C)Lcom/facebook/crudolib/text/CharArrayScanner;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayScanner;->throwIfNotReset()V

    .line 50
    iput-object p1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mDelimiters:[C

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/facebook/crudolib/text/CharArrayScanner;->mDelimiterSet:Z

    return-object p0
.end method

.method public useWhiteSpaceAsDelimiters()Lcom/facebook/crudolib/text/CharArrayScanner;
    .locals 1

    .line 45
    sget-object v0, Lcom/facebook/crudolib/text/CharArrayScanner;->WHITESPACE_CHARS:[C

    invoke-virtual {p0, v0}, Lcom/facebook/crudolib/text/CharArrayScanner;->useDelimiter([C)Lcom/facebook/crudolib/text/CharArrayScanner;

    move-result-object v0

    return-object v0
.end method
