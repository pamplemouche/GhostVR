.class public LPZ;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:J

.field public final synthetic j:J

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Z

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;ZILjava/lang/String;J)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, LPZ;->a:Landroid/graphics/Bitmap;

    move-object v1, p2

    iput-object v1, v0, LPZ;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, LPZ;->c:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, LPZ;->d:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, LPZ;->e:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, LPZ;->f:Ljava/lang/String;

    move v1, p7

    iput v1, v0, LPZ;->g:I

    move v1, p8

    iput v1, v0, LPZ;->h:I

    move-wide v1, p9

    iput-wide v1, v0, LPZ;->i:J

    move-wide v1, p11

    iput-wide v1, v0, LPZ;->j:J

    move-object/from16 v1, p13

    iput-object v1, v0, LPZ;->k:Ljava/lang/String;

    move/from16 v1, p14

    iput-boolean v1, v0, LPZ;->l:Z

    move/from16 v1, p15

    iput v1, v0, LPZ;->m:I

    move-object/from16 v1, p16

    iput-object v1, v0, LPZ;->n:Ljava/lang/String;

    move-wide/from16 v1, p17

    iput-wide v1, v0, LPZ;->o:J

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, LPZ;->a:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lorg/chromium/chrome/browser/ShortcutHelper;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v7

    .line 2
    iget-object v2, v0, LPZ;->b:Ljava/lang/String;

    iget-object v3, v0, LPZ;->c:Ljava/lang/String;

    iget-object v4, v0, LPZ;->d:Ljava/lang/String;

    iget-object v5, v0, LPZ;->e:Ljava/lang/String;

    iget-object v6, v0, LPZ;->f:Ljava/lang/String;

    iget v9, v0, LPZ;->g:I

    iget v10, v0, LPZ;->h:I

    iget-wide v11, v0, LPZ;->i:J

    iget-wide v13, v0, LPZ;->j:J

    iget-object v1, v0, LPZ;->k:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    iget-boolean v1, v0, LPZ;->l:Z

    const/4 v8, 0x3

    move/from16 v16, v1

    .line 4
    invoke-static/range {v2 .. v16}, Lorg/chromium/chrome/browser/ShortcutHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJZZ)Landroid/content/Intent;

    move-result-object v1

    .line 5
    iget-object v2, v0, LPZ;->c:Ljava/lang/String;

    .line 6
    invoke-static {v2}, LtP0;->a(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    .line 7
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.chromium.chrome.browser.webapp_mac"

    .line 8
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget v2, v0, LPZ;->m:I

    const-string v3, "org.chromium.chrome.browser.webapp_source"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Landroid/content/Intent;

    .line 2
    sget-object v0, Lorg/chromium/chrome/browser/ShortcutHelper;->d:LRZ;

    .line 3
    iget-object v1, p0, LPZ;->n:Ljava/lang/String;

    iget-object v2, p0, LPZ;->a:Landroid/graphics/Bitmap;

    iget-boolean v3, p0, LPZ;->l:Z

    invoke-virtual {v0, v1, v2, v3, p1}, LRZ;->a(Ljava/lang/String;Landroid/graphics/Bitmap;ZLandroid/content/Intent;)V

    .line 4
    sget-object v0, LFP0;->a:Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    .line 5
    iget-object v1, p0, LPZ;->b:Ljava/lang/String;

    new-instance v2, LOZ;

    iget-wide v3, p0, LPZ;->o:J

    invoke-direct {v2, p1, v3, v4}, LOZ;-><init>(Landroid/content/Intent;J)V

    if-eqz v0, :cond_1

    .line 6
    new-instance p1, LDP0;

    invoke-direct {p1, v0, v1, v2}, LDP0;-><init>(Lorg/chromium/chrome/browser/webapps/WebappRegistry;Ljava/lang/String;LEP0;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    invoke-virtual {p1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/ShortcutHelper;->c()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, LPZ;->n:Ljava/lang/String;

    .line 10
    sget-object v1, LzT;->a:Landroid/content/Context;

    const v2, 0x7f130138

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 11
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lorg/chromium/chrome/browser/ShortcutHelper;->c(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 13
    throw p1
.end method
