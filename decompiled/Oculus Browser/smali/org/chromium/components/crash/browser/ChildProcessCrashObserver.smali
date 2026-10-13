.class public Lorg/chromium/components/crash/browser/ChildProcessCrashObserver;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LWS0;


# direct methods
.method public static childCrashed(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/components/crash/browser/ChildProcessCrashObserver;->a:LWS0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "ChildCrashObserver"

    const-string v1, "Ignoring crash observed before a callback was registered..."

    .line 2
    invoke-static {v0, v1, p0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {v0, p0}, LWS0;->childCrashed(I)V

    return-void
.end method
