.class public LIx0;
.super LP8;
.source "PG"

# interfaces
.implements LJx0;


# instance fields
.field public A:LTx0;

.field public B:LHx0;

.field public C:Z

.field public z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsc1;ZLjava/util/List;)V
    .locals 7

    const v0, 0x7f14024b

    .line 1
    invoke-direct {p0, p1, v0}, LP8;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, LIx0;->z:Landroid/content/Context;

    .line 3
    new-instance v0, LHx0;

    invoke-direct {v0, p2}, LHx0;-><init>(Lsc1;)V

    iput-object v0, p0, LIx0;->B:LHx0;

    .line 4
    new-instance p2, LTx0;

    invoke-direct {p2, p1, p3, p0}, LTx0;-><init>(Landroid/content/Context;ZLJx0;)V

    iput-object p2, p0, LIx0;->A:LTx0;

    .line 5
    iget-object p1, p0, LIx0;->B:LHx0;

    .line 6
    iput-object p0, p2, LTx0;->w:LIx0;

    .line 7
    iput-object p1, p2, LTx0;->B:Lsc1;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p2, LTx0;->S:Ljava/util/List;

    .line 9
    iget-object p1, p2, LTx0;->P:Lzx0;

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1, p3}, LkW;->cancel(Z)Z

    .line 11
    :cond_0
    iget-object p1, p2, LTx0;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, LBg0;->Q()LDc1;

    move-result-object p1

    const-string p4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, p4}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p2, LTx0;->Q:J

    .line 13
    new-instance p1, Lzx0;

    iget-object p4, p2, LTx0;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p4}, LBg0;->Q()LDc1;

    move-result-object v2

    new-instance v4, Lk81;

    iget-object p4, p2, LTx0;->S:Ljava/util/List;

    invoke-direct {v4, p4, p3}, Lk81;-><init>(Ljava/util/List;Z)V

    iget-object v5, p2, LTx0;->S:Ljava/util/List;

    iget-object p3, p2, LTx0;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 14
    invoke-virtual {p3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lzx0;-><init>(Lorg/chromium/ui/base/WindowAndroid;Lyx0;Lk81;Ljava/util/List;Landroid/content/ContentResolver;)V

    iput-object p1, p2, LTx0;->P:Lzx0;

    .line 15
    sget-object p3, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 16
    iget-object p1, p2, LTx0;->w:LIx0;

    new-instance p3, LQx0;

    invoke-direct {p3, p2}, LQx0;-><init>(LTx0;)V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 17
    iget-object p1, p0, LIx0;->A:LTx0;

    .line 18
    iget-object p2, p0, LP8;->y:LN8;

    .line 19
    iput-object p1, p2, LN8;->h:Landroid/view/View;

    const/4 p1, 0x0

    .line 20
    iput p1, p2, LN8;->i:I

    .line 21
    iput-boolean p1, p2, LN8;->n:Z

    return-void

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Bitmap enumeration without storage read permission"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .line 1
    iget-object v0, p0, LIx0;->B:LHx0;

    .line 2
    iget-boolean v0, v0, LHx0;->x:Z

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, LIx0;->C:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, LGx0;

    invoke-direct {v0, p0}, LGx0;-><init>(LIx0;)V

    iget-object v1, p0, LIx0;->z:Landroid/content/Context;

    .line 5
    invoke-static {v1}, LzT;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lorg/chromium/base/ApplicationStatus;->a(LkT;Landroid/app/Activity;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 8
    iget-object v0, p0, LIx0;->A:LTx0;

    .line 9
    iget-object v1, v0, LTx0;->P:Lzx0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v1, v3}, LkW;->cancel(Z)Z

    .line 11
    iput-object v2, v0, LTx0;->P:Lzx0;

    .line 12
    :cond_2
    iget-object v1, v0, LTx0;->C:Lxx0;

    if-eqz v1, :cond_4

    .line 13
    iget-object v3, v0, LTx0;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 14
    iget-boolean v4, v1, Lxx0;->q:Z

    if-eqz v4, :cond_3

    .line 15
    iget-object v4, v1, Lxx0;->l:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v3, 0x0

    .line 16
    iput-boolean v3, v1, Lxx0;->q:Z

    .line 17
    :cond_3
    iput-object v2, v0, LTx0;->C:Lxx0;

    :cond_4
    :goto_1
    return-void
.end method
