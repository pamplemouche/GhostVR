.class Lcom/oculus/vrshell/panel/PanelService$PanelMessageHandler;
.super Landroid/os/Handler;
.source "PanelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panel/PanelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanelMessageHandler"
.end annotation


# instance fields
.field private final isDeveloperMode:Z

.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oculus/vrshell/panel/PanelService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panel/PanelService;Z)V
    .locals 1
    .param p1, "cps"    # Lcom/oculus/vrshell/panel/PanelService;
    .param p2, "devMode"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oculus/vrshell/panel/PanelService$PanelMessageHandler;->service:Ljava/lang/ref/WeakReference;

    .line 55
    iput-boolean p2, p0, Lcom/oculus/vrshell/panel/PanelService$PanelMessageHandler;->isDeveloperMode:Z

    .line 56
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 141
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 143
    :goto_0
    return-void

    .line 95
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, "b":Landroid/os/Bundle;
    const-string v8, "panelServicePFD"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 99
    .local v6, "panelFd":Landroid/os/ParcelFileDescriptor;
    const-string v8, "panelSurface"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    .line 101
    .local v7, "panelSurface":Landroid/view/Surface;
    const-string v8, "panelBundle"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 103
    .local v4, "panelBundle":Landroid/os/Bundle;
    iget-boolean v8, p0, Lcom/oculus/vrshell/panel/PanelService$PanelMessageHandler;->isDeveloperMode:Z

    invoke-static {v4, v8}, Lcom/oculus/vrshell/panel/PanelServiceHelpers;->envArrayFromBundle(Landroid/os/Bundle;Z)[Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "panelEnv":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v2, "multiSurfaceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v3, "multiSurfaceSurfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    const-string v8, "#main"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, "keyName":Ljava/lang/String;
    const-string v8, "panelSurface:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 113
    const-string v8, "panelSurface:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    .end local v1    # "keyName":Ljava/lang/String;
    :cond_1
    const-string v8, "PanelService"

    const-string v9, "Creating panel app with environment %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 122
    invoke-static {v5}, Lcom/oculus/vrshell/panel/PanelServiceHelpers;->envArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 120
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v8, p0, Lcom/oculus/vrshell/panel/PanelService$PanelMessageHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oculus/vrshell/panel/PanelService;

    .line 125
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v11

    .line 126
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/view/Surface;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/Surface;

    .line 127
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 124
    invoke-virtual {v8, v11, v9, v10, v5}, Lcom/oculus/vrshell/panel/PanelService;->createPanelApp(I[Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "multiSurfaceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "multiSurfaceSurfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .end local v4    # "panelBundle":Landroid/os/Bundle;
    .end local v5    # "panelEnv":[Ljava/lang/String;
    .end local v6    # "panelFd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "panelSurface":Landroid/view/Surface;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    .restart local v0    # "b":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/oculus/vrshell/panel/PanelService$PanelMessageHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oculus/vrshell/panel/PanelService;

    const-string v9, "panelToken"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oculus/vrshell/panel/PanelService;->onShellTokenReady(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .prologue
    .line 61
    const/4 v5, 0x0

    .line 63
    .local v5, "verificationError":Ljava/lang/String;
    iget-object v6, p0, Lcom/oculus/vrshell/panel/PanelService$PanelMessageHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/vrshell/panel/PanelService;

    .line 64
    .local v3, "panelService":Lcom/oculus/vrshell/panel/PanelService;
    if-eqz v3, :cond_0

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 66
    .local v4, "uid":I
    invoke-static {v3, v4}, Lcom/oculus/vrshell/panel/PanelService;->access$000(Lcom/oculus/vrshell/panel/PanelService;I)Ljava/lang/String;

    move-result-object v5

    .line 71
    .end local v4    # "uid":I
    :goto_0
    if-eqz v5, :cond_1

    .line 72
    const-string v6, "PanelService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error processing MSG_CREATE_PANEL_APP:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "panelServicePFD"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 78
    .local v2, "panelFd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "panelFd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    const/4 v6, 0x0

    .line 87
    :goto_2
    return v6

    .line 68
    :cond_0
    const-string v5, "Service weak reference lost!"

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "PanelService"

    const-string v7, "Error closing ParcelFileDescriptor after verification failure:  "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v6

    goto :goto_2
.end method
