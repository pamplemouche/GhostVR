.class final Lcom/oculus/vrapi/Appshot$1;
.super Ljava/lang/Object;
.source "AppShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrapi/Appshot;->init(Landroid/content/Context;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 79
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 80
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrapi/Appshot;->access$002(Landroid/os/Looper;)Landroid/os/Looper;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {v0}, Lcom/oculus/vrapi/Appshot;->access$100(Landroid/os/Handler;)V

    .line 82
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
