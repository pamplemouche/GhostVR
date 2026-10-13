.class Lcom/oculus/vrshell/home/module/audio/MicRecorder;
.super Ljava/lang/Object;
.source "MicRecorder.java"


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "Mic"

.field private static final REQUIRED_PERMISSIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private final mContext:Landroid/content/Context;

.field private mRecorder:Lcom/oculus/vrshell/home/module/audio/Recorder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createRecorder(Ljava/io/File;)Lcom/oculus/vrshell/home/module/audio/Recorder;
    .locals 1
    .param p1, "outputFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/oculus/vrshell/home/module/audio/MicRecorder$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/vrshell/home/module/audio/MicRecorder$1;-><init>(Lcom/oculus/vrshell/home/module/audio/MicRecorder;Ljava/io/File;)V

    return-object v0
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "startRecording"

    const-string v3, "ss"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Landroid/util/Pair;

    const-string v2, "stopRecording"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-object v0
.end method

.method private getAllRevokedPermissions()[Ljava/lang/String;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v1, v6, v5

    .line 45
    .local v1, "permission":Ljava/lang/String;
    iget-object v8, p0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {v8, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    const/4 v0, 0x1

    .line 47
    .local v0, "hasPermission":Z
    :goto_1
    if-nez v0, :cond_0

    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "hasPermission":Z
    :cond_1
    move v0, v4

    .line 46
    goto :goto_1

    .line 52
    .end local v1    # "permission":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 53
    .local v3, "ret":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "Mic"

    return-object v0
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->stopRecording()V

    .line 103
    return-void
.end method

.method public declared-synchronized startRecording(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outputFileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->mRecorder:Lcom/oculus/vrshell/home/module/audio/Recorder;

    if-nez v2, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->getAllRevokedPermissions()[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "revokedPermissions":[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 118
    .local v0, "permission":Ljava/lang/String;
    sget-object v4, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " revoked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Llibraries/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->createRecorder(Ljava/io/File;)Lcom/oculus/vrshell/home/module/audio/Recorder;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->mRecorder:Lcom/oculus/vrshell/home/module/audio/Recorder;

    .line 122
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->mRecorder:Lcom/oculus/vrshell/home/module/audio/Recorder;

    invoke-virtual {v2, p2}, Lcom/oculus/vrshell/home/module/audio/Recorder;->start(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->mRecorder:Lcom/oculus/vrshell/home/module/audio/Recorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v1    # "revokedPermissions":[Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stopRecording()V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->mRecorder:Lcom/oculus/vrshell/home/module/audio/Recorder;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->mRecorder:Lcom/oculus/vrshell/home/module/audio/Recorder;

    invoke-virtual {v0}, Lcom/oculus/vrshell/home/module/audio/Recorder;->stop()Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->mRecorder:Lcom/oculus/vrshell/home/module/audio/Recorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
