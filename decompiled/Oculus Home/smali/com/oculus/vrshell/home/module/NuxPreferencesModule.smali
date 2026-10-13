.class public Lcom/oculus/vrshell/home/module/NuxPreferencesModule;
.super Landroid/content/BroadcastReceiver;
.source "NuxPreferencesModule.java"

# interfaces
.implements Lcom/oculus/modules/codegen/EarlyDestroyable;


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "com.oculus.vrshell.home.nuxpref"

.field private static final COMMAND_KEY:Ljava/lang/String; = "command"

.field private static MODULE_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String;

.field private static gson:Lcom/google/gson/Gson; = null

.field private static final mInitialFetchCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static mInstance:Lcom/oculus/vrshell/home/module/NuxPreferencesModule; = null
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final mNuxPreferencesFetchBackoff:J = 0xaL

.field private static mPreferencesJson:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public RVRCtxTag:J

.field private final mContext:Landroid/content/Context;

.field private mShutdown:Z

.field private final mShutdownLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    new-instance v0, Ljava/lang/String;

    const-string v1, "NuxPreferences"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->MODULE_NAME:Ljava/lang/String;

    .line 39
    const-class v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->gson:Lcom/google/gson/Gson;

    .line 44
    sput-object v2, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mInstance:Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    sput-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mInitialFetchCallbacks:Ljava/util/List;

    .line 47
    sput-object v2, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mPreferencesJson:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v1, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mShutdownLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mShutdown:Z

    .line 57
    sput-object p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mInstance:Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    .line 58
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mContext:Landroid/content/Context;

    .line 59
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/oculus/modules/codegen/SupportsEarlyDestroyable;

    if-eqz v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/oculus/modules/codegen/SupportsEarlyDestroyable;

    .line 61
    .local v0, "destroyer":Lcom/oculus/modules/codegen/SupportsEarlyDestroyable;
    invoke-interface {v0, p0}, Lcom/oculus/modules/codegen/SupportsEarlyDestroyable;->registerModuleForEarlyDestroy(Lcom/oculus/modules/codegen/EarlyDestroyable;)V

    .line 63
    .end local v0    # "destroyer":Lcom/oculus/modules/codegen/SupportsEarlyDestroyable;
    :cond_0
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/oculus/vrshell/panel/UnlockulusVerifier;->isUnlockulusUnlocked(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.oculus.vrshell.home.nuxpref"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mPreferencesJson:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 36
    sput-object p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mPreferencesJson:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Lcom/oculus/vrshell/home/module/NuxPreferencesModule;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mInstance:Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mInitialFetchCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/vrshell/home/module/NuxPreferencesModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/NuxPreferencesModule;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->internalFetchPreferencesCallback(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->arePreferencesValid(Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/vrshell/home/module/NuxPreferencesModule;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mShutdownLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/vrshell/home/module/NuxPreferencesModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mShutdown:Z

    return v0
.end method

.method private static arePreferencesValid(Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;)Z
    .locals 1
    .param p0, "preferences"    # Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;

    .prologue
    .line 188
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->userID:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "fetchPreferencesAsync"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Landroid/util/Pair;

    const-string v2, "forceFetchPreferences"

    const-string v3, "i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markInternetBrowserPromptSeen"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markHasNuxFinished"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markNuxSeen"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markNuxNotSeen"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markNuxNotFinished"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markPartyCallsSeen"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markSavedPromptSeen"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markTutorialPromptSeen"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setNuxSeenCount"

    const-string v3, "i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setDefaultBrowser"

    const-string v3, "s"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setNuxResult"

    const-string v3, "s"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setNuxState"

    const-string v3, "s"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-object v0
.end method

.method public static initialFetchPreferencesAsync()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$1;

    invoke-direct {v0}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$1;-><init>()V

    invoke-static {v0}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->internalFetchPreferences(Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 142
    return-void
.end method

.method private static internalFetchPreferences(Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "callback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<Ljava/lang/String;>;"
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2;

    invoke-direct {v1}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 185
    return-void
.end method

.method private internalFetchPreferencesCallback(I)V
    .locals 4
    .param p1, "callbackID"    # I

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->RVRCtxTag:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mPreferencesJson:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 193
    return-void
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public fetchPreferencesAsync(II)V
    .locals 2
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 215
    sget-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mPreferencesJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->internalFetchPreferencesCallback(I)V

    .line 229
    :goto_0
    return-void

    .line 218
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 220
    :try_start_0
    sget-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mPreferencesJson:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 221
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->internalFetchPreferencesCallback(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :goto_1
    sget-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 223
    :cond_1
    :try_start_1
    sget-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mInitialFetchCallbacks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 226
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public forceFetchPreferences(I)V
    .locals 1
    .param p1, "callbackID"    # I

    .prologue
    .line 232
    new-instance v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$3;

    invoke-direct {v0, p0, p1}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$3;-><init>(Lcom/oculus/vrshell/home/module/NuxPreferencesModule;I)V

    invoke-static {v0}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->internalFetchPreferences(Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 253
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public markHasNuxFinished()V
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 262
    invoke-virtual {v0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 261
    invoke-static {v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->markHasNuxFinished(Landroid/content/Context;)V

    .line 263
    return-void
.end method

.method public markInternetBrowserPromptSeen()V
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 257
    invoke-virtual {v0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 256
    invoke-static {v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->markInternetBrowserPromptSeen(Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method public markNuxNotFinished()V
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 277
    invoke-virtual {v0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->markNuxNotFinished(Landroid/content/Context;)V

    .line 278
    return-void
.end method

.method public markNuxNotSeen()V
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 272
    invoke-virtual {v0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 271
    invoke-static {v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->markNuxNotSeen(Landroid/content/Context;)V

    .line 273
    return-void
.end method

.method public markNuxSeen()V
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 267
    invoke-virtual {v0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 266
    invoke-static {v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->markNuxSeen(Landroid/content/Context;)V

    .line 268
    return-void
.end method

.method public markPartyCallsSeen()V
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 282
    invoke-virtual {v0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    invoke-static {v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->markPartyCallsNUXSeen(Landroid/content/Context;)V

    .line 283
    return-void
.end method

.method public markSavedPromptSeen()V
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 287
    invoke-virtual {v0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 286
    invoke-static {v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->markSavedPromptSeen(Landroid/content/Context;)V

    .line 288
    return-void
.end method

.method public markTutorialPromptSeen()V
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 292
    invoke-virtual {v0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->markTutorialPromptSeen(Landroid/content/Context;)V

    .line 293
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    sget-object v1, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->TAG:Ljava/lang/String;

    const-string v2, "NuxPreferencesModule.onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.oculus.vrshell.home.nuxpref"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "command"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "command":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 77
    sget-object v1, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->TAG:Ljava/lang/String;

    const-string v2, "No command given."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "command":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v0    # "command":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 93
    sget-object v1, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No handler for command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :sswitch_0
    const-string v2, "resetNUXDemoReel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "resetNUXController"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 83
    :pswitch_0
    sget-object v1, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending event for command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-wide v2, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->RVRCtxTag:J

    const-string v1, "onResetNUXDemoReel"

    invoke-static {v2, v3, v1}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->nativeEmitEvent(JLjava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_1
    sget-object v1, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending event for command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-wide v2, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->RVRCtxTag:J

    const-string v1, "onResetNUXController"

    invoke-static {v2, v3, v1}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->nativeEmitEvent(JLjava/lang/String;)V

    goto :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e182f02 -> :sswitch_1
        -0x64287f81 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDefaultBrowser(Ljava/lang/String;)V
    .locals 1
    .param p1, "browser"    # Ljava/lang/String;

    .prologue
    .line 296
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 297
    invoke-virtual {v0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 296
    invoke-static {v0, p1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->setDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public setNuxResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 310
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 311
    invoke-virtual {v0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    invoke-static {v0, p1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->setNuxResult(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public setNuxSeenCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 303
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 304
    invoke-virtual {v0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 303
    invoke-static {v0, p1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->setNuxSeenCount(Landroid/content/Context;I)V

    .line 307
    return-void
.end method

.method public setNuxState(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 317
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 318
    invoke-virtual {v0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    invoke-static {v0, p1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->setNuxState(Landroid/content/Context;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public shutdownModule()V
    .locals 3

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mShutdownLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mShutdown:Z

    .line 107
    const/4 v1, 0x0

    sput-object v1, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mInstance:Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    .line 108
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->mShutdownLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 109
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->TAG:Ljava/lang/String;

    const-string v2, "Trying to unregister nonexistent Receiver. This should be harmless."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
