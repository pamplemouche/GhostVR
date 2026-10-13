.class public Llibraries/debug/log/BLog;
.super Ljava/lang/Object;
.source "BLog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StringFormatUse",
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static fbLog:Llibraries/debug/log/FbLog;

.field private static volatile logLevel:I

.field private static final logLevelCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llibraries/debug/log/BLogLevelCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x5

    sput v0, Llibraries/debug/log/BLog;->logLevel:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Llibraries/debug/log/BLog;->logLevelCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 442
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 443
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Llibraries/debug/log/FbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 452
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 454
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 458
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 460
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x3

    .line 463
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v1, :cond_0

    .line 464
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 466
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x3

    .line 470
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 471
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 473
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;
    .param p7, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x3

    .line 567
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 568
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 570
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 667
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 668
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Llibraries/debug/log/FbLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 590
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 591
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p1}, Llibraries/debug/log/FbLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 600
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 601
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 603
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 607
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 608
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 610
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x3

    .line 619
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v1, :cond_0

    .line 620
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 621
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 623
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .param p6, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x3

    .line 633
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 634
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    aput-object p6, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 635
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 637
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 583
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 584
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 586
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 400
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 401
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 402
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1}, Llibraries/debug/log/FbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 410
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 411
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 416
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 417
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x3

    .line 422
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v1, :cond_0

    .line 423
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x3

    .line 428
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 429
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;
    .param p7, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x3

    .line 485
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 486
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 648
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 649
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 650
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1, p2}, Llibraries/debug/log/FbLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 507
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 508
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 509
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p2, p1}, Llibraries/debug/log/FbLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    invoke-static {p0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 517
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 518
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 519
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 521
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 524
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 525
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 526
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 528
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x3

    .line 537
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v1, :cond_0

    .line 538
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 539
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 541
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .param p6, "arg4"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x3

    .line 551
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 552
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    aput-object p6, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 553
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 555
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 500
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 501
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 502
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1260
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1261
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Llibraries/debug/log/FbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1263
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1467
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1468
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1469
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Llibraries/debug/log/FbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1471
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1363
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1364
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1365
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1366
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Llibraries/debug/log/FbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1390
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1391
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1392
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p1}, Llibraries/debug/log/FbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1394
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1400
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1401
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1402
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1404
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1407
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1408
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1409
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1411
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1420
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1421
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1422
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1424
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .param p6, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1434
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1435
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1436
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1438
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1383
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1384
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1385
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1387
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1242
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1243
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1244
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1}, Llibraries/debug/log/FbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1449
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1450
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1451
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1, p2}, Llibraries/debug/log/FbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1453
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1277
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1278
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1279
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1280
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1}, Llibraries/debug/log/FbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1304
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1305
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1306
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p2, p1}, Llibraries/debug/log/FbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 1314
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1315
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1316
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1318
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1321
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1322
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1323
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1325
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 1334
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1335
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1336
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1338
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .param p6, "arg4"    # Ljava/lang/Object;

    .prologue
    .line 1348
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1349
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1350
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1352
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1297
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1298
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1299
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1301
    :cond_0
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 71
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    return v0
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 724
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 725
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 726
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Llibraries/debug/log/FbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 735
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 737
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 740
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 741
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 743
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 746
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 747
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 749
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x4

    .line 753
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v1, :cond_0

    .line 754
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 756
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;
    .param p7, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x4

    .line 850
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 851
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    aput-object p6, v0, v2

    const/4 v1, 0x5

    aput-object p7, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 853
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 949
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 950
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 951
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Llibraries/debug/log/FbLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 872
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 873
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 874
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p1}, Llibraries/debug/log/FbLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 882
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 883
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 884
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 886
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 889
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 890
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 891
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 893
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 902
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 903
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 904
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 906
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .param p6, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x4

    .line 916
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v1, :cond_0

    .line 917
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 918
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 920
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 865
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 866
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 867
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 869
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 683
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 684
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 685
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1}, Llibraries/debug/log/FbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 693
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 694
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 699
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 700
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 705
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 706
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x4

    .line 711
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v1, :cond_0

    .line 712
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;
    .param p7, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x4

    .line 768
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 769
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    aput-object p6, v0, v2

    const/4 v1, 0x5

    aput-object p7, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 931
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 932
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 933
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1, p2}, Llibraries/debug/log/FbLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 790
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 791
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 792
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p2, p1}, Llibraries/debug/log/FbLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    invoke-static {p0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 800
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 801
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 802
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 804
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 807
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 808
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 809
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 811
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 820
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 821
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 822
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 824
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .param p6, "arg4"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x4

    .line 834
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v1, :cond_0

    .line 835
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 836
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 838
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 783
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 784
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 785
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 787
    :cond_0
    return-void
.end method

.method public static init(Llibraries/debug/log/FbLog;)V
    .locals 0
    .param p0, "fbLog"    # Llibraries/debug/log/FbLog;

    .prologue
    .line 83
    sput-object p0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    .line 84
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 87
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLoggable(Ljava/lang/Class;I)Z
    .locals 1
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-lt p1, v0, :cond_0

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Llibraries/debug/log/BLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    const/4 v1, 0x1

    .line 92
    :try_start_0
    sget v2, Llibraries/debug/log/BLog;->logLevel:I

    if-lt p1, v2, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    :goto_0
    return v1

    .line 92
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1477
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, p0, :cond_0

    .line 1478
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1479
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1, p2}, Llibraries/debug/log/FbLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1481
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1487
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, p0, :cond_0

    .line 1488
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1489
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1, p2}, Llibraries/debug/log/FbLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static registerOnLogLevelChanged(Llibraries/debug/log/BLogLevelCallback;)V
    .locals 1
    .param p0, "callback"    # Llibraries/debug/log/BLogLevelCallback;

    .prologue
    .line 75
    sget-object v0, Llibraries/debug/log/BLog;->logLevelCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 3
    .param p0, "logLevel"    # I

    .prologue
    .line 64
    sput p0, Llibraries/debug/log/BLog;->logLevel:I

    .line 65
    sget-object v1, Llibraries/debug/log/BLog;->logLevelCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibraries/debug/log/BLogLevelCallback;

    .line 66
    .local v0, "cb":Llibraries/debug/log/BLogLevelCallback;
    invoke-interface {v0, p0}, Llibraries/debug/log/BLogLevelCallback;->onLogLevelChanged(I)V

    goto :goto_0

    .line 68
    .end local v0    # "cb":Llibraries/debug/log/BLogLevelCallback;
    :cond_0
    return-void
.end method

.method public static unregisterOnLogLevelChanged(Llibraries/debug/log/BLogLevelCallback;)V
    .locals 1
    .param p0, "callback"    # Llibraries/debug/log/BLogLevelCallback;

    .prologue
    .line 79
    sget-object v0, Llibraries/debug/log/BLog;->logLevelCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 159
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Llibraries/debug/log/FbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x2

    .line 174
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v1, :cond_0

    .line 175
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    .line 180
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 181
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    .line 187
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 188
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    const/4 v1, 0x3

    aput-object p5, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;
    .param p7, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    .line 284
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 285
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 287
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 384
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 385
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Llibraries/debug/log/FbLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 307
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 308
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p1}, Llibraries/debug/log/FbLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 317
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 318
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 320
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x2

    .line 323
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v1, :cond_0

    .line 324
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 325
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 327
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    .line 336
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 337
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 338
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .param p6, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    .line 350
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 351
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 352
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 354
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 300
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 301
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 303
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 117
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 118
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1}, Llibraries/debug/log/FbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 127
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x2

    .line 133
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v1, :cond_0

    .line 134
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    .line 139
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    .line 145
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    const/4 v1, 0x3

    aput-object p5, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;
    .param p7, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    .line 202
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 203
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 365
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 366
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 367
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1, p2}, Llibraries/debug/log/FbLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 224
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 225
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 226
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p2, p1}, Llibraries/debug/log/FbLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-static {p0, p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 234
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 235
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 236
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x2

    .line 241
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v1, :cond_0

    .line 242
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 243
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    .line 254
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 255
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 256
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 258
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .param p6, "arg4"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    .line 268
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    if-gt v0, v2, :cond_0

    .line 269
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 270
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 217
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 218
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 219
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 983
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 984
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 985
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Llibraries/debug/log/FbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1191
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1192
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1193
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Llibraries/debug/log/FbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1087
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1088
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1089
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1090
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Llibraries/debug/log/FbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1225
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1226
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1227
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Llibraries/debug/log/FbLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1114
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1115
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1116
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p1}, Llibraries/debug/log/FbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    invoke-static {p0}, Llibraries/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1124
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1126
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1128
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1132
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1133
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1135
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1144
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1145
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1146
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1148
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .param p6, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1158
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1159
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1160
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1162
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1107
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1108
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1109
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1111
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 966
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 967
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 968
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1}, Llibraries/debug/log/FbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1173
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1174
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1175
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1, p2}, Llibraries/debug/log/FbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1001
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1002
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1003
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1004
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1}, Llibraries/debug/log/FbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1208
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1209
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1210
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p1}, Llibraries/debug/log/FbLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1028
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1029
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    if-eqz v0, :cond_1

    .line 1030
    sget-object v0, Llibraries/debug/log/BLog;->fbLog:Llibraries/debug/log/FbLog;

    invoke-interface {v0, p0, p2, p1}, Llibraries/debug/log/FbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    invoke-static {p0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 1038
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1039
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1040
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1042
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 1045
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1046
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1047
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1049
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 1058
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1059
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1060
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1062
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;
    .param p6, "arg4"    # Ljava/lang/Object;

    .prologue
    .line 1072
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1073
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1074
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1076
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1021
    sget v0, Llibraries/debug/log/BLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1022
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1023
    invoke-static {p0, p1, p2}, Llibraries/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1025
    :cond_0
    return-void
.end method
