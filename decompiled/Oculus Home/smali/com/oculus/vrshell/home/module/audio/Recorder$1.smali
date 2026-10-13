.class Lcom/oculus/vrshell/home/module/audio/Recorder$1;
.super Landroid/os/AsyncTask;
.source "Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/audio/Recorder;->start(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/audio/Recorder;

.field final synthetic val$bufferSize:I

.field final synthetic val$outFile:Ljava/io/File;

.field final synthetic val$recorder:Landroid/media/AudioRecord;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/audio/Recorder;ILjava/io/File;Landroid/media/AudioRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/audio/Recorder;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->this$0:Lcom/oculus/vrshell/home/module/audio/Recorder;

    iput p2, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->val$bufferSize:I

    iput-object p3, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->val$outFile:Ljava/io/File;

    iput-object p4, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->val$recorder:Landroid/media/AudioRecord;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 98
    const/16 v4, -0x10

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 99
    iget-object v4, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->this$0:Lcom/oculus/vrshell/home/module/audio/Recorder;

    invoke-virtual {v4}, Lcom/oculus/vrshell/home/module/audio/Recorder;->onRecordingStart()V

    .line 101
    iget v4, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->val$bufferSize:I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 102
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 104
    .local v2, "length":I
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->val$outFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v3, "os":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 105
    :try_start_1
    iget-object v5, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->this$0:Lcom/oculus/vrshell/home/module/audio/Recorder;

    invoke-virtual {v5, v3}, Lcom/oculus/vrshell/home/module/audio/Recorder;->writeFileHeader(Ljava/io/OutputStream;)V

    .line 108
    :cond_0
    iget-object v5, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->val$recorder:Landroid/media/AudioRecord;

    invoke-virtual {v5}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    .line 109
    iget-object v5, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->val$recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v5, v0, v7}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 110
    if-lez v2, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 114
    :cond_1
    iget-object v5, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->this$0:Lcom/oculus/vrshell/home/module/audio/Recorder;

    invoke-static {v5}, Lcom/oculus/vrshell/home/module/audio/Recorder;->access$000(Lcom/oculus/vrshell/home/module/audio/Recorder;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-gtz v2, :cond_0

    .line 116
    :cond_2
    iget-object v5, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->this$0:Lcom/oculus/vrshell/home/module/audio/Recorder;

    iget-object v7, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->val$outFile:Ljava/io/File;

    invoke-virtual {v5, v7}, Lcom/oculus/vrshell/home/module/audio/Recorder;->writeFileFooter(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    if-eqz v3, :cond_3

    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 121
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :cond_3
    :goto_0
    return-object v6

    .line 117
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v3    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 118
    .local v1, "ioe":Ljava/io/IOException;
    invoke-static {}, Lcom/oculus/vrshell/home/module/audio/Recorder;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 117
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 104
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 117
    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v3, :cond_5

    if-eqz v5, :cond_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_2
    :try_start_7
    throw v4

    :catch_3
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v4

    move-object v5, v6

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->val$recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->val$recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 129
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->val$recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 131
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->this$0:Lcom/oculus/vrshell/home/module/audio/Recorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/vrshell/home/module/audio/Recorder;->access$002(Lcom/oculus/vrshell/home/module/audio/Recorder;Z)Z

    .line 132
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->this$0:Lcom/oculus/vrshell/home/module/audio/Recorder;

    iget-object v1, p0, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->val$outFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/home/module/audio/Recorder;->onRecordingStop(Ljava/io/File;)V

    .line 134
    :cond_0
    return-void
.end method
