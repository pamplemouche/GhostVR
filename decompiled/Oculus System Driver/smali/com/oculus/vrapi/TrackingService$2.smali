.class Lcom/oculus/vrapi/TrackingService$2;
.super Ljava/lang/Object;
.source "TrackingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/TrackingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrapi/TrackingService;


# direct methods
.method constructor <init>(Lcom/oculus/vrapi/TrackingService;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/oculus/vrapi/TrackingService$2;->this$0:Lcom/oculus/vrapi/TrackingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "TrackingService"

    const-string v1, "Shutting down"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingService$2;->this$0:Lcom/oculus/vrapi/TrackingService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/vrapi/TrackingService;->stopForeground(Z)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingService$2;->this$0:Lcom/oculus/vrapi/TrackingService;

    invoke-virtual {v0}, Lcom/oculus/vrapi/TrackingService;->stopSelf()V

    return-void
.end method
