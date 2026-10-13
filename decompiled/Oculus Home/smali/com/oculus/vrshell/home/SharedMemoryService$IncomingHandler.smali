.class Lcom/oculus/vrshell/home/SharedMemoryService$IncomingHandler;
.super Landroid/os/Handler;
.source "SharedMemoryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/home/SharedMemoryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oculus/vrshell/home/SharedMemoryService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/SharedMemoryService;)V
    .locals 1
    .param p1, "cps"    # Lcom/oculus/vrshell/home/SharedMemoryService;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oculus/vrshell/home/SharedMemoryService$IncomingHandler;->service:Ljava/lang/ref/WeakReference;

    .line 48
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 52
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 105
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    :goto_1
    return-void

    .line 54
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "fileName"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 55
    .local v4, "fileName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 56
    .local v8, "pfd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 59
    .local v5, "length":I
    new-array v2, v5, [B

    .line 61
    .local v2, "buffer":[B
    :try_start_0
    new-instance v9, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v9, v8}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 62
    .local v9, "stream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    invoke-virtual {v9, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oculus/vrshell/home/SharedMemoryService$IncomingHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oculus/vrshell/home/SharedMemoryService;

    invoke-virtual {v13}, Lcom/oculus/vrshell/home/SharedMemoryService;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/temp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, "tempDirPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v10, "tempDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 70
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v13

    if-nez v13, :cond_1

    .line 72
    invoke-static {}, Lcom/oculus/vrshell/home/SharedMemoryService;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Unable to create temp directory"

    invoke-static {v13, v14}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 63
    .end local v9    # "stream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v10    # "tempDir":Ljava/io/File;
    .end local v11    # "tempDirPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 64
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/oculus/vrshell/home/SharedMemoryService;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got IOException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v9    # "stream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v10    # "tempDir":Ljava/io/File;
    .restart local v11    # "tempDirPath":Ljava/lang/String;
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    array-length v15, v14

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v15, :cond_1

    aget-object v12, v14, v13

    .line 78
    .local v12, "tempFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 77
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 82
    .end local v12    # "tempFile":Ljava/io/File;
    :cond_1
    const-string v13, "/"

    invoke-virtual {v4, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 85
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "absolutePath":Ljava/lang/String;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 88
    .local v7, "output":Ljava/io/FileOutputStream;
    invoke-virtual {v7, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 89
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .end local v7    # "output":Ljava/io/FileOutputStream;
    :goto_3
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x0

    invoke-static {v2, v13, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 99
    iget v13, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v13, v14}, Lcom/oculus/vrshell/home/module/ShareToFacebookModule;->setStaticFileInfo(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 90
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v3

    .line 91
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/oculus/vrshell/home/SharedMemoryService;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got IOException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
