.class public final synthetic Lxz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxz0;->w:Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;

    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    iget-object p1, p0, Lxz0;->w:Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, LPL0;->a()LPL0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 3
    new-instance v3, Lorg/chromium/content/browser/TracingControllerAndroidImpl;

    invoke-direct {v3, v2}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object v3, v1, LPL0;->a:LY01;

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v1, v2}, LPL0;->a(I)V

    .line 6
    sget-object v2, LzT;->a:Landroid/content/Context;

    const/4 v3, 0x0

    .line 7
    sput v3, LQL0;->b:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v3, "Trace buffer usage: %s%%"

    .line 9
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "accessibility"

    .line 10
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    .line 11
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, "Tracing is active."

    .line 12
    :cond_0
    invoke-static {}, LQL0;->b()LPl0;

    move-result-object v5

    const-string v6, "Chrome trace is being recorded"

    .line 13
    invoke-interface {v5, v6}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object v5

    .line 14
    invoke-interface {v5, v3}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object v3

    .line 15
    invoke-interface {v3, v4}, LPl0;->d(Z)LPl0;

    move-result-object v3

    const v5, 0x7f08021d

    .line 16
    invoke-static {v2}, Lorg/chromium/chrome/browser/tracing/TracingNotificationService;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v6, "Stop recording"

    .line 17
    invoke-interface {v3, v5, v6, v2}, LPl0;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)LPl0;

    move-result-object v2

    sput-object v2, LQL0;->a:LPl0;

    .line 18
    invoke-interface {v2}, LPl0;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2}, LQL0;->a(Landroid/app/Notification;)V

    .line 19
    new-instance v2, LML0;

    invoke-direct {v2, v1, v0}, LML0;-><init>(LPL0;LLL0;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 20
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->O()V

    return v4

    .line 21
    :cond_1
    throw v0

    .line 22
    :cond_2
    throw v0
.end method
