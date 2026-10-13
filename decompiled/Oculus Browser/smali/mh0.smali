.class public final synthetic Lmh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Le20;


# direct methods
.method public constructor <init>(Le20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmh0;->w:Le20;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lmh0;->w:Le20;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, LqU;->a()LqU;

    move-result-object v2

    :try_start_0
    const-string v3, "twa_dialog_number_of_dismissals_on_uninstall"

    const/4 v4, 0x1

    .line 2
    invoke-virtual {v0, v3, v4}, Le20;->a(Ljava/lang/String;Z)V

    const-string v3, "twa_dialog_number_of_dismissals_on_clear_data"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v3, v4}, Le20;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v1, v2}, Le20;->a(Ljava/lang/Throwable;LqU;)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 6
    invoke-static {v0, v2}, Le20;->a(Ljava/lang/Throwable;LqU;)V

    throw v1

    .line 7
    :cond_0
    throw v1
.end method
