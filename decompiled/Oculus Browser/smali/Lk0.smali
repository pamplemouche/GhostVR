.class public LLk0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lorg/chromium/chrome/browser/ChromeActivity;

.field public b:I

.field public c:I

.field public d:J

.field public e:LDI0;

.field public f:LQk0;

.field public g:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LLk0;->b:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, LLk0;->d:J

    .line 4
    iput-object p1, p0, LLk0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 5
    new-instance v0, LJk0;

    .line 6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LJk0;-><init>(LLk0;LpI0;)V

    iput-object v0, p0, LLk0;->e:LDI0;

    .line 7
    new-instance p1, LKk0;

    invoke-direct {p1, p0}, LKk0;-><init>(LLk0;)V

    iput-object p1, p0, LLk0;->f:LQk0;

    .line 8
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 9
    sget-object v0, Lorg/chromium/chrome/browser/metrics/PageLoadMetrics;->a:LWT;

    if-nez v0, :cond_0

    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/metrics/PageLoadMetrics;->a:LWT;

    .line 10
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/metrics/PageLoadMetrics;->a:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 11
    invoke-static {p1}, LD01;->a(I)LF01;

    move-result-object p1

    new-instance v0, LIk0;

    invoke-direct {v0, p0}, LIk0;-><init>(LLk0;)V

    .line 12
    invoke-interface {p1, v0}, LF01;->a(LE01;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, LLk0;->e:LDI0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, LDI0;->destroy()V

    .line 3
    iput-object v1, p0, LLk0;->e:LDI0;

    .line 4
    :cond_0
    iget-object v0, p0, LLk0;->f:LQk0;

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 6
    sget-object v2, Lorg/chromium/chrome/browser/metrics/PageLoadMetrics;->a:LWT;

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 8
    :goto_0
    iput-object v1, p0, LLk0;->f:LQk0;

    :cond_2
    return-void
.end method

.method public b()V
    .locals 11

    .line 1
    iget-wide v0, p0, LLk0;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-boolean v0, p0, LLk0;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LLk0;->g:Z

    .line 3
    iget-object v0, p0, LLk0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileStartup.ToolbarFirstFocusStartupState."

    .line 4
    invoke-static {v1, v0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, LLk0;->c:I

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, LfV;->a(Ljava/lang/String;II)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobileStartup.ToolbarFirstFocusTime2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v0, p0, LLk0;->d:J

    iget-object v2, p0, LLk0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 6
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeActivity;->F0()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x7530

    const/16 v10, 0x32

    .line 7
    invoke-static/range {v3 .. v10}, LfV;->a(Ljava/lang/String;JJJI)V

    .line 8
    :cond_0
    invoke-virtual {p0}, LLk0;->a()V

    return-void
.end method
