.class public final synthetic LIL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LPL0;


# direct methods
.method public constructor <init>(LPL0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIL0;->a:LPL0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, LIL0;->a:LPL0;

    check-cast p1, Ljava/lang/Void;

    const/4 p1, 0x5

    .line 1
    invoke-virtual {v0, p1}, LPL0;->a(I)V

    .line 2
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, LQL0;->b()LPl0;

    move-result-object v0

    const-string v1, "Chrome trace is complete"

    .line 4
    invoke-interface {v0, v1}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object v0

    const-string v1, "The trace is ready to share."

    .line 5
    invoke-interface {v0, v1}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, LPl0;->d(Z)LPl0;

    move-result-object v0

    const v2, 0x7f080213

    .line 7
    invoke-static {p1}, Lorg/chromium/chrome/browser/tracing/TracingNotificationService;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "Share trace"

    .line 8
    invoke-interface {v0, v2, v4, v3}, LPl0;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)LPl0;

    move-result-object v0

    .line 9
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/chromium/chrome/browser/tracing/TracingNotificationService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "org.chromium.chrome.browser.tracing.DISCARD_TRACE"

    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x8000000

    .line 11
    invoke-static {p1, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 12
    invoke-interface {v0, p1}, LPl0;->b(Landroid/app/PendingIntent;)LPl0;

    move-result-object p1

    .line 13
    invoke-interface {p1}, LPl0;->a()Landroid/app/Notification;

    move-result-object p1

    invoke-static {p1}, LQL0;->a(Landroid/app/Notification;)V

    return-void
.end method
