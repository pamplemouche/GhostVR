.class public Lx80;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx80;->a:Ljava/lang/String;

    iput-object p2, p0, Lx80;->b:Ljava/lang/String;

    iput-object p3, p0, Lx80;->c:Ljava/lang/String;

    iput-object p4, p0, Lx80;->d:Ljava/lang/String;

    iput-wide p5, p0, Lx80;->e:J

    iput-object p7, p0, Lx80;->f:Ljava/lang/String;

    iput-object p8, p0, Lx80;->g:Ljava/lang/String;

    iput-object p9, p0, Lx80;->h:Ljava/lang/String;

    iput-wide p10, p0, Lx80;->i:J

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lx80;->a:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/ContentUriUtils;->b(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v3, p0, Lx80;->b:Ljava/lang/String;

    iget-object v4, p0, Lx80;->c:Ljava/lang/String;

    iget-object v5, p0, Lx80;->d:Ljava/lang/String;

    iget-object v6, p0, Lx80;->a:Ljava/lang/String;

    iget-wide v7, p0, Lx80;->e:J

    iget-object v9, p0, Lx80;->f:Ljava/lang/String;

    iget-object v10, p0, Lx80;->g:Ljava/lang/String;

    iget-object v11, p0, Lx80;->h:Ljava/lang/String;

    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 3
    :goto_0
    iget-object v0, p0, Lx80;->a:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/ContentUriUtils;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_2

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lx80;->a:Ljava/lang/String;

    iget-object v1, p0, Lx80;->d:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1, v3, v4}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 6
    :goto_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 2
    iget-wide v0, p0, Lx80;->i:J

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 4
    invoke-static {v0, v1, v2, v3, p1}, LJ/N;->Mct0JWyi(JJZ)V

    return-void
.end method
