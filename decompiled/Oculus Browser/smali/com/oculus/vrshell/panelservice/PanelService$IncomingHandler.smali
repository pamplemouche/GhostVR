.class public Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;
.super Landroid/os/Handler;
.source "PG"


# static fields
.field public static final ApiLevel_2:J = 0x1L

.field public static final ApiLevel_2_4:J = 0x2L

.field public static final ApiLevel_Debug:J = 0x3b9ac9ffL

.field public static final ApiLevel_Legacy:J = 0x0L

.field public static final DebugVersionCode:J = 0x3b9ac9ffL


# instance fields
.field public legacyPanelSurfaceEmulation:Z

.field public serviceWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/oculus/vrshell/panelservice/PanelService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->serviceWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Lcom/oculus/vrshell/panelservice/PanelService;->shouldSimulateLegacyPanelSurfaceAux()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->legacyPanelSurfaceEmulation:Z

    return-void
.end method

.method private getShellVersionFromEvidence(Ljava/lang/String;I)J
    .locals 5

    int-to-long v0, p2

    const-wide/32 v2, 0x3b9ac9ff

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-wide v2

    :cond_0
    const-string p2, "\\."

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    aget-object v0, p1, p2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    aget-object p2, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 4
    :cond_1
    :try_start_0
    array-length v1, p1

    const/4 v4, 0x3

    if-lt v1, v4, :cond_2

    .line 5
    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    aget-object p1, p1, v3

    :cond_2
    :goto_0
    if-ne v0, v2, :cond_3

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_3
    if-ne v0, v3, :cond_4

    if-nez p2, :cond_4

    const-wide/16 p1, 0x1

    return-wide p1

    :cond_4
    const-wide/16 p1, 0x2

    return-wide p1
.end method

.method private handleActivityToken(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "panelToken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->serviceWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panelservice/PanelService;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/panelservice/PanelService;->onShellTokenReady(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const-string p1, "CppPanelService"

    const-string v0, "Service weak reference lost! Unable to handle activity token."

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleCreatePanelApp(Landroid/os/Message;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "panelServicePFD"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    const-string v1, "panelSurface"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    const-string v2, "panelBundle"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-boolean v4, p0, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->legacyPanelSurfaceEmulation:Z

    if-nez v4, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->unpackSurfaces(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v3

    .line 8
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "panelSurfaceAux"

    .line 9
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    if-eqz p1, :cond_1

    const-string v4, "aux"

    .line 10
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->serviceWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/oculus/vrshell/panelservice/PanelService;

    const-string p1, "_oc_analytics_session_id"

    .line 12
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "_oc_shell_version_code"

    .line 13
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "_oc_shell_version_name"

    .line 14
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 16
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 17
    invoke-direct {p0, v5, p1}, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->getShellVersionFromEvidence(Ljava/lang/String;I)J

    move-result-wide v7

    .line 18
    invoke-virtual {v4, v1, v3, v2}, Lcom/oculus/vrshell/panelservice/PanelService;->createNativePanelAppInstance(Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)J

    move-result-wide v5

    .line 19
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v9

    .line 20
    invoke-static/range {v4 .. v9}, Lcom/oculus/vrshell/panelservice/PanelService;->access$000(Lcom/oculus/vrshell/panelservice/PanelService;JJI)V

    return-void

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing 1 or more required environment keys required for versioning and telemetry."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private unpackSurfaces(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "panelSurface:"

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    const/16 v4, 0xd

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->handleActivityToken(Landroid/os/Message;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->handleCreatePanelApp(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->serviceWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panelservice/PanelService;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panelservice/PanelService;->verifyVrShellUID(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Service weak reference lost!"

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error processing MSG_CREATE_PANEL_APP:  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CppPanelService"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "panelServicePFD"

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Error closing ParcelFileDescriptor after verification failure:  "

    .line 8
    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p1, 0x0

    return p1

    .line 9
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
