.class public final Lcom/facebook/mobileconfig/FBConfigUtils;
.super Ljava/lang/Object;
.source "FBConfigUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSchemaHashInternal(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 26
    const-string v1, "FBConfigUtils"

    const-string v2, "Invalid ByteBuffer passed. Forcing C++ manager creation."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 32
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 34
    invoke-static {v2}, Lcom/facebook/mobileconfig/FBConfigUtils;->isValidSchemaHash([B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 35
    const-string v1, "FBConfigUtils"

    const-string v2, "Invalid schema hash in flatbuffer. Forcing C++ manager creation."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v2

    invoke-direct {v0, v2, v3, v4, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public static isValidSchemaHash([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 45
    array-length v0, p0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    array-length v0, p0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 49
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_5

    .line 50
    aget-byte v2, p0, v0

    .line 53
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v3, 0x66

    if-le v2, v3, :cond_4

    :cond_2
    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    const/16 v3, 0x39

    if-le v2, v3, :cond_4

    :cond_3
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    .line 49
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method
