.class Lcom/oculus/horizon/platformplugin/PlatformPluginManager$4;
.super Ljava/lang/Object;
.source "PlatformPluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->tearDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$4;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$4;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-static {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$200(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 670
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$300(Z)V

    .line 671
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$400()V

    .line 672
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$500()V

    .line 673
    monitor-exit v1

    .line 674
    return-void

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
