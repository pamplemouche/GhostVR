.class public Lcom/oculus/vrapilayers/Sample;
.super Ljava/lang/Object;
.source "Sample.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SampleJava"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StartLayer(JJ)V
    .locals 2

    const-string v0, "SampleJava"

    const-string v1, "Sample StartLayer: Loading vrapilayers.so"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "vrapilayers"

    .line 32
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    const-class v0, Lcom/oculus/vrapilayers/Sample;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oculus/vrapilayers/Sample;->nativeStartLayer(JJLjava/lang/ClassLoader;)V

    return-void
.end method

.method private static native nativeStartLayer(JJLjava/lang/ClassLoader;)V
.end method
