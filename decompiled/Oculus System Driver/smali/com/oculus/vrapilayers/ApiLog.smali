.class public Lcom/oculus/vrapilayers/ApiLog;
.super Ljava/lang/Object;
.source "ApiLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApiLog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StartLayer(JJ)V
    .locals 2

    const-string v0, "ApiLog"

    const-string v1, "ApiLog StartLayer: Loading libapilog.so"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "apilog"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    const-class v0, Lcom/oculus/vrapilayers/ApiLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oculus/vrapilayers/ApiLog;->nativeStartLayer(JJLjava/lang/ClassLoader;)V

    return-void
.end method

.method private static native nativeStartLayer(JJLjava/lang/ClassLoader;)V
.end method
