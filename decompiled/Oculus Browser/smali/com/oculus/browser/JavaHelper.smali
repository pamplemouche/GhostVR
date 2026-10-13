.class public final Lcom/oculus/browser/JavaHelper;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final TAG:Ljava/lang/String; = "JavaHelper"

.field public static assertsEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "JavaHelper"

    const-string v1, "initializing JavaHelper"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v1, "debug.oculus.browser.jchecks"

    .line 2
    invoke-static {v1, v0}, Lcom/oculus/vrapi/SystemProps;->getBool(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/oculus/browser/JavaHelper;->assertsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runtimeAssert(ZLjava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/oculus/browser/JavaHelper;->assertsEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
