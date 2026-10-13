.class Lcom/oculus/vrshell/home/StartRenderingOverlaysService$PanelMessageHandler;
.super Landroid/os/Handler;
.source "StartRenderingOverlaysService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/home/StartRenderingOverlaysService;
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
            "Lcom/oculus/vrshell/home/StartRenderingOverlaysService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/StartRenderingOverlaysService;Z)V
    .locals 1
    .param p1, "cps"    # Lcom/oculus/vrshell/home/StartRenderingOverlaysService;
    .param p2, "devMode"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService$PanelMessageHandler;->service:Ljava/lang/ref/WeakReference;

    .line 51
    iput-boolean p2, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService$PanelMessageHandler;->isDeveloperMode:Z

    .line 52
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, "b":Landroid/os/Bundle;
    const-string v8, "panelSurface"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 63
    .local v4, "panelSurface":Landroid/view/Surface;
    if-nez v4, :cond_0

    .line 64
    const-string v8, "StartRenderingOverlaysService"

    const-string v9, "Received invalid surface, aborting"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_0
    const-string v8, "panelBundle"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 70
    .local v2, "panelBundle":Landroid/os/Bundle;
    iget-boolean v8, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService$PanelMessageHandler;->isDeveloperMode:Z

    .line 71
    invoke-static {v2, v8}, Lcom/oculus/vrshell/panel/PanelServiceHelpers;->envArrayFromBundle(Landroid/os/Bundle;Z)[Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "panelEnv":[Ljava/lang/String;
    const/4 v6, -0x1

    .line 74
    .local v6, "sharedMemoryFd":I
    const-string v8, "sharedMemoryFd"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 75
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v5, :cond_1

    .line 76
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v6

    .line 79
    :cond_1
    const-string v8, "StartRenderingOverlaysService"

    const-string v9, "Creating panel app with environment %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 83
    invoke-static {v3}, Lcom/oculus/vrshell/panel/PanelServiceHelpers;->envArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 81
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 79
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v8, "panelWidth"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 85
    .local v7, "width":I
    const-string v8, "panelHeight"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "height":I
    iget-object v8, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService$PanelMessageHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;

    invoke-virtual {v8, v7, v1}, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->setDimensions(II)V

    .line 87
    iget-object v8, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService$PanelMessageHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;

    invoke-static {v8, v4, v3, v6}, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->access$000(Lcom/oculus/vrshell/home/StartRenderingOverlaysService;Landroid/view/Surface;[Ljava/lang/String;I)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
