.class Lcom/oculus/horizon/camera/CameraManager$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/camera/CameraManager;->focusOnTouch(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/camera/CameraManager;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/oculus/horizon/camera/CameraManager$1;->this$0:Lcom/oculus/horizon/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method
