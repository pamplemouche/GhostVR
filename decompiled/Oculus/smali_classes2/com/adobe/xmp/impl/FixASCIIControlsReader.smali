.class public Lcom/adobe/xmp/impl/FixASCIIControlsReader;
.super Ljava/io/PushbackReader;
.source "FixASCIIControlsReader.java"


# instance fields
.field private control:I

.field private digits:I

.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    .line 37
    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 39
    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    .line 41
    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    .line 51
    return-void
.end method

.method private processChar(C)C
    .locals 6

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 114
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    packed-switch v0, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return p1

    .line 117
    :pswitch_0
    const/16 v0, 0x26

    if-ne p1, v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_0

    .line 124
    :pswitch_1
    const/16 v0, 0x23

    if-ne p1, v0, :cond_1

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_0

    .line 130
    :cond_1
    iput v2, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_0

    .line 135
    :pswitch_2
    const/16 v0, 0x78

    if-ne p1, v0, :cond_2

    .line 137
    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    .line 138
    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    .line 139
    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_0

    .line 141
    :cond_2
    if-gt v4, p1, :cond_3

    if-gt p1, v5, :cond_3

    .line 143
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    .line 144
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    .line 145
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_0

    .line 149
    :cond_3
    iput v2, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_0

    .line 154
    :pswitch_3
    if-gt v4, p1, :cond_5

    if-gt p1, v5, :cond_5

    .line 156
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    mul-int/lit8 v0, v0, 0xa

    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    .line 157
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    .line 158
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v0, v2, :cond_4

    .line 160
    iput v3, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_0

    .line 164
    :cond_4
    iput v2, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_0

    .line 167
    :cond_5
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_6

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 170
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char p1, v0

    goto :goto_0

    .line 174
    :cond_6
    iput v2, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto :goto_0

    .line 179
    :pswitch_4
    if-gt v4, p1, :cond_7

    if-le p1, v5, :cond_9

    :cond_7
    const/16 v0, 0x61

    if-gt v0, p1, :cond_8

    const/16 v0, 0x66

    if-le p1, v0, :cond_9

    :cond_8
    const/16 v0, 0x41

    if-gt v0, p1, :cond_b

    const/16 v0, 0x46

    if-gt p1, v0, :cond_b

    .line 183
    :cond_9
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    mul-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    .line 184
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    .line 185
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->digits:I

    if-gt v0, v3, :cond_a

    .line 187
    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto/16 :goto_0

    .line 191
    :cond_a
    iput v2, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto/16 :goto_0

    .line 194
    :cond_b
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_c

    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char v0, v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 196
    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    .line 197
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->control:I

    int-to-char p1, v0

    goto/16 :goto_0

    .line 201
    :cond_c
    iput v2, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto/16 :goto_0

    .line 206
    :pswitch_5
    iput v1, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public read([CII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 62
    const/16 v0, 0x8

    new-array v7, v0, [C

    move v5, v6

    move v2, p2

    move v3, v4

    move v1, v4

    .line 65
    :cond_0
    :goto_0
    if-eqz v5, :cond_6

    if-ge v3, p3, :cond_6

    .line 67
    invoke-super {p0, v7, v1, v6}, Ljava/io/PushbackReader;->read([CII)I

    move-result v0

    if-ne v0, v6, :cond_2

    move v5, v6

    .line 68
    :goto_1
    if-eqz v5, :cond_5

    .line 70
    aget-char v0, v7, v1

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->processChar(C)C

    move-result v0

    .line 71
    iget v8, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    if-nez v8, :cond_3

    .line 74
    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const/16 v0, 0x20

    .line 78
    :cond_1
    add-int/lit8 v1, v2, 0x1

    aput-char v0, p1, v2

    .line 80
    add-int/lit8 v0, v3, 0x1

    move v2, v4

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_2
    move v3, v1

    move v1, v2

    move v2, v0

    .line 91
    goto :goto_0

    :cond_2
    move v5, v4

    .line 67
    goto :goto_1

    .line 82
    :cond_3
    iget v0, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    if-ne v0, v9, :cond_4

    .line 84
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v7, v4, v0}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->unread([CII)V

    move v0, v2

    move v1, v3

    move v2, v4

    .line 85
    goto :goto_2

    .line 89
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v3

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_2

    .line 92
    :cond_5
    if-lez v1, :cond_0

    .line 95
    invoke-virtual {p0, v7, v4, v1}, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->unread([CII)V

    .line 96
    iput v9, p0, Lcom/adobe/xmp/impl/FixASCIIControlsReader;->state:I

    move v5, v6

    move v1, v4

    .line 98
    goto :goto_0

    .line 103
    :cond_6
    if-gtz v3, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    :goto_3
    return v3

    :cond_8
    const/4 v3, -0x1

    goto :goto_3
.end method
