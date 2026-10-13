.class public Lcom/facebook/acra/util/NativeProcFileReader;
.super Lcom/facebook/acra/util/ProcFileReader;
.source "NativeProcFileReader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingNativeLoadLibrary"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/facebook/acra/util/NativeProcFileReader;

.field private static sLoadSoThread:Ljava/lang/Thread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "NativeProcFileReader.class"
    .end annotation
.end field

.field private static final sReadyToUse:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    const-class v0, Lcom/facebook/acra/util/NativeProcFileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/util/NativeProcFileReader;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/acra/util/NativeProcFileReader;->sReadyToUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    sput-object v2, Lcom/facebook/acra/util/NativeProcFileReader;->sInstance:Lcom/facebook/acra/util/NativeProcFileReader;

    .line 20
    sput-object v2, Lcom/facebook/acra/util/NativeProcFileReader;->sLoadSoThread:Ljava/lang/Thread;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/acra/util/ProcFileReader;-><init>()V

    .line 30
    invoke-static {}, Lcom/facebook/acra/util/NativeProcFileReader;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class is not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/acra/util/NativeProcFileReader;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/facebook/acra/util/NativeProcFileReader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/acra/util/NativeProcFileReader;->sInstance:Lcom/facebook/acra/util/NativeProcFileReader;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/facebook/acra/util/NativeProcFileReader;

    invoke-direct {v0}, Lcom/facebook/acra/util/NativeProcFileReader;-><init>()V

    sput-object v0, Lcom/facebook/acra/util/NativeProcFileReader;->sInstance:Lcom/facebook/acra/util/NativeProcFileReader;

    .line 26
    :cond_0
    sget-object v0, Lcom/facebook/acra/util/NativeProcFileReader;->sInstance:Lcom/facebook/acra/util/NativeProcFileReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native getOpenFDLimitsNative()[I
.end method

.method public static isReady()Z
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/acra/util/NativeProcFileReader;->sReadyToUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static nativeLibraryLoaded()V
    .locals 3

    .prologue
    .line 40
    const-class v1, Lcom/facebook/acra/util/NativeProcFileReader;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/facebook/acra/util/NativeProcFileReader;->sReadyToUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    const-class v0, Lcom/facebook/acra/util/NativeProcFileReader;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public native getOpenFDCount()I
.end method

.method public getOpenFDLimits()Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/facebook/acra/util/NativeProcFileReader;->getOpenFDLimitsNative()[I

    move-result-object v0

    .line 49
    new-instance v1, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;-><init>(II)V

    return-object v1
.end method

.method public native getOpenFileDescriptors()Ljava/lang/String;
.end method
