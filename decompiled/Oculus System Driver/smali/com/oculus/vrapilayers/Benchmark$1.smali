.class final Lcom/oculus/vrapilayers/Benchmark$1;
.super Ljava/lang/Thread;
.source "Benchmark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrapilayers/Benchmark;->injectKeyEvent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:I

.field final synthetic val$keycode:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/oculus/vrapilayers/Benchmark$1;->val$action:I

    iput p2, p0, Lcom/oculus/vrapilayers/Benchmark$1;->val$keycode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 171
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 172
    new-instance v1, Landroid/view/KeyEvent;

    iget v2, p0, Lcom/oculus/vrapilayers/Benchmark$1;->val$action:I

    iget v3, p0, Lcom/oculus/vrapilayers/Benchmark$1;->val$keycode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BenchmarkJava"

    const-string v2, "Failed to inject key!"

    .line 174
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
