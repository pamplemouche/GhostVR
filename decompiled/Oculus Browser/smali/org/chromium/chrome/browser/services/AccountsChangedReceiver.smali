.class public Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, LyD0;

    invoke-direct {p0}, LyD0;-><init>()V

    .line 3
    invoke-static {p1}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object v0

    invoke-virtual {v0, p0}, LUg0;->a(LCg0;)V

    .line 4
    invoke-static {p1}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, LUg0;->a(ZLCg0;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, LpF0;->c()V

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 6
    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance p2, LwD0;

    invoke-direct {p2, p0, p1}, LwD0;-><init>(Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;Landroid/content/Context;)V

    .line 4
    sget-object p1, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void
.end method
