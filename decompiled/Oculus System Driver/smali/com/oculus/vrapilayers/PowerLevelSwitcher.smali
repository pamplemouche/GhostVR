.class public Lcom/oculus/vrapilayers/PowerLevelSwitcher;
.super Ljava/lang/Object;
.source "PowerLevelSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerLevelSwitcherJava"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StartLayer(JJ)V
    .locals 2

    const-string v0, "PowerLevelSwitcherJava"

    const-string v1, "PowerLevelSwitcher StartLayer: Loading powerlevelswitcher.so"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "powerlevelswitcher"

    .line 12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    const-class v0, Lcom/oculus/vrapilayers/PowerLevelSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oculus/vrapilayers/PowerLevelSwitcher;->nativeStartLayer(JJLjava/lang/ClassLoader;)V

    return-void
.end method

.method private static native nativeStartLayer(JJLjava/lang/ClassLoader;)V
.end method
