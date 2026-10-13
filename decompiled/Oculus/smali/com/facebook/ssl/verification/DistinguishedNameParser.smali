.class final Lcom/facebook/ssl/verification/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    .line 50
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    .line 51
    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 189
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    .line 190
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    .line 192
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_1

    .line 194
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    iget v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 221
    :goto_1
    return-object v0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 225
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 226
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 202
    :sswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    iget v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 205
    :sswitch_1
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcom/facebook/ssl/verification/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 206
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 211
    :sswitch_2
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->cur:I

    .line 213
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 214
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    aput-char v4, v0, v1

    .line 216
    :goto_2
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_2

    .line 217
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    aput-char v4, v0, v1

    .line 216
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 219
    :cond_2
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 221
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->cur:I

    iget v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private getByte(I)I
    .locals 8

    .prologue
    const/16 v7, 0x61

    const/16 v6, 0x46

    const/16 v5, 0x41

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 312
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    aget-char v0, v0, p1

    .line 319
    if-lt v0, v3, :cond_1

    if-gt v0, v4, :cond_1

    .line 320
    add-int/lit8 v0, v0, -0x30

    .line 329
    :goto_0
    iget-object v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v1, v1, v2

    .line 330
    if-lt v1, v3, :cond_4

    if-gt v1, v4, :cond_4

    .line 331
    add-int/lit8 v1, v1, -0x30

    .line 340
    :goto_1
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    return v0

    .line 321
    :cond_1
    if-lt v0, v7, :cond_2

    const/16 v1, 0x66

    if-gt v0, v1, :cond_2

    .line 322
    add-int/lit8 v0, v0, -0x57

    goto :goto_0

    .line 323
    :cond_2
    if-lt v0, v5, :cond_3

    if-gt v0, v6, :cond_3

    .line 324
    add-int/lit8 v0, v0, -0x37

    goto :goto_0

    .line 326
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_4
    if-lt v1, v7, :cond_5

    const/16 v2, 0x66

    if-gt v1, v2, :cond_5

    .line 333
    add-int/lit8 v1, v1, -0x57

    goto :goto_1

    .line 334
    :cond_5
    if-lt v1, v5, :cond_6

    if-gt v1, v6, :cond_6

    .line 335
    add-int/lit8 v1, v1, -0x37

    goto :goto_1

    .line 337
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEscaped()C
    .locals 3

    .prologue
    .line 233
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 234
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 257
    invoke-direct {p0}, Lcom/facebook/ssl/verification/DistinguishedNameParser;->getUTF8()C

    move-result v0

    :goto_0
    return v0

    .line 253
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    goto :goto_0

    .line 238
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private getUTF8()C
    .locals 8

    .prologue
    const/16 v6, 0x80

    const/16 v2, 0x3f

    .line 264
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lcom/facebook/ssl/verification/DistinguishedNameParser;->getByte(I)I

    move-result v1

    .line 265
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 267
    if-ge v1, v6, :cond_0

    .line 268
    int-to-char v0, v1

    .line 301
    :goto_0
    return v0

    .line 269
    :cond_0
    const/16 v0, 0xc0

    if-lt v1, v0, :cond_7

    const/16 v0, 0xf7

    if-gt v1, v0, :cond_7

    .line 272
    const/16 v0, 0xdf

    if-gt v1, v0, :cond_2

    .line 273
    const/4 v0, 0x1

    .line 274
    and-int/lit8 v1, v1, 0x1f

    .line 284
    :goto_1
    const/4 v3, 0x0

    move v7, v3

    move v3, v1

    move v1, v7

    :goto_2
    if-ge v1, v0, :cond_6

    .line 285
    iget v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 286
    iget v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v5, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v5, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4

    :cond_1
    move v0, v2

    .line 287
    goto :goto_0

    .line 275
    :cond_2
    const/16 v0, 0xef

    if-gt v1, v0, :cond_3

    .line 276
    const/4 v0, 0x2

    .line 277
    and-int/lit8 v1, v1, 0xf

    goto :goto_1

    .line 279
    :cond_3
    const/4 v0, 0x3

    .line 280
    and-int/lit8 v1, v1, 0x7

    goto :goto_1

    .line 289
    :cond_4
    iget v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 291
    iget v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v4}, Lcom/facebook/ssl/verification/DistinguishedNameParser;->getByte(I)I

    move-result v4

    .line 292
    iget v5, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 293
    and-int/lit16 v5, v4, 0xc0

    if-eq v5, v6, :cond_5

    move v0, v2

    .line 294
    goto :goto_0

    .line 297
    :cond_5
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v3, v4

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 299
    :cond_6
    int-to-char v0, v3

    goto :goto_0

    :cond_7
    move v0, v2

    .line 301
    goto :goto_0
.end method

.method private hexAV()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x20

    .line 141
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    .line 147
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 152
    :goto_0
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_4

    .line 153
    :cond_1
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    .line 173
    :cond_2
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    sub-int v2, v0, v1

    .line 174
    const/4 v0, 0x5

    if-lt v2, v0, :cond_3

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_7

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_5

    .line 158
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    .line 159
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 162
    :goto_1
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x41

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x46

    if-gt v0, v1, :cond_6

    .line 165
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v2, v0, v1

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 168
    :cond_6
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    goto/16 :goto_0

    .line 179
    :cond_7
    div-int/lit8 v0, v2, 0x2

    new-array v3, v0, [B

    .line 180
    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 181
    invoke-direct {p0, v0}, Lcom/facebook/ssl/verification/DistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 180
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 184
    :cond_8
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private nextAT()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    .line 57
    :goto_0
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 58
    :cond_0
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 104
    :goto_1
    return-object v0

    .line 63
    :cond_1
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    .line 66
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 67
    :goto_2
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 71
    :cond_2
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_3

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_3
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    .line 80
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_6

    .line 81
    :goto_3
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    goto :goto_3

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_6

    .line 84
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_6
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 92
    :goto_4
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    goto :goto_4

    .line 96
    :cond_7
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_b

    :cond_8
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_b

    .line 101
    :cond_a
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    .line 104
    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    iget v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1
.end method

.method private quotedAV()Ljava/lang/String;
    .locals 5

    .prologue
    .line 109
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 110
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    .line 111
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    .line 114
    :goto_0
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 120
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 134
    :goto_1
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    .line 123
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcom/facebook/ssl/verification/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 128
    :goto_2
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 129
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_2

    .line 136
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    iget v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 351
    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 352
    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->beg:I

    .line 353
    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->end:I

    .line 354
    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->cur:I

    .line 356
    invoke-direct {p0}, Lcom/facebook/ssl/verification/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 357
    if-nez v0, :cond_1

    move-object v1, v2

    .line 391
    :cond_0
    :goto_0
    return-object v1

    .line 361
    :cond_1
    const-string v1, ""

    .line 363
    iget v3, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-ne v3, v4, :cond_2

    move-object v1, v2

    .line 364
    goto :goto_0

    .line 367
    :cond_2
    iget-object v3, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v4, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 380
    invoke-direct {p0}, Lcom/facebook/ssl/verification/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v1

    .line 386
    :goto_1
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_3

    move-object v1, v2

    .line 391
    goto :goto_0

    .line 369
    :sswitch_1
    invoke-direct {p0}, Lcom/facebook/ssl/verification/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 372
    :sswitch_2
    invoke-direct {p0}, Lcom/facebook/ssl/verification/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_5

    .line 399
    :cond_4
    iget v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    .line 400
    invoke-direct {p0}, Lcom/facebook/ssl/verification/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 401
    if-nez v0, :cond_1

    .line 402
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_5
    iget-object v0, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_4

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ssl/verification/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method
