.class public LnH0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static d:LnH0;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public b:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LnH0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LnH0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 4
    iput-object v0, p0, LnH0;->b:Landroid/content/SharedPreferences;

    const-string v1, "org.chromium.chrome.browser.tab.TabIdManager.NEXT_ID"

    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static a()LnH0;
    .locals 1

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, LnH0;->a(Landroid/content/Context;)LnH0;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)LnH0;
    .locals 2

    .line 3
    sget-object v0, LnH0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, LnH0;->d:LnH0;

    if-nez v1, :cond_0

    new-instance v1, LnH0;

    invoke-direct {v1, p0}, LnH0;-><init>(Landroid/content/Context;)V

    sput-object v1, LnH0;->d:LnH0;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object p0, LnH0;->d:LnH0;

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 8
    iget-object v0, p0, LnH0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, LnH0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 10
    iget-object p1, p0, LnH0;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, LnH0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "org.chromium.chrome.browser.tab.TabIdManager.NEXT_ID"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
