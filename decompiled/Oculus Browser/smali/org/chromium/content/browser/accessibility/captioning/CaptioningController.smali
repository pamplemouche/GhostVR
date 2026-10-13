.class public Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LvX0;


# instance fields
.field public a:LwX0;

.field public b:J


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LuX0;->d:LuX0;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, LuX0;

    invoke-direct {v0}, LuX0;-><init>()V

    sput-object v0, LuX0;->d:LuX0;

    .line 4
    :cond_0
    sget-object v0, LuX0;->d:LuX0;

    .line 5
    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;->a:LwX0;

    .line 6
    invoke-static {p0, p1}, LJ/N;->MX95jWaj(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;->b:J

    return-void
.end method

.method private onDestroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;->b:J

    return-void
.end method

.method private onRenderProcessChange()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;->a:LwX0;

    invoke-interface {v0, p0}, LwX0;->b(LvX0;)V

    return-void
.end method


# virtual methods
.method public a(LxX0;)V
    .locals 11

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningController;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v3, p1, LxX0;->a:Z

    .line 3
    iget-object v2, p1, LxX0;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4
    iget-object v2, p1, LxX0;->c:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    iget-object v2, p1, LxX0;->d:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6
    iget-object v2, p1, LxX0;->e:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7
    iget-object v2, p1, LxX0;->f:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8
    iget-object v2, p1, LxX0;->g:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 9
    iget-object p1, p1, LxX0;->h:Ljava/lang/String;

    invoke-static {p1, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, p1

    .line 10
    invoke-static/range {v0 .. v10}, LJ/N;->MM3_AH7F(JLjava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
