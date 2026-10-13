.class public final synthetic Lb40;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb40;->a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lb40;->a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    iget-boolean v1, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->F:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    const-string p1, "SelectedItem"

    goto :goto_2

    :cond_2
    const-string p1, "Abandoned"

    :goto_2
    const-string v1, "ContextMenu.TimeToTakeAction."

    .line 2
    invoke-static {v1, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-static {}, LJ/N;->MklbOJun()J

    move-result-wide v2

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-wide v3, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->E:J

    sub-long/2addr v1, v3

    .line 5
    invoke-static {p1, v1, v2}, LfV;->c(Ljava/lang/String;J)V

    .line 6
    iget-wide v1, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->x:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-static {v1, v2, v0}, LJ/N;->McrcWTzG(JLjava/lang/Object;)V

    :goto_3
    return-void
.end method
