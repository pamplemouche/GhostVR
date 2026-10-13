.class public Lcom/oculus/vrapilayers/VrIntegrationLayer;
.super Ljava/lang/Object;
.source "VrIntegrationLayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VrIntegrationLayerJava"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsThreadUnityMain()Z
    .locals 2

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityMain"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static StartLayer(JJ)V
    .locals 2

    const-string v0, "VrIntegrationLayerJava"

    const-string v1, "VrIntegrationLayer StartLayer: Loading libvrintegrationlayer.so"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "vrintegrationlayer"

    .line 32
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    const-class v0, Lcom/oculus/vrapilayers/Sample;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oculus/vrapilayers/VrIntegrationLayer;->nativeStartLayer(JJLjava/lang/ClassLoader;)V

    return-void
.end method

.method private static native nativeStartLayer(JJLjava/lang/ClassLoader;)V
.end method
