.class public Lcom/oculus/vrapilayers/AutoDriver;
.super Ljava/lang/Object;
.source "AutoDriver.java"


# static fields
.field static final HMD:I = 0x2

.field static final LEFT_CONTROLLER:I = 0x0

.field static final RIGHT_CONTROLLER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AutoDriver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StartLayer(JJ)V
    .locals 2

    const-string v0, "AutoDriver"

    const-string v1, "AutoDriver StartLayer: Loading vrapilayer.so"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "autodriver"

    .line 56
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    const-class v0, Lcom/oculus/vrapilayers/AutoDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oculus/vrapilayers/AutoDriver;->nativeStartLayer(JJLjava/lang/ClassLoader;)V

    .line 60
    new-instance p0, Lcom/oculus/vrapilayers/AutoDriver$1;

    invoke-direct {p0}, Lcom/oculus/vrapilayers/AutoDriver$1;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/oculus/vrapilayers/AutoDriver$1;->start()V

    return-void
.end method

.method private static native nativeStartLayer(JJLjava/lang/ClassLoader;)V
.end method

.method public static native updateButtons([Z[F)V
.end method

.method public static updateDataLoop()V
    .locals 10

    .line 32
    new-instance v0, Lcom/oculus/InputInjectionClient;

    invoke-direct {v0}, Lcom/oculus/InputInjectionClient;-><init>()V

    .line 34
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/oculus/InputInjectionClient;->getCurrentPose(I)[F

    move-result-object v2

    const/4 v3, 0x1

    .line 39
    invoke-virtual {v0, v3}, Lcom/oculus/InputInjectionClient;->getCurrentPose(I)[F

    move-result-object v4

    const/4 v5, 0x2

    .line 40
    invoke-virtual {v0, v5}, Lcom/oculus/InputInjectionClient;->getCurrentPose(I)[F

    move-result-object v6

    .line 41
    invoke-virtual {v0}, Lcom/oculus/InputInjectionClient;->getCurrentTurnOff()[Z

    move-result-object v7

    .line 42
    invoke-virtual {v0}, Lcom/oculus/InputInjectionClient;->getCurrentButtons()[Z

    move-result-object v8

    .line 43
    invoke-virtual {v0}, Lcom/oculus/InputInjectionClient;->getCurrentJoysticks()[F

    move-result-object v9

    .line 45
    invoke-static {v2, v1}, Lcom/oculus/vrapilayers/AutoDriver;->updatePose([FI)V

    .line 46
    invoke-static {v4, v3}, Lcom/oculus/vrapilayers/AutoDriver;->updatePose([FI)V

    .line 47
    invoke-static {v6, v5}, Lcom/oculus/vrapilayers/AutoDriver;->updatePose([FI)V

    .line 48
    invoke-static {v7}, Lcom/oculus/vrapilayers/AutoDriver;->updateTurnOff([Z)V

    .line 49
    invoke-static {v8, v9}, Lcom/oculus/vrapilayers/AutoDriver;->updateButtons([Z[F)V

    goto :goto_0
.end method

.method public static native updatePose([FI)V
.end method

.method public static native updateTurnOff([Z)V
.end method
