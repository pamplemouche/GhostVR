.class public abstract LH31;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Ll21;)Landroid/nfc/NdefMessage;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Ll21;->b:[Lm21;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Ll21;->b:[Lm21;

    aget-object v2, v2, v1

    invoke-static {v2}, LH31;->a(Lm21;)Landroid/nfc/NdefRecord;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "w3.org"

    const-string v2, "A"

    .line 4
    iget-object p0, p0, Ll21;->c:Ljava/lang/String;

    .line 5
    invoke-static {p0}, LdT;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 6
    invoke-static {v1, v2, p0}, Landroid/nfc/NdefRecord;->createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/nfc/NdefRecord;

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-direct {v0, p0}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LE31; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10
    :catch_0
    new-instance p0, LE31;

    invoke-direct {p0}, LE31;-><init>()V

    throw p0
.end method

.method public static a(Lm21;)Landroid/nfc/NdefRecord;
    .locals 9

    .line 59
    iget-object v0, p0, Lm21;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "opaque"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "smart-poster"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "UTF-8"

    if-eqz v0, :cond_a

    if-eq v0, v8, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_8

    const/4 v1, 0x0

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    .line 60
    iget-object v0, p0, Lm21;->b:Ljava/lang/String;

    const/16 v2, 0x3a

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v6, :cond_1

    goto :goto_2

    .line 62
    :cond_1
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v2, v8

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "[a-zA-Z0-9()+,\\-:=@;$_!*\'.]+"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 67
    :cond_4
    new-instance v2, LG31;

    invoke-direct {v2, v3, v0, v1}, LG31;-><init>(Ljava/lang/String;Ljava/lang/String;LF31;)V

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 68
    iget-object v0, v1, LG31;->a:Ljava/lang/String;

    .line 69
    iget-object v1, v1, LG31;->b:Ljava/lang/String;

    .line 70
    iget-object p0, p0, Lm21;->d:[B

    invoke-static {v0, v1, p0}, Landroid/nfc/NdefRecord;->createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0

    .line 71
    :cond_5
    new-instance p0, LE31;

    invoke-direct {p0}, LE31;-><init>()V

    throw p0

    .line 72
    :cond_6
    new-instance p0, LE31;

    invoke-direct {p0}, LE31;-><init>()V

    throw p0

    .line 73
    :cond_7
    new-instance p0, Landroid/nfc/NdefRecord;

    invoke-direct {p0, v7, v1, v1, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p0

    .line 74
    :cond_8
    iget-object v0, p0, Lm21;->c:Ljava/lang/String;

    iget-object p0, p0, Lm21;->d:[B

    invoke-static {v0, p0}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0

    .line 75
    :cond_9
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lm21;->d:[B

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p0, "en-US"

    invoke-static {p0, v0}, Landroid/nfc/NdefRecord;->createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0

    .line 76
    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lm21;->d:[B

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6b93922f -> :sswitch_5
        -0x3c3dfbdf -> :sswitch_4
        0x1c56f -> :sswitch_3
        0x31ece8 -> :sswitch_2
        0x36452d -> :sswitch_1
        0x5c2854d -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Landroid/nfc/NdefMessage;)Ll21;
    .locals 11

    .line 11
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object p0

    .line 12
    new-instance v0, Ll21;

    invoke-direct {v0}, Ll21;-><init>()V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 14
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_d

    .line 15
    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x4

    const-string v6, "UTF-8"

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/lang/String;

    aget-object v7, p0, v3

    .line 16
    invoke-virtual {v7}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    invoke-direct {v4, v7, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v7, "w3.org:A"

    .line 17
    invoke-virtual {v4, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 18
    new-instance v4, Ljava/lang/String;

    aget-object v5, p0, v3

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, v0, Ll21;->c:Ljava/lang/String;

    goto/16 :goto_3

    .line 19
    :cond_0
    aget-object v4, p0, v3

    .line 20
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    if-eqz v7, :cond_a

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v7, v9, :cond_6

    const/4 v9, 0x2

    const-string v10, "opaque"

    if-eq v7, v9, :cond_4

    const/4 v9, 0x3

    if-eq v7, v9, :cond_3

    const-string v9, "application/octet-stream"

    if-eq v7, v5, :cond_2

    const/4 v5, 0x5

    if-eq v7, v5, :cond_1

    goto/16 :goto_2

    .line 21
    :cond_1
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    .line 22
    new-instance v8, Lm21;

    invoke-direct {v8}, Lm21;-><init>()V

    .line 23
    iput-object v10, v8, Lm21;->b:Ljava/lang/String;

    .line 24
    iput-object v9, v8, Lm21;->c:Ljava/lang/String;

    .line 25
    iput-object v4, v8, Lm21;->d:[B

    goto/16 :goto_2

    .line 26
    :cond_2
    new-instance v5, Ljava/lang/String;

    .line 27
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    invoke-direct {v5, v7, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    .line 28
    new-instance v8, Lm21;

    invoke-direct {v8}, Lm21;-><init>()V

    .line 29
    iput-object v5, v8, Lm21;->b:Ljava/lang/String;

    .line 30
    iput-object v9, v8, Lm21;->c:Ljava/lang/String;

    .line 31
    iput-object v4, v8, Lm21;->d:[B

    goto/16 :goto_2

    .line 32
    :cond_3
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, LH31;->a(Landroid/net/Uri;)Lm21;

    move-result-object v8

    goto/16 :goto_2

    .line 33
    :cond_4
    new-instance v5, Ljava/lang/String;

    .line 34
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    invoke-direct {v5, v7, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    .line 35
    new-instance v8, Lm21;

    invoke-direct {v8}, Lm21;-><init>()V

    const-string v6, "application/json"

    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "json"

    .line 37
    iput-object v6, v8, Lm21;->b:Ljava/lang/String;

    goto :goto_1

    .line 38
    :cond_5
    iput-object v10, v8, Lm21;->b:Ljava/lang/String;

    .line 39
    :goto_1
    iput-object v5, v8, Lm21;->c:Ljava/lang/String;

    .line 40
    iput-object v4, v8, Lm21;->d:[B

    goto :goto_2

    .line 41
    :cond_6
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 42
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, LH31;->a(Landroid/net/Uri;)Lm21;

    move-result-object v8

    goto :goto_2

    .line 43
    :cond_7
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 44
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    .line 45
    array-length v5, v4

    if-nez v5, :cond_8

    goto :goto_2

    .line 46
    :cond_8
    new-instance v5, Lm21;

    invoke-direct {v5}, Lm21;-><init>()V

    const-string v6, "text"

    .line 47
    iput-object v6, v5, Lm21;->b:Ljava/lang/String;

    const-string v6, "text/plain"

    .line 48
    iput-object v6, v5, Lm21;->c:Ljava/lang/String;

    .line 49
    aget-byte v6, v4, v2

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v6, v9

    .line 50
    array-length v7, v4

    if-le v6, v7, :cond_9

    goto :goto_2

    .line 51
    :cond_9
    array-length v7, v4

    invoke-static {v4, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iput-object v4, v5, Lm21;->d:[B

    move-object v8, v5

    goto :goto_2

    .line 52
    :cond_a
    new-instance v8, Lm21;

    invoke-direct {v8}, Lm21;-><init>()V

    const-string v4, "empty"

    .line 53
    iput-object v4, v8, Lm21;->b:Ljava/lang/String;

    const-string v4, ""

    .line 54
    iput-object v4, v8, Lm21;->c:Ljava/lang/String;

    new-array v4, v2, [B

    .line 55
    iput-object v4, v8, Lm21;->d:[B

    :cond_b
    :goto_2
    if-eqz v8, :cond_c

    .line 56
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 57
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lm21;

    iput-object p0, v0, Ll21;->b:[Lm21;

    .line 58
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Lm21;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    new-instance v0, Lm21;

    invoke-direct {v0}, Lm21;-><init>()V

    const-string v1, "url"

    .line 78
    iput-object v1, v0, Lm21;->b:Ljava/lang/String;

    const-string v1, "text/plain"

    .line 79
    iput-object v1, v0, Lm21;->c:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LdT;->a(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v0, Lm21;->d:[B

    return-object v0
.end method
