.class public LVD0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/app/Activity;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/ArrayList;

.field public i:Landroid/net/Uri;

.field public j:Landroid/net/Uri;

.field public k:LRD0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LVD0;->c:Landroid/app/Activity;

    .line 3
    iput-object p3, p0, LVD0;->f:Ljava/lang/String;

    .line 4
    iput-object p2, p0, LVD0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()LWD0;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, LVD0;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-object v1, v0, LVD0;->f:Ljava/lang/String;

    invoke-static {v1}, LZS0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LVD0;->f:Ljava/lang/String;

    .line 3
    iget-object v1, v0, LVD0;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, LVD0;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, LVD0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LVD0;->e:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, LVD0;->f:Ljava/lang/String;

    iput-object v1, v0, LVD0;->e:Ljava/lang/String;

    .line 6
    :cond_1
    :goto_0
    new-instance v1, LWD0;

    iget-boolean v3, v0, LVD0;->a:Z

    iget-boolean v4, v0, LVD0;->b:Z

    iget-object v5, v0, LVD0;->c:Landroid/app/Activity;

    iget-object v6, v0, LVD0;->d:Ljava/lang/String;

    iget-object v7, v0, LVD0;->e:Ljava/lang/String;

    iget-object v8, v0, LVD0;->f:Ljava/lang/String;

    iget-object v9, v0, LVD0;->g:Ljava/lang/String;

    iget-object v10, v0, LVD0;->h:Ljava/util/ArrayList;

    iget-object v11, v0, LVD0;->i:Landroid/net/Uri;

    iget-object v12, v0, LVD0;->j:Landroid/net/Uri;

    iget-object v13, v0, LVD0;->k:LRD0;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, LWD0;-><init>(ZZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/net/Uri;Landroid/net/Uri;LRD0;Ljava/lang/String;Ljava/lang/Runnable;LUD0;)V

    return-object v1
.end method
