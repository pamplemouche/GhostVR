.class public Lo50;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lorg/chromium/chrome/browser/ChromeActivity;

.field public final b:Lp50;

.field public final c:F

.field public final d:Ljava/util/regex/Pattern;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:Ls50;

.field public i:Z

.field public j:F

.field public k:F

.field public l:I

.field public m:I

.field public n:J

.field public o:J

.field public p:Z

.field public q:I

.field public r:Z

.field public s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "((http|https|file|ftp|ssh)://)([\\w_-]+(?:(?:\\.[\\w_-]+)+))([\\w.,@?^=%&:/~+#-]*[\\w@?^=%&/~+#-])?"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lp50;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lo50;->q:I

    .line 3
    iput-object p1, p0, Lo50;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 4
    iput-object p2, p0, Lo50;->b:Lp50;

    .line 5
    invoke-virtual {p1}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Lo50;->c:F

    const-string p1, "(\\w|\\p{L}|\\p{N})+"

    .line 6
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lo50;->d:Ljava/util/regex/Pattern;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/16 p2, 0x12

    .line 7
    invoke-static {p2}, LP40;->a(I)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "ContextualSearch"

    const-string v0, "Tap suppression enabled: %s"

    .line 8
    invoke-static {p2, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .line 1
    iget-object v0, p0, Lo50;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    .line 3
    invoke-virtual {p0}, Lo50;->b()LX01;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lo50;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, LX01;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 7
    :goto_1
    iget v1, p0, Lo50;->f:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x2

    .line 8
    invoke-static {v1}, LP40;->b(I)I

    move-result v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v1, :cond_3

    .line 10
    invoke-static {v3}, Lz50;->f(Z)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    .line 11
    invoke-static {v4}, Lz50;->f(Z)V

    :cond_4
    :goto_2
    return v0
.end method

.method public b()LX01;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo50;->a()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo50;->d()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lo50;->h:Ls50;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lo50;->n:J

    .line 4
    iput-wide v0, p0, Lo50;->o:J

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lo50;->q:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lo50;->i:Z

    .line 7
    iput v0, p0, Lo50;->l:I

    .line 8
    iput v0, p0, Lo50;->m:I

    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lo50;->f:I

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lo50;->e:Ljava/lang/String;

    .line 3
    iput-boolean v0, p0, Lo50;->g:Z

    .line 4
    iput-boolean v0, p0, Lo50;->r:Z

    .line 5
    iput-boolean v0, p0, Lo50;->s:Z

    return-void
.end method
