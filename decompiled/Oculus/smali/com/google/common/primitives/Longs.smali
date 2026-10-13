.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lcom/google/common/primitives/Longs;->createAsciiDigits()[B

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/Longs;->asciiDigits:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAsciiDigits()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 307
    const/16 v1, 0x80

    new-array v2, v1, [B

    .line 308
    const/4 v1, -0x1

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    move v1, v0

    .line 309
    :goto_0
    const/16 v3, 0x9

    if-gt v1, v3, :cond_0

    .line 310
    add-int/lit8 v3, v1, 0x30

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_0
    :goto_1
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 313
    add-int/lit8 v1, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 314
    add-int/lit8 v1, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 316
    :cond_1
    return-object v2
.end method

.method public static varargs min([J)J
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 198
    aget-wide v2, p0, v2

    .line 199
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 200
    aget-wide v4, p0, v1

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 201
    aget-wide v2, p0, v1

    .line 199
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 197
    goto :goto_0

    .line 204
    :cond_2
    return-wide v2
.end method
