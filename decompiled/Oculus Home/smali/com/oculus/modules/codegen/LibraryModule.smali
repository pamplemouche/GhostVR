.class public abstract Lcom/oculus/modules/codegen/LibraryModule;
.super Ljava/lang/Object;
.source "LibraryModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;,
        Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;
    }
.end annotation


# static fields
.field protected static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/modules/codegen/LibraryModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/LibraryModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/LibraryModule;->nativeInvokeCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected static final describe()Ljava/util/List;
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
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "addLibraryItem"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "cancelDownload"

    const-string v3, "s"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "downloadAndInstall"

    const-string v3, "ss"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Landroid/util/Pair;

    const-string v2, "downloadAndInstallAsync"

    const-string v3, "+ssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Landroid/util/Pair;

    const-string v2, "fetchLibraryAsync"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Landroid/util/Pair;

    const-string v2, "fetchLibraryItemAsync"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Landroid/util/Pair;

    const-string v2, "fetchUnknownSourcesAsync"

    const-string v3, "+bii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getInitialLibrary"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getInstalledAppPermissions"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getPermissionInfoAsync"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Landroid/util/Pair;

    const-string v2, "isInstalledAsync"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Landroid/util/Pair;

    const-string v2, "networkRefreshAsync"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Landroid/util/Pair;

    const-string v2, "toggleOffUnseenAsync"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Landroid/util/Pair;

    const-string v2, "uninstall"

    const-string v3, "+ssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Landroid/util/Pair;

    const-string v2, "updateRecentActivity"

    const-string v3, "s"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final addLibraryItem(Ljava/lang/String;II)V
    .locals 1
    .param p1, "libraryItemJson"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 78
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/LibraryModule$1;-><init>(Lcom/oculus/modules/codegen/LibraryModule;II)V

    .line 94
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/LibraryModule;->addLibraryItemImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 95
    return-void
.end method

.method protected abstract addLibraryItemImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final cancelDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/oculus/modules/codegen/LibraryModule;->cancelDownloadImpl(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected abstract cancelDownloadImpl(Ljava/lang/String;)V
.end method

.method protected final downloadAndInstall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestOrigin"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p2}, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/LibraryModule;->downloadAndInstallImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;)V

    .line 101
    return-void
.end method

.method protected final downloadAndInstallAsync(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestOrigin"    # Ljava/lang/String;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 103
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$2;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/LibraryModule$2;-><init>(Lcom/oculus/modules/codegen/LibraryModule;II)V

    .line 118
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-static {p2}, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/oculus/modules/codegen/LibraryModule;->downloadAndInstallAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;Lcom/oculus/modules/codegen/Resolver;)V

    .line 119
    return-void
.end method

.method protected abstract downloadAndInstallAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract downloadAndInstallImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;)V
.end method

.method protected final emitOnLibraryUpdated(Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;)V
    .locals 4
    .param p1, "data"    # Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/oculus/modules/codegen/LibraryModule;->RVRCtxTag:J

    const-string v2, "LibraryModule_onLibraryUpdated"

    invoke-virtual {p1}, Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/modules/codegen/LibraryModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected final fetchLibraryAsync(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 121
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/LibraryModule$3;-><init>(Lcom/oculus/modules/codegen/LibraryModule;II)V

    .line 137
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Lorg/json/JSONObject;>;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/LibraryModule;->fetchLibraryAsyncImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 138
    return-void
.end method

.method protected abstract fetchLibraryAsyncImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;)V"
        }
    .end annotation
.end method

.method protected final fetchLibraryItemAsync(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 140
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/LibraryModule$4;-><init>(Lcom/oculus/modules/codegen/LibraryModule;II)V

    .line 156
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lorg/json/JSONObject;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/LibraryModule;->fetchLibraryItemAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 157
    return-void
.end method

.method protected abstract fetchLibraryItemAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final fetchUnknownSourcesAsync(ZII)V
    .locals 1
    .param p1, "displaySideloadedAppsEnabled"    # Z
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 159
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/LibraryModule$5;-><init>(Lcom/oculus/modules/codegen/LibraryModule;II)V

    .line 175
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Lorg/json/JSONObject;>;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/LibraryModule;->fetchUnknownSourcesAsyncImpl(ZLcom/oculus/modules/codegen/Resolver;)V

    .line 176
    return-void
.end method

.method protected abstract fetchUnknownSourcesAsyncImpl(ZLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;)V"
        }
    .end annotation
.end method

.method protected final getInitialLibrary(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 178
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/LibraryModule$6;-><init>(Lcom/oculus/modules/codegen/LibraryModule;II)V

    .line 194
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Lorg/json/JSONObject;>;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/LibraryModule;->getInitialLibraryImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 195
    return-void
.end method

.method protected abstract getInitialLibraryImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;)V"
        }
    .end annotation
.end method

.method protected final getInstalledAppPermissions(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 197
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$7;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/LibraryModule$7;-><init>(Lcom/oculus/modules/codegen/LibraryModule;II)V

    .line 213
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Lorg/json/JSONObject;>;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/LibraryModule;->getInstalledAppPermissionsImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 214
    return-void
.end method

.method protected abstract getInstalledAppPermissionsImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;)V"
        }
    .end annotation
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/modules/codegen/LibraryModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final getPermissionInfoAsync(Ljava/lang/String;II)V
    .locals 1
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 216
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$8;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/LibraryModule$8;-><init>(Lcom/oculus/modules/codegen/LibraryModule;II)V

    .line 232
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lorg/json/JSONObject;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/LibraryModule;->getPermissionInfoAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 233
    return-void
.end method

.method protected abstract getPermissionInfoAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final isInstalledAsync(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 235
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$9;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/LibraryModule$9;-><init>(Lcom/oculus/modules/codegen/LibraryModule;II)V

    .line 251
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/LibraryModule;->isInstalledAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 252
    return-void
.end method

.method protected abstract isInstalledAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final networkRefreshAsync(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 254
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/LibraryModule$10;-><init>(Lcom/oculus/modules/codegen/LibraryModule;II)V

    .line 269
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/LibraryModule;->networkRefreshAsyncImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 270
    return-void
.end method

.method protected abstract networkRefreshAsyncImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method protected final toggleOffUnseenAsync(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 272
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$11;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/LibraryModule$11;-><init>(Lcom/oculus/modules/codegen/LibraryModule;II)V

    .line 287
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/LibraryModule;->toggleOffUnseenAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 288
    return-void
.end method

.method protected abstract toggleOffUnseenAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final uninstall(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestOrigin"    # Ljava/lang/String;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 290
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$12;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/LibraryModule$12;-><init>(Lcom/oculus/modules/codegen/LibraryModule;II)V

    .line 305
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-static {p2}, Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;->valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/oculus/modules/codegen/LibraryModule;->uninstallImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;Lcom/oculus/modules/codegen/Resolver;)V

    .line 306
    return-void
.end method

.method protected abstract uninstallImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/LibraryModule$LibraryRequestOrigin;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final updateRecentActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/oculus/modules/codegen/LibraryModule;->updateRecentActivityImpl(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method protected abstract updateRecentActivityImpl(Ljava/lang/String;)V
.end method
