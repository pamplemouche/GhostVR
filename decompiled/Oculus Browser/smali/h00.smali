.class public Lh00;
.super Lg11;
.source "PG"


# instance fields
.field public final synthetic a:Li00;


# direct methods
.method public synthetic constructor <init>(Li00;Lg00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh00;->a:Li00;

    invoke-direct {p0}, Lg11;-><init>()V

    return-void
.end method


# virtual methods
.method public renderProcessGone(Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lh00;->a:Li00;

    .line 2
    iget-wide v2, p1, Li00;->f:J

    sub-long/2addr v0, v2

    const-string p1, "CustomTabs.SpareWebContents.TimeBeforeDeath"

    .line 3
    invoke-static {p1, v0, v1}, LfV;->a(Ljava/lang/String;J)V

    .line 4
    iget-object p1, p0, Lh00;->a:Li00;

    const/4 v0, 0x2

    .line 5
    iget-boolean p1, p1, Li00;->h:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CustomTabs.SpareWebContents.Status2"

    const/4 v1, 0x5

    .line 6
    invoke-static {p1, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 7
    :goto_0
    iget-object p1, p0, Lh00;->a:Li00;

    .line 8
    iget-object v0, p1, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    iget-object v1, p1, Li00;->g:Lh00;

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/WebContents;->b(Lg11;)V

    .line 9
    iget-object v0, p1, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->destroy()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    .line 11
    iput-object v0, p1, Li00;->g:Lh00;

    return-void
.end method
