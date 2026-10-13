.class Lcom/oculus/vrshell/PanelStream$VideoCodecThread;
.super Ljava/lang/Thread;
.source "PanelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/PanelStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoCodecThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/PanelStream;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/PanelStream;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private putInt([BII)V
    .locals 2

    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 98
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 99
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 100
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 p3, p3, 0x18

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 101
    aput-byte p3, p1, p2

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "PanelStream"

    const-string v1, "Video codec thread started"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v1}, Lcom/oculus/vrshell/PanelStream;->access$000(Lcom/oculus/vrshell/PanelStream;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 108
    iget-object v1, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v1}, Lcom/oculus/vrshell/PanelStream;->access$200(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v2}, Lcom/oculus/vrshell/PanelStream;->access$100(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 113
    iget-object v1, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v1}, Lcom/oculus/vrshell/PanelStream;->access$200(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output format: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "csd-0"

    .line 117
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v4, "csd-1"

    .line 118
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 119
    iget-object v4, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    add-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v4, v5}, Lcom/oculus/vrshell/PanelStream;->access$302(Lcom/oculus/vrshell/PanelStream;[B)[B

    .line 120
    iget-object v4, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v4}, Lcom/oculus/vrshell/PanelStream;->access$300(Lcom/oculus/vrshell/PanelStream;)[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v4, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 121
    iget-object v3, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v3}, Lcom/oculus/vrshell/PanelStream;->access$300(Lcom/oculus/vrshell/PanelStream;)[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v2}, Lcom/oculus/vrshell/PanelStream;->access$200(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 126
    iget-object v4, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v4}, Lcom/oculus/vrshell/PanelStream;->access$100(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 129
    :goto_1
    iget-object v4, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v4}, Lcom/oculus/vrshell/PanelStream;->access$100(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v6}, Lcom/oculus/vrshell/PanelStream;->access$300(Lcom/oculus/vrshell/PanelStream;)[B

    move-result-object v6

    array-length v6, v6

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    add-int/2addr v4, v6

    add-int/lit8 v6, v4, 0x14

    .line 131
    new-array v6, v6, [B

    .line 132
    invoke-direct {p0, v6, v3, v3}, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->putInt([BII)V

    const/4 v7, 0x4

    .line 133
    iget-object v8, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v8}, Lcom/oculus/vrshell/PanelStream;->access$100(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v8

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-direct {p0, v6, v7, v8}, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->putInt([BII)V

    const/16 v7, 0x8

    .line 134
    iget-object v8, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v8}, Lcom/oculus/vrshell/PanelStream;->access$100(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v8

    iget-wide v8, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    long-to-int v9, v8

    invoke-direct {p0, v6, v7, v9}, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->putInt([BII)V

    const/16 v7, 0xc

    .line 135
    iget-object v8, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v8}, Lcom/oculus/vrshell/PanelStream;->access$100(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v8

    iget-wide v8, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v10, 0x20

    shr-long/2addr v8, v10

    long-to-int v9, v8

    invoke-direct {p0, v6, v7, v9}, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->putInt([BII)V

    const/16 v7, 0x10

    .line 136
    invoke-direct {p0, v6, v7, v4}, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->putInt([BII)V

    const/16 v4, 0x14

    if-eqz v5, :cond_4

    .line 138
    iget-object v7, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v7}, Lcom/oculus/vrshell/PanelStream;->access$300(Lcom/oculus/vrshell/PanelStream;)[B

    move-result-object v7

    iget-object v8, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v8}, Lcom/oculus/vrshell/PanelStream;->access$300(Lcom/oculus/vrshell/PanelStream;)[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v7, v3, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    if-eqz v5, :cond_5

    .line 140
    iget-object v5, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v5}, Lcom/oculus/vrshell/PanelStream;->access$300(Lcom/oculus/vrshell/PanelStream;)[B

    move-result-object v5

    array-length v5, v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    add-int/2addr v5, v4

    iget-object v4, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v4}, Lcom/oculus/vrshell/PanelStream;->access$100(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v6, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 142
    iget-object v2, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v2}, Lcom/oculus/vrshell/PanelStream;->access$200(Lcom/oculus/vrshell/PanelStream;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 144
    iget-object v1, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v1}, Lcom/oculus/vrshell/PanelStream;->access$400(Lcom/oculus/vrshell/PanelStream;)[[B

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v2}, Lcom/oculus/vrshell/PanelStream;->access$500(Lcom/oculus/vrshell/PanelStream;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x40

    aput-object v6, v1, v2

    .line 145
    iget-object v1, p0, Lcom/oculus/vrshell/PanelStream$VideoCodecThread;->this$0:Lcom/oculus/vrshell/PanelStream;

    invoke-static {v1}, Lcom/oculus/vrshell/PanelStream;->access$508(Lcom/oculus/vrshell/PanelStream;)I

    goto/16 :goto_0

    :cond_6
    const-string v1, "Video codec thread ended"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
