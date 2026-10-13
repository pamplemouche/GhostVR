.class public Lcom/facebook/secure/trustedapp/FbPermissionEncoder;
.super Ljava/lang/Object;
.source "FbPermissionEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;
    }
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private mData:Ljava/io/ByteArrayOutputStream;

.field private mEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v2, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mEntries:I

    .line 33
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mData:Ljava/io/ByteArrayOutputStream;

    .line 34
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mData:Ljava/io/ByteArrayOutputStream;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 35
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 36
    return-void
.end method

.method private update([B)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mData:Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 87
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mData:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 88
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 93
    const/4 v1, 0x1

    iget v2, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mEntries:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 94
    return-object v0
.end method

.method public update(Ljava/lang/String;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xff

    .line 40
    iget v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mEntries:I

    if-lt v0, v2, :cond_0

    .line 41
    new-instance v0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;

    const-string v1, "Total number of entries cannot exceed 255"

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    sget-object v0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 44
    array-length v1, v0

    if-le v1, v2, :cond_1

    .line 45
    new-instance v0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;

    const-string v1, "String size (UTF-8 encoded) cannot exceed 255"

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    invoke-direct {p0, v0}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->update([B)V

    .line 50
    iget v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mEntries:I

    .line 51
    return-void
.end method

.method public update(Ljava/util/Collection;B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xff

    .line 55
    iget v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mEntries:I

    if-lt v0, v5, :cond_0

    .line 56
    new-instance v0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;

    const-string v1, "Total number of entries cannot exceed 255"

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 60
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 61
    new-instance v0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;

    const-string v1, "Collection size (duplicates removed) cannot exceed 255"

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 67
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 69
    array-length v4, v0

    if-le v4, v5, :cond_2

    .line 70
    new-instance v0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;

    const-string v1, "String size (UTF-8 encoded) cannot exceed 255"

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 76
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 77
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 78
    invoke-direct {p0, v0}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->update([B)V

    goto :goto_1

    .line 80
    :cond_4
    iget v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->mEntries:I

    .line 81
    return-void
.end method
