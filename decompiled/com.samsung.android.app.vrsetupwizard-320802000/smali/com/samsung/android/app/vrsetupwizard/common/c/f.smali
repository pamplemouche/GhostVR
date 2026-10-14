.class public Lcom/samsung/android/app/vrsetupwizard/common/c/f;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Z = false

.field private static b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->a()Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    return-void
.end method

.method private static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object p2, v0, p2

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->c:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const/4 p1, 0x3

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "V"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v1, v1, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    sget-object v4, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v4, v4, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    sget-object v5, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v5, v5, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v4, v4, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v1, v1, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v2, v2, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v1, v1, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/s;->a(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->a:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    sget-object v3, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v3, v3, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    sget-object v4, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v4, v4, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->g(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v1, v1, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->g(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v1, v1, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v2, v2, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v1, v1, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v2, v2, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v1, v1, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v2, v2, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v1, v1, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v2, v2, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v1, v1, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v2, v2, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v1, v1, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v2, v2, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v1, v1, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget v2, v2, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-boolean v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
