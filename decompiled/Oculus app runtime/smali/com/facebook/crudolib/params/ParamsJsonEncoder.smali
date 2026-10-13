.class public final Lcom/facebook/crudolib/params/ParamsJsonEncoder;
.super Ljava/lang/Object;
.source "ParamsJsonEncoder.java"

# interfaces
.implements Lcom/facebook/crudolib/params/ParamsEncoder;


# static fields
.field public static final FLAG_ENCODE_AS_JSON_STRING:I = 0x1

.field private static final FLAG_NONE:I

.field private static sInstance:Lcom/facebook/crudolib/params/ParamsJsonEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeArray(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollectionArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5b

    .line 42
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeBodyArray(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollectionArray;)V

    const/16 p2, 0x5d

    .line 44
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method private encodeBodyArray(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollectionArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p2}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-lez v1, :cond_0

    const/16 v2, 0x2c

    .line 78
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    :cond_0
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p2, v1}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeValue(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private encodeBodyMap(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-lez v1, :cond_0

    const/16 v2, 0x2c

    .line 65
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 67
    :cond_0
    invoke-virtual {p2, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getKey(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-direct {p0, p1, v2}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->writeJsonString(Ljava/io/Writer;Ljava/lang/String;)V

    const/16 v3, 0x3a

    .line 69
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 70
    invoke-virtual {p2, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeValue(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private encodeMap(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7b

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeBodyMap(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    const/16 p2, 0x7d

    .line 38
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method private encodeValue(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const-string p2, "null"

    .line 89
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 91
    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->writeJsonString(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_1
    instance-of v0, p3, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 93
    check-cast p3, Ljava/lang/Number;

    invoke-direct {p0, p1, p3}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->writeJsonNumber(Ljava/io/Writer;Ljava/lang/Number;)V

    goto :goto_1

    .line 94
    :cond_2
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 95
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "true"

    goto :goto_0

    :cond_3
    const-string p2, "false"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_4
    instance-of v0, p3, Lcom/facebook/crudolib/params/ParamsCollection;

    if-eqz v0, :cond_5

    .line 97
    check-cast p3, Lcom/facebook/crudolib/params/ParamsCollection;

    invoke-direct {p0, p1, p3}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->writeSubParameters(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V

    :goto_1
    return-void

    :cond_5
    if-eqz p2, :cond_6

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " (found in key \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    const-string p1, ""

    .line 103
    :goto_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not supported"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/crudolib/params/ParamsJsonEncoder;
    .locals 2

    const-class v0, Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->sInstance:Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    invoke-direct {v1}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;-><init>()V

    sput-object v1, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->sInstance:Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    .line 23
    :cond_0
    sget-object v1, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->sInstance:Lcom/facebook/crudolib/params/ParamsJsonEncoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private writeJsonNumber(Ljava/io/Writer;Ljava/lang/Number;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {}, Lcom/facebook/crudolib/params/NumberFormatHelper;->getThreadLocalInstance()Lcom/facebook/crudolib/params/NumberFormatHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/crudolib/params/NumberFormatHelper;->writeTo(Ljava/io/Writer;Ljava/lang/Number;)V

    return-void
.end method

.method private writeJsonString(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    .line 133
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 134
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 135
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 136
    invoke-static {p1, v3}, Lcom/facebook/crudolib/params/JsonEncodingWriter;->writeUnencodedChar(Ljava/io/Writer;C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method private writeSubParameters(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const-class v0, Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/facebook/crudolib/params/ParamsCollection;->getParentEncoderFlags(Ljava/lang/Class;I)I

    move-result v0

    .line 111
    invoke-virtual {p2, p0}, Lcom/facebook/crudolib/params/ParamsCollection;->getEncoder(Lcom/facebook/crudolib/params/ParamsEncoder;)Lcom/facebook/crudolib/params/ParamsEncoder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 112
    const-class v2, Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p2, p1, p0}, Lcom/facebook/crudolib/params/ParamsCollection;->encode(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsEncoder;)V

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    const/16 v0, 0x22

    .line 118
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 119
    new-instance v1, Lcom/facebook/crudolib/params/JsonEncodingWriter;

    invoke-direct {v1, p1}, Lcom/facebook/crudolib/params/JsonEncodingWriter;-><init>(Ljava/io/Writer;)V

    .line 121
    :try_start_0
    invoke-virtual {p2, v1, p0}, Lcom/facebook/crudolib/params/ParamsCollection;->encode(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsEncoder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v1}, Lcom/facebook/crudolib/params/JsonEncodingWriter;->flush()V

    .line 125
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 123
    invoke-virtual {v1}, Lcom/facebook/crudolib/params/JsonEncodingWriter;->flush()V

    throw p1

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoder="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " combination"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public encode(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    instance-of v0, p2, Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-eqz v0, :cond_0

    .line 29
    check-cast p2, Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeMap(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0

    .line 31
    :cond_0
    check-cast p2, Lcom/facebook/crudolib/params/ParamsCollectionArray;

    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeArray(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollectionArray;)V

    :goto_0
    return-void
.end method

.method public encodeBody(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    instance-of v0, p2, Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-eqz v0, :cond_0

    .line 55
    check-cast p2, Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeBodyMap(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0

    .line 57
    :cond_0
    check-cast p2, Lcom/facebook/crudolib/params/ParamsCollectionArray;

    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeBodyArray(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollectionArray;)V

    :goto_0
    return-void
.end method
