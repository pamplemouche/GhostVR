.class public LFm0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:LKR0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/notifications/scheduler/NotificationSchedulerTask;LKR0;)V
    .locals 0

    .line 1
    iput-object p2, p0, LFm0;->a:LKR0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, LFm0;->a:LKR0;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, LKR0;->a(Z)V

    return-void
.end method
