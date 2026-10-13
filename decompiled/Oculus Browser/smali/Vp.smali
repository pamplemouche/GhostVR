.class public LVp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static b:LVp;


# instance fields
.field public a:LUp;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LVp;

    invoke-direct {v0}, LVp;-><init>()V

    sput-object v0, LVp;->b:LVp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LVp;->a:LUp;

    return-void
.end method

.method public static b(Landroid/content/Context;)LUp;
    .locals 1

    sget-object v0, LVp;->b:LVp;

    invoke-virtual {v0, p0}, LVp;->a(Landroid/content/Context;)LUp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)LUp;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LVp;->a:LUp;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    new-instance v0, LUp;

    invoke-direct {v0, p1}, LUp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LVp;->a:LUp;

    :cond_1
    iget-object p1, p0, LVp;->a:LUp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
