.class Lcom/oculus/horizon/service_media/OVRMediaService$1;
.super Ljava/lang/Object;
.source "OVRMediaService.java"

# interfaces
.implements Lcom/oculus/horizon/service_media/AppSwitchManager$AppSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/OVRMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/OVRMediaService;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service_media/OVRMediaService;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$1;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppSwitch(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService$1;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->setCurrentRunningApp(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService$1;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$100(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/AppSwitchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service_media/AppSwitchManager;->onAppSwitch(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onForegroundAppUpdate()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService$1;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$100(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/AppSwitchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AppSwitchManager;->onAppSwitch()V

    .line 83
    return-void
.end method
