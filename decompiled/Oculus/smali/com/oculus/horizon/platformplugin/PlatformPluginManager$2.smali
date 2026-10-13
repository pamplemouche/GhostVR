.class Lcom/oculus/horizon/platformplugin/PlatformPluginManager$2;
.super Ljava/util/TimerTask;
.source "PlatformPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->startReaper()V
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
    .line 467
    iput-object p1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$2;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$2;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->removeDeadRefs()V

    .line 471
    return-void
.end method
