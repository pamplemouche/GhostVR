.class public abstract LsV;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public g:LoV;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ZZZLnV;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p7, LpV;

    const/4 v0, 0x0

    invoke-direct {p7, v0}, LpV;-><init>(LnV;)V

    iput-object p7, p0, LsV;->g:LoV;

    .line 3
    iput-object p1, p0, LsV;->a:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, LsV;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, LsV;->c:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, LsV;->d:Z

    .line 7
    iput-boolean p5, p0, LsV;->e:Z

    .line 8
    iput-boolean p6, p0, LsV;->f:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)LsV;
    .locals 11

    move-object v3, p3

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 5
    :try_start_0
    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v0

    goto :goto_0

    :cond_0
    const/4 v8, -0x1

    :goto_0
    if-ltz v8, :cond_1

    move-object v0, p0

    move-object v4, p4

    .line 8
    invoke-static {p0, p3, p4}, LsV;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v10, LqV;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v9}, LqV;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZILnV;)V

    return-object v10

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal meta data value for number of child services"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get application info."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "0"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Illegal meta data value: the child service doesn\'t exist"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/content/Context;Landroid/os/Bundle;)LLV;
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;LKV;)LLV;
    .locals 9

    .line 12
    invoke-virtual {p0, p1, p2}, LsV;->a(Landroid/content/Context;Landroid/os/Bundle;)LLV;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 13
    :cond_0
    new-instance v0, LnV;

    invoke-direct {v0, p0, p3}, LnV;-><init>(LsV;LKV;)V

    .line 14
    iget-boolean p3, p0, LsV;->f:Z

    const-string v1, ", useStrongBinding = "

    const-string v2, "ChildProcessConnection.start: "

    const-string v3, "ChildProcessConnection: process launch"

    const-string v4, "ChildProcessConn"

    const-string v5, "ChildProcessConnection.start"

    const/4 v6, 0x0

    .line 15
    :try_start_0
    invoke-static {v5, p2}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-object v0, p1, LLV;->f:LKV;

    const/4 p2, 0x1

    if-eqz p3, :cond_1

    .line 17
    iget-object v0, p1, LLV;->n:LFV;

    check-cast v0, LHV;

    invoke-virtual {v0}, LHV;->a()Z

    move-result v0

    goto :goto_0

    .line 18
    :cond_1
    iget v0, p1, LLV;->r:I

    add-int/2addr v0, p2

    iput v0, p1, LLV;->r:I

    .line 19
    iget-object v0, p1, LLV;->o:LFV;

    check-cast v0, LHV;

    invoke-virtual {v0}, LHV;->a()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    .line 20
    :cond_2
    iget-object v0, p1, LLV;->p:LFV;

    check-cast v0, LHV;

    invoke-virtual {v0}, LHV;->a()Z

    .line 21
    invoke-virtual {p1}, LLV;->m()V

    :goto_1
    if-nez p2, :cond_3

    const-string p2, "Failed to establish the service connection."

    new-array v0, v6, [Ljava/lang/Object;

    .line 22
    invoke-static {v4, p2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, LLV;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_3
    invoke-static {v5}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v7, p2

    invoke-static {v3, v7, v8}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;J)V

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, LLV;->c:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {v4, p2, p3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p2

    .line 27
    invoke-static {v5}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v7, v0

    invoke-static {v3, v7, v8}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;J)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, LLV;->c:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {v4, p1, p3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public abstract a(LLV;)V
.end method

.method public abstract a(Ljava/lang/Runnable;)V
.end method
