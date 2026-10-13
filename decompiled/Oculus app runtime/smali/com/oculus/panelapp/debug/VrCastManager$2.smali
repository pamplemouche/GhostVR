.class Lcom/oculus/panelapp/debug/VrCastManager$2;
.super Ljava/lang/Object;
.source "VrCastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/VrCastManager;->onDeviceStateUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/VrCastManager;

.field final synthetic val$device:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/VrCastManager;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastManager$2;->this$0:Lcom/oculus/panelapp/debug/VrCastManager;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/VrCastManager$2;->val$device:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastManager$2;->this$0:Lcom/oculus/panelapp/debug/VrCastManager;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/VrCastManager;->access$100(Lcom/oculus/panelapp/debug/VrCastManager;)Lcom/oculus/panelapp/debug/VrCastConnectView;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/debug/VrCastManager$2;->val$device:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/debug/VrCastConnectView;->onDeviceStateUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    return-void
.end method
