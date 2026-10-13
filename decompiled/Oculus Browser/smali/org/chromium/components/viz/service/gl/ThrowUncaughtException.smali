.class public abstract Lorg/chromium/components/viz/service/gl/ThrowUncaughtException;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static post()V
    .locals 1

    .line 1
    new-instance v0, LzV0;

    invoke-direct {v0}, LzV0;-><init>()V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-void
.end method
