.class public Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lx81;


# static fields
.field public static A:Z

.field public static B:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;


# instance fields
.field public w:LA81;

.field public x:Ljava/util/List;

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->x:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->A:Z

    return-void
.end method

.method public static createObserver(J)Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->B:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    invoke-direct {v0}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->B:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    .line 4
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->B:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 6
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    .line 8
    invoke-static {v1, v4, v2, v3}, LdT;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v4, "BackgroundSync.NetworkObserver.HasPermission"

    if-nez v1, :cond_2

    .line 9
    invoke-static {v4, v2}, LfV;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->w:LA81;

    if-nez v1, :cond_3

    .line 11
    new-instance v1, LA81;

    new-instance v2, LG81;

    invoke-direct {v2}, LG81;-><init>()V

    invoke-direct {v1, v0, v2}, LA81;-><init>(Lx81;Ly81;)V

    iput-object v1, v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->w:LA81;

    .line 12
    invoke-static {v4, v3}, LfV;->a(Ljava/lang/String;Z)V

    .line 13
    :cond_3
    iget-object v1, v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->x:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->w:LA81;

    .line 15
    invoke-virtual {v1}, LA81;->c()Lw81;

    move-result-object v1

    invoke-virtual {v1}, Lw81;->b()I

    move-result v1

    .line 16
    invoke-static {p0, p1, v0, v1}, LJ/N;->MJIG3QvD(JLjava/lang/Object;I)V

    .line 17
    :goto_1
    sget-object p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->B:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    .line 18
    throw p0
.end method

.method private removeObserver(J)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->x:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->w:LA81;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, LA81;->b()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->w:LA81;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-boolean v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->A:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->c(I)V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 7
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 8
    sget-boolean p1, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->A:Z

    if-eqz p1, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->w:LA81;

    invoke-virtual {p1}, LA81;->c()Lw81;

    move-result-object p1

    invoke-virtual {p1}, Lw81;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->c(I)V

    return-void
.end method

.method public a(JI)V
    .locals 0

    .line 4
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 5
    sget-boolean p1, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->A:Z

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->w:LA81;

    invoke-virtual {p1}, LA81;->c()Lw81;

    move-result-object p1

    invoke-virtual {p1}, Lw81;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->c(I)V

    return-void
.end method

.method public a([J)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(J)V
    .locals 0

    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->z:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->y:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->z:Z

    .line 3
    iput p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->y:I

    .line 4
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 6
    invoke-static {v1, v2, p0, p1}, LJ/N;->MJIG3QvD(JLjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
