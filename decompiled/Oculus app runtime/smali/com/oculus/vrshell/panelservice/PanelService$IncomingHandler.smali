.class Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;
.super Landroid/os/Handler;
.source "PanelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panelservice/PanelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncomingHandler"
.end annotation


# static fields
.field private static final ApiLevel_2:J = 0x1L

.field private static final ApiLevel_2_4:J = 0x2L

.field private static final ApiLevel_Debug:J = 0x3b9ac9ffL

.field private static final ApiLevel_Legacy:J = 0x0L

.field private static final DebugVersionCode:J = 0x3b9ac9ffL


# instance fields
.field legacyPanelSurfaceEmulation:Z

.field serviceWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oculus/vrshell/panelservice/PanelService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panelservice/PanelService;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->serviceWeakRef:Ljava/lang/ref/WeakReference;

    .line 50
    invoke-virtual {p1}, Lcom/oculus/vrshell/panelservice/PanelService;->shouldSimulateLegacyPanelSurfaceAux()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->legacyPanelSurfaceEmulation:Z

    return-void
.end method

.method private getShellVersionFromEvidence(Ljava/lang/String;I)J
    .locals 7

    const-string v0, "CppPanelService"

    int-to-long v1, p2

    const-wide/32 v3, 0x3b9ac9ff

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    return-wide v3

    :cond_0
    const-string p2, "\\."

    .line 208
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 209
    aget-object v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 210
    array-length v3, p2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-lt v3, v5, :cond_1

    aget-object v1, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 213
    :cond_1
    :try_start_0
    array-length v3, p2

    const/4 v6, 0x3

    if-lt v3, v6, :cond_2

    .line 214
    aget-object v3, p2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse patch value of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v5

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-ne v2, v4, :cond_3

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_3
    if-ne v2, v5, :cond_4

    if-nez v1, :cond_4

    const-wide/16 p1, 0x1

    return-wide p1

    .line 227
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Falling back to last known good shell api level for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x2

    return-wide p1
.end method

.method private handleActivityToken(Landroid/os/Message;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "panelToken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->serviceWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panelservice/PanelService;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/panelservice/PanelService;->onShellTokenReady(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const-string p1, "CppPanelService"

    const-string v0, "Service weak reference lost! Unable to handle activity token."

    .line 111
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleCreatePanelApp(Landroid/os/Message;)V
    .locals 11

    const-string v0, "CppPanelService"

    const-string v1, "BEGIN: Initializing panel application via MSG_CREATE_PANEL_APP."

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "panelServicePFD"

    .line 122
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    const-string v2, "panelSurface"

    .line 124
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    const-string v3, "panelBundle"

    .line 126
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 129
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 134
    iget-boolean v5, p0, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->legacyPanelSurfaceEmulation:Z

    if-nez v5, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->unpackSurfaces(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v4

    .line 141
    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "panelSurfaceAux"

    .line 145
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    if-eqz p1, :cond_1

    const-string v5, "aux"

    .line 147
    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->serviceWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/oculus/vrshell/panelservice/PanelService;

    const-string p1, "_oc_analytics_session_id"

    .line 159
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "_oc_shell_version_code"

    .line 160
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "_oc_shell_version_name"

    .line 161
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 165
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 167
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 168
    invoke-direct {p0, v6, p1}, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->getShellVersionFromEvidence(Ljava/lang/String;I)J

    move-result-wide v8

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Configuring service for Shell with versionName "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and versionCode "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " selected API Level "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v5, v2, v4, v3}, Lcom/oculus/vrshell/panelservice/PanelService;->createNativePanelAppInstance(Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)J

    move-result-wide v6

    .line 188
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v10

    .line 187
    invoke-static/range {v5 .. v10}, Lcom/oculus/vrshell/panelservice/PanelService;->access$000(Lcom/oculus/vrshell/panelservice/PanelService;JJI)V

    const-string p1, "END: Initializing panel application via MSG_CREATE_PANEL_APP."

    .line 189
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing 1 or more required environment keys required for versioning and telemetry."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private unpackSurfaces(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
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

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    const/16 v4, 0xd

    .line 236
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

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 99
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->handleActivityToken(Landroid/os/Message;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->handleCreatePanelApp(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;->serviceWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panelservice/PanelService;

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panelservice/PanelService;->verifyVrShellUID(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Service weak reference lost!"

    :goto_0
    if-eqz v0, :cond_1

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error processing MSG_CREATE_PANEL_APP:  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CppPanelService"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "panelServicePFD"

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 74
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Error closing ParcelFileDescriptor after verification failure:  "

    .line 76
    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p1, 0x0

    return p1

    .line 82
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
