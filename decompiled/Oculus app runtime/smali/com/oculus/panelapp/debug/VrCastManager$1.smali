.class Lcom/oculus/panelapp/debug/VrCastManager$1;
.super Ljava/lang/Object;
.source "VrCastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/VrCastManager;->onDevicesFound(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/VrCastManager;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/VrCastManager;Ljava/util/List;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/oculus/panelapp/debug/VrCastManager$1;->this$0:Lcom/oculus/panelapp/debug/VrCastManager;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/VrCastManager$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/oculus/panelapp/debug/VrCastManager$1;->this$0:Lcom/oculus/panelapp/debug/VrCastManager;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/VrCastManager;->access$000(Lcom/oculus/panelapp/debug/VrCastManager;)Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/debug/VrCastManager$1;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/debug/VrCastDevicesAdapter;->onDevicesFound(Ljava/util/List;)V

    return-void
.end method
