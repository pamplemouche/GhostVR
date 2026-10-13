.class Lcom/oculus/modules/ControllerStateModuleImpl$Observer;
.super Ljava/lang/Object;
.source "ControllerStateModuleImpl.java"

# interfaces
.implements Lcom/oculus/os/Controllers$ControllerStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/ControllerStateModuleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/ControllerStateModuleImpl;


# direct methods
.method private constructor <init>(Lcom/oculus/modules/ControllerStateModuleImpl;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/oculus/modules/ControllerStateModuleImpl$Observer;->this$0:Lcom/oculus/modules/ControllerStateModuleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/modules/ControllerStateModuleImpl;Lcom/oculus/modules/ControllerStateModuleImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/modules/ControllerStateModuleImpl;
    .param p2, "x1"    # Lcom/oculus/modules/ControllerStateModuleImpl$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/oculus/modules/ControllerStateModuleImpl$Observer;-><init>(Lcom/oculus/modules/ControllerStateModuleImpl;)V

    return-void
.end method


# virtual methods
.method public updateControllerStatus(ILcom/oculus/os/Controllers$ControllerInfo;)V
    .locals 2
    .param p1, "deviceType"    # I
    .param p2, "controllerInfo"    # Lcom/oculus/os/Controllers$ControllerInfo;

    .prologue
    .line 23
    new-instance v0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;-><init>()V

    .line 24
    .local v0, "update":Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;
    if-nez p1, :cond_0

    const-string v1, "primary"

    :goto_0
    iput-object v1, v0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;->type:Ljava/lang/String;

    .line 25
    iget-object v1, p2, Lcom/oculus/os/Controllers$ControllerInfo;->status:Lcom/oculus/os/Controllers$ControllerStatus;

    invoke-virtual {v1}, Lcom/oculus/os/Controllers$ControllerStatus;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;->status:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/oculus/modules/ControllerStateModuleImpl$Observer;->this$0:Lcom/oculus/modules/ControllerStateModuleImpl;

    invoke-static {v1, v0}, Lcom/oculus/modules/ControllerStateModuleImpl;->access$000(Lcom/oculus/modules/ControllerStateModuleImpl;Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;)V

    .line 27
    return-void

    .line 24
    :cond_0
    const-string v1, "secondary"

    goto :goto_0
.end method
