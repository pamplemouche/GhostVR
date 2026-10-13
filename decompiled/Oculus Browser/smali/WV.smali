.class public LWV;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static o:Z


# instance fields
.field public final a:LXV;

.field public final b:Landroid/app/Service;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Z

.field public g:I

.field public h:Ljava/lang/Thread;

.field public i:[Ljava/lang/String;

.field public j:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

.field public k:Z

.field public l:Z

.field public m:LeW;

.field public final n:LaW;


# direct methods
.method public constructor <init>(LXV;Landroid/app/Service;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LWV;->d:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LWV;->e:Ljava/lang/Object;

    .line 4
    new-instance v0, LUV;

    invoke-direct {v0, p0}, LUV;-><init>(LWV;)V

    iput-object v0, p0, LWV;->n:LaW;

    .line 5
    iput-object p1, p0, LWV;->a:LXV;

    .line 6
    iput-object p2, p0, LWV;->b:Landroid/app/Service;

    .line 7
    iput-object p3, p0, LWV;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, LWV;->c:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 4
    iget-object v0, p0, LWV;->h:Ljava/lang/Thread;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, LWV;->i:[Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "org.chromium.base.process_launcher.extra.command_line"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LWV;->i:[Ljava/lang/String;

    .line 7
    iget-object v1, p0, LWV;->h:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    const-string v1, "org.chromium.base.process_launcher.extra.extraFiles"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    array-length v2, v1

    new-array v2, v2, [Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    iput-object v2, p0, LWV;->j:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    .line 10
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_1
    iget-object v1, p0, LWV;->a:LXV;

    invoke-interface {v1, p1, p2}, LXV;->a(Landroid/os/Bundle;Ljava/util/List;)V

    .line 12
    iget-object p1, p0, LWV;->h:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
