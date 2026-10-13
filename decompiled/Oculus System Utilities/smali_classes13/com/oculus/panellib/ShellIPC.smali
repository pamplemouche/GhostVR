.class public Lcom/oculus/panellib/ShellIPC;
.super Ljava/lang/Object;
.source "ShellIPC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panellib/ShellIPC$Listener;
    }
.end annotation


# static fields
.field private static commandBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static oneShotListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/panellib/ShellIPC$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oculus/panellib/ShellIPC;->commandBuffer:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oculus/panellib/ShellIPC;->oneShotListeners:Ljava/util/ArrayList;

    .line 13
    invoke-static {}, Lcom/oculus/panellib/ShellIPC;->nativeInit()V

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized addToCommandBuffer(Ljava/lang/String;)V
    .locals 2
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v1, Lcom/oculus/panellib/ShellIPC;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oculus/panellib/ShellIPC;->commandBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v1

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static dialogHide()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "dialog hide"

    invoke-static {v0}, Lcom/oculus/panellib/ShellIPC;->addToCommandBuffer(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static dialogShow(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "description"    # Lorg/json/JSONObject;

    .prologue
    .line 17
    const-string v0, "dialog show %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panellib/ShellIPC;->addToCommandBuffer(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static declared-synchronized getCommandBuffer()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    const-class v2, Lcom/oculus/panellib/ShellIPC;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/oculus/panellib/ShellIPC;->commandBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 50
    .local v0, "commandArray":[Ljava/lang/String;
    sget-object v1, Lcom/oculus/panellib/ShellIPC;->commandBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "commandArray":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 51
    .restart local v0    # "commandArray":[Ljava/lang/String;
    sget-object v1, Lcom/oculus/panellib/ShellIPC;->commandBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v2

    return-object v0

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static hideKeyboard(Ljava/lang/String;)V
    .locals 3
    .param p0, "keyboardCookie"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "keyboard close %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panellib/ShellIPC;->addToCommandBuffer(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private static native nativeInit()V
.end method

.method public static recvCommandBuffer([Ljava/lang/String;)V
    .locals 6
    .param p0, "commandArray"    # [Ljava/lang/String;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    sget-object v3, Lcom/oculus/panellib/ShellIPC;->oneShotListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    :cond_0
    return-void

    .line 60
    :cond_1
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 61
    .local v0, "command":Ljava/lang/String;
    sget-object v5, Lcom/oculus/panellib/ShellIPC;->oneShotListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 62
    .local v2, "listenerItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oculus/panellib/ShellIPC$Listener;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panellib/ShellIPC$Listener;

    .line 64
    .local v1, "listener":Lcom/oculus/panellib/ShellIPC$Listener;
    invoke-interface {v1, v0}, Lcom/oculus/panellib/ShellIPC$Listener;->listen(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 60
    .end local v1    # "listener":Lcom/oculus/panellib/ShellIPC$Listener;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static registerOneShotListener(Lcom/oculus/panellib/ShellIPC$Listener;)V
    .locals 1
    .param p0, "listener"    # Lcom/oculus/panellib/ShellIPC$Listener;

    .prologue
    .line 72
    sget-object v0, Lcom/oculus/panellib/ShellIPC;->oneShotListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public static showKeyboard(Ljava/lang/String;)V
    .locals 3
    .param p0, "keyboardCookie"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "keyboard open %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panellib/ShellIPC;->addToCommandBuffer(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static tooltipHide()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "tooltip hide"

    invoke-static {v0}, Lcom/oculus/panellib/ShellIPC;->addToCommandBuffer(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static tooltipShow(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "tooltipConfigurationJson"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string v0, "tooltip show %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panellib/ShellIPC;->addToCommandBuffer(Ljava/lang/String;)V

    goto :goto_0
.end method
