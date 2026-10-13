.class public Lorg/chromium/chrome/browser/sync/ProfileSyncService;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final d:[I

.field public static e:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

.field public static f:Z


# instance fields
.field public final a:Ljava/util/List;

.field public b:J

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x2
        0x4
        0x3
        0x26
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a:Ljava/util/List;

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    invoke-static {p0}, LJ/N;->MulmQvSr(Ljava/lang/Object;)J

    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    return-void
.end method

.method public static a([I)Ljava/util/Set;
    .locals 3

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 8
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getProfileSyncServiceAndroid()J
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iget-wide v0, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    return-wide v0
.end method

.method public static l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f:Z

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->e:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 4
    iget-wide v0, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->e:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    :cond_0
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f:Z

    .line 7
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->e:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    return-object v0
.end method

.method public static onGetAllNodesResult(Lorg/chromium/chrome/browser/sync/ProfileSyncService$GetAllNodesCallback;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->Mn8VB9Cv(JLjava/lang/Object;)[I

    move-result-object v0

    .line 3
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a([I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(LoG0;)V
    .locals 1

    .line 4
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MmYvMKiO(JLjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No state for code: "

    invoke-static {v2, v0}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(LoG0;)V
    .locals 1

    .line 4
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MguEMeJF(JLjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public d()LnG0;
    .locals 2

    .line 1
    new-instance v0, LnG0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LnG0;-><init>(Lorg/chromium/chrome/browser/sync/ProfileSyncService;LmG0;)V

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MreEfroQ(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->Mga07EF4(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MaQzF2Pg(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->M7c35BFF(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->M4TQ0K8e(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MB8QsrpS(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MKkxCXyK(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public syncStateChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LoG0;

    .line 2
    invoke-interface {v1}, LoG0;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method
