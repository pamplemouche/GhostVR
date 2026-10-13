.class public Lcom/oculus/vrapilayers/UtilPoller;
.super Ljava/lang/Object;
.source "UtilPoller.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UtilPollerJava"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StartLayer(JJ)V
    .locals 2

    const-string v0, "UtilPollerJava"

    const-string v1, "UtilPoller StartLayer: Loading utilpoller.so"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "utilpoller"

    .line 28
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    const-class v0, Lcom/oculus/vrapilayers/UtilPoller;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oculus/vrapilayers/UtilPoller;->nativeStartLayer(JJLjava/lang/ClassLoader;)V

    return-void
.end method

.method private static native nativeStartLayer(JJLjava/lang/ClassLoader;)V
.end method
