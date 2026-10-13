.class Lcom/oculus/horizon/service_media/vrcast/VrCastManager$1;
.super Ljava/lang/Object;
.source "VrCastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/vrcast/VrCastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$1;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$1;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$000(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V

    .line 48
    return-void
.end method
