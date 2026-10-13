.class public abstract Lcom/oculus/vrshell/home/module/audio/WavRecorder;
.super Lcom/oculus/vrshell/home/module/audio/Recorder;
.source "WavRecorder.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "path"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/module/audio/Recorder;-><init>(Ljava/io/File;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected getFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "wav"

    return-object v0
.end method

.method protected writeFileFooter(Ljava/io/File;)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/16 v4, 0x8

    .line 88
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 89
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    sub-long/2addr v6, v8

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2c

    sub-long/2addr v6, v8

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 97
    .local v3, "sizes":[B
    const/4 v0, 0x0

    .line 100
    .local v0, "accessWave":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v1, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v0    # "accessWave":Ljava/io/RandomAccessFile;
    .local v1, "accessWave":Ljava/io/RandomAccessFile;
    const-wide/16 v4, 0x4

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 103
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 106
    const-wide/16 v4, 0x28

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 107
    const/4 v4, 0x4

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    if-eqz v1, :cond_0

    .line 114
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 108
    .end local v1    # "accessWave":Ljava/io/RandomAccessFile;
    .restart local v0    # "accessWave":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    .line 110
    .local v2, "ex":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_1

    .line 114
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 117
    :cond_1
    :goto_3
    throw v4

    .line 115
    .end local v0    # "accessWave":Ljava/io/RandomAccessFile;
    .restart local v1    # "accessWave":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v1    # "accessWave":Ljava/io/RandomAccessFile;
    .restart local v0    # "accessWave":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v5

    goto :goto_3

    .line 112
    .end local v0    # "accessWave":Ljava/io/RandomAccessFile;
    .restart local v1    # "accessWave":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "accessWave":Ljava/io/RandomAccessFile;
    .restart local v0    # "accessWave":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 108
    .end local v0    # "accessWave":Ljava/io/RandomAccessFile;
    .restart local v1    # "accessWave":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "accessWave":Ljava/io/RandomAccessFile;
    .restart local v0    # "accessWave":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method protected writeFileHeader(Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "os"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/audio/WavRecorder;->getChannelMask()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unacceptable channel mask"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 28
    :sswitch_0
    const/4 v1, 0x1

    .line 38
    .local v1, "channels":S
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/audio/WavRecorder;->getEncoding()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 49
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unacceptable encoding"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 31
    .end local v1    # "channels":S
    :sswitch_1
    const/4 v1, 0x2

    .line 32
    .restart local v1    # "channels":S
    goto :goto_0

    .line 40
    :pswitch_0
    const/16 v0, 0x8

    .line 53
    .local v0, "bitDepth":S
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/audio/WavRecorder;->getSampleRate()I

    move-result v3

    .line 54
    .local v3, "sampleRate":I
    const/16 v4, 0xe

    .line 55
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 56
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 57
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 58
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    mul-int v5, v3, v1

    div-int/lit8 v6, v0, 0x8

    mul-int/2addr v5, v6

    .line 59
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    div-int/lit8 v5, v0, 0x8

    mul-int/2addr v5, v1

    int-to-short v5, v5

    .line 60
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 61
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 62
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 65
    .local v2, "littleBytes":[B
    const/16 v4, 0x2c

    new-array v4, v4, [B

    const/16 v5, 0x52

    aput-byte v5, v4, v7

    const/16 v5, 0x49

    aput-byte v5, v4, v8

    const/16 v5, 0x46

    aput-byte v5, v4, v9

    const/16 v5, 0x46

    aput-byte v5, v4, v10

    aput-byte v7, v4, v11

    const/4 v5, 0x5

    aput-byte v7, v4, v5

    const/4 v5, 0x6

    aput-byte v7, v4, v5

    const/4 v5, 0x7

    aput-byte v7, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x57

    aput-byte v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x41

    aput-byte v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0x56

    aput-byte v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x45

    aput-byte v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x66

    aput-byte v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x6d

    aput-byte v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x74

    aput-byte v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x20

    aput-byte v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x10

    aput-byte v6, v4, v5

    const/16 v5, 0x11

    aput-byte v7, v4, v5

    const/16 v5, 0x12

    aput-byte v7, v4, v5

    const/16 v5, 0x13

    aput-byte v7, v4, v5

    const/16 v5, 0x14

    aput-byte v8, v4, v5

    const/16 v5, 0x15

    aput-byte v7, v4, v5

    const/16 v5, 0x16

    aget-byte v6, v2, v7

    aput-byte v6, v4, v5

    const/16 v5, 0x17

    aget-byte v6, v2, v8

    aput-byte v6, v4, v5

    const/16 v5, 0x18

    aget-byte v6, v2, v9

    aput-byte v6, v4, v5

    const/16 v5, 0x19

    aget-byte v6, v2, v10

    aput-byte v6, v4, v5

    const/16 v5, 0x1a

    aget-byte v6, v2, v11

    aput-byte v6, v4, v5

    const/16 v5, 0x1b

    const/4 v6, 0x5

    aget-byte v6, v2, v6

    aput-byte v6, v4, v5

    const/16 v5, 0x1c

    const/4 v6, 0x6

    aget-byte v6, v2, v6

    aput-byte v6, v4, v5

    const/16 v5, 0x1d

    const/4 v6, 0x7

    aget-byte v6, v2, v6

    aput-byte v6, v4, v5

    const/16 v5, 0x1e

    const/16 v6, 0x8

    aget-byte v6, v2, v6

    aput-byte v6, v4, v5

    const/16 v5, 0x1f

    const/16 v6, 0x9

    aget-byte v6, v2, v6

    aput-byte v6, v4, v5

    const/16 v5, 0x20

    const/16 v6, 0xa

    aget-byte v6, v2, v6

    aput-byte v6, v4, v5

    const/16 v5, 0x21

    const/16 v6, 0xb

    aget-byte v6, v2, v6

    aput-byte v6, v4, v5

    const/16 v5, 0x22

    const/16 v6, 0xc

    aget-byte v6, v2, v6

    aput-byte v6, v4, v5

    const/16 v5, 0x23

    const/16 v6, 0xd

    aget-byte v6, v2, v6

    aput-byte v6, v4, v5

    const/16 v5, 0x24

    const/16 v6, 0x64

    aput-byte v6, v4, v5

    const/16 v5, 0x25

    const/16 v6, 0x61

    aput-byte v6, v4, v5

    const/16 v5, 0x26

    const/16 v6, 0x74

    aput-byte v6, v4, v5

    const/16 v5, 0x27

    const/16 v6, 0x61

    aput-byte v6, v4, v5

    const/16 v5, 0x28

    aput-byte v7, v4, v5

    const/16 v5, 0x29

    aput-byte v7, v4, v5

    const/16 v5, 0x2a

    aput-byte v7, v4, v5

    const/16 v5, 0x2b

    aput-byte v7, v4, v5

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 83
    return-void

    .line 43
    .end local v0    # "bitDepth":S
    .end local v2    # "littleBytes":[B
    .end local v3    # "sampleRate":I
    :pswitch_1
    const/16 v0, 0x10

    .line 44
    .restart local v0    # "bitDepth":S
    goto/16 :goto_1

    .line 46
    .end local v0    # "bitDepth":S
    :pswitch_2
    const/16 v0, 0x20

    .line 47
    .restart local v0    # "bitDepth":S
    goto/16 :goto_1

    .line 26
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 38
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
