.class public final LD3;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/CharSequence;

.field public final c:Landroid/app/PendingIntent;

.field public d:Z

.field public final e:Landroid/os/Bundle;

.field public f:Ljava/util/ArrayList;

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, LD3;->d:Z

    .line 4
    iput-boolean v1, p0, LD3;->h:Z

    .line 5
    iput p1, p0, LD3;->a:I

    .line 6
    invoke-static {p2}, LG3;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LD3;->b:Ljava/lang/CharSequence;

    .line 7
    iput-object p3, p0, LD3;->c:Landroid/app/PendingIntent;

    .line 8
    iput-object v0, p0, LD3;->e:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, LD3;->f:Ljava/util/ArrayList;

    .line 10
    iput-boolean v1, p0, LD3;->d:Z

    const/4 p1, 0x0

    .line 11
    iput p1, p0, LD3;->g:I

    .line 12
    iput-boolean v1, p0, LD3;->h:Z

    return-void
.end method


# virtual methods
.method public a()LE3;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, LD3;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM3;

    .line 5
    throw v3

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v10, v3

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [LM3;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LM3;

    move-object v10, v0

    .line 8
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [LM3;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [LM3;

    :goto_2
    move-object v9, v3

    .line 10
    new-instance v0, LE3;

    iget v5, p0, LD3;->a:I

    iget-object v6, p0, LD3;->b:Ljava/lang/CharSequence;

    iget-object v7, p0, LD3;->c:Landroid/app/PendingIntent;

    iget-object v8, p0, LD3;->e:Landroid/os/Bundle;

    iget-boolean v11, p0, LD3;->d:Z

    iget v12, p0, LD3;->g:I

    iget-boolean v13, p0, LD3;->h:Z

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, LE3;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LM3;[LM3;ZIZ)V

    return-object v0
.end method
