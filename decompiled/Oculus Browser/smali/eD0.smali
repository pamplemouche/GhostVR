.class public LeD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/searchwidget/SearchActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/searchwidget/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LeD0;->w:Lorg/chromium/chrome/browser/searchwidget/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, LeD0;->w:Lorg/chromium/chrome/browser/searchwidget/SearchActivity;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, LBg0;->Z:Z

    .line 3
    iget-object v2, v0, LBg0;->M:Lfh0;

    .line 4
    invoke-static {}, Li00;->a()Li00;

    move-result-object v3

    .line 5
    iget-object v3, v3, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    xor-int/2addr v1, v4

    .line 6
    invoke-virtual {v2, v1}, Lfh0;->a(Z)V

    .line 7
    iget-boolean v1, v0, LBg0;->a0:Z

    if-eqz v1, :cond_1

    const-string v1, "onFirstDrawComplete"

    .line 8
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, LBg0;->M:Lfh0;

    .line 10
    iput-boolean v4, v0, Lfh0;->g:Z

    .line 11
    invoke-virtual {v0}, Lfh0;->a()V

    :cond_1
    return-void
.end method
