.class Lcom/oculus/horizon/service_media/OVRMediaServiceManager$3;
.super Ljava/lang/Object;
.source "OVRMediaServiceManager.java"

# interfaces
.implements Lcom/oculus/horizon/util/permissions/PermissionRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startScreenCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)V
    .locals 0

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$3;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResult(ZJ)V
    .locals 4

    .prologue
    .line 1213
    if-eqz p1, :cond_0

    const-wide/32 v0, 0x186a0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$3;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->access$500(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)Lcom/oculus/horizon/service_media/FileCapture;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$3;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->access$400(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/service_media/FileCapture$Mode;->CAPTURE_TO_DISK:Lcom/oculus/horizon/service_media/FileCapture$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/service_media/FileCapture;->start(Ljava/lang/String;Lcom/oculus/horizon/service_media/FileCapture$Mode;)Z

    .line 1216
    :cond_0
    return-void
.end method
