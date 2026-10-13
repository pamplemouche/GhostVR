.class Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;
.super Ljava/lang/Object;
.source "GlMediaRenderThread.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/GlMediaRenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotationSensorEventListener"
.end annotation


# instance fields
.field private final Q:Lcom/oculus/horizon/spherical/Quaternion;

.field private final V:[F

.field final synthetic this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)V
    .locals 1

    .prologue
    .line 703
    iput-object p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    new-instance v0, Lcom/oculus/horizon/spherical/Quaternion;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->Q:Lcom/oculus/horizon/spherical/Quaternion;

    .line 705
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->V:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/spherical/GlMediaRenderThread;Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;)V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;-><init>(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 730
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 709
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 710
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 712
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/spherical/RenderThreadController;->updateSensor(Landroid/hardware/SensorEvent;)V

    .line 714
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->access$700(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-static {v0, v3}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->access$702(Lcom/oculus/horizon/spherical/GlMediaRenderThread;Z)Z

    .line 716
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->isAutoHorizonEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-static {v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->access$800(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)F

    move-result v1

    iget-object v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-static {v2}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->access$900(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setDirection(FF)V

    .line 719
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/RenderThreadController;->updateSlerp(F)V

    .line 720
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-static {v0, v3}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->access$1002(Lcom/oculus/horizon/spherical/GlMediaRenderThread;Z)Z

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;->this$0:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 725
    :cond_2
    return-void
.end method
