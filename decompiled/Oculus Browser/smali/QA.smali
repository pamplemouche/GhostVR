.class public abstract LQA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LHA;


# instance fields
.field public final a:LIA;

.field public final b:Landroid/content/Context;

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQA;->c:I

    iput v0, p0, LQA;->d:I

    iput-boolean v0, p0, LQA;->e:Z

    iput v0, p0, LQA;->f:I

    const/4 v1, -0x1

    iput v1, p0, LQA;->g:I

    iput-boolean v0, p0, LQA;->h:Z

    iput-boolean v0, p0, LQA;->i:Z

    new-instance v0, LIA;

    invoke-direct {v0, p1}, LIA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LQA;->a:LIA;

    iput-object p1, p0, LQA;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()LyB;
    .locals 12

    iget v0, p0, LQA;->d:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    new-instance v0, LRA;

    iget v1, p0, LQA;->d:I

    invoke-direct {v0, v1}, LRA;-><init>(I)V

    invoke-static {v0}, LBB;->a(Ljava/lang/Exception;)LyB;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LQA;->b()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    iget v0, p0, LQA;->d:I

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, LQA;->b:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v4, v5, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_2
    move-object v11, v3

    :goto_0
    invoke-virtual {p0}, LQA;->b()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget v0, p0, LQA;->d:I

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, LQA;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :cond_4
    move-object v10, v3

    iget-object v0, p0, LQA;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, LQA;->f:I

    invoke-virtual {p0}, LQA;->b()I

    move-result v7

    iget v8, p0, LQA;->c:I

    iget v9, p0, LQA;->g:I

    invoke-static/range {v5 .. v11}, LGA;->a(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)LGA;

    move-result-object v0

    invoke-static {v0}, LBB;->a(Ljava/lang/Object;)LyB;

    move-result-object v0

    return-object v0
.end method

.method public a(LTA;)V
    .locals 1

    iget-object v0, p0, LQA;->a:LIA;

    invoke-virtual {v0, p1}, LsB;->a(LrB;)V

    return-void
.end method

.method public a(LGA;ILandroid/app/Activity;I)Z
    .locals 0

    invoke-virtual {p1, p2}, LGA;->a(I)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iput-boolean p1, p0, LQA;->i:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, LQA;->h:Z

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    iput-object p2, p0, LQA;->j:Ljava/lang/Integer;

    return p1
.end method

.method public final b()I
    .locals 2

    iget-boolean v0, p0, LQA;->e:Z

    if-eqz v0, :cond_2

    iget v0, p0, LQA;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public b(LTA;)V
    .locals 1

    iget-object v0, p0, LQA;->a:LIA;

    invoke-virtual {v0, p1}, LsB;->b(LrB;)V

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, LQA;->a:LIA;

    iget v1, p0, LQA;->c:I

    iget v2, p0, LQA;->d:I

    iget-object v3, p0, LQA;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1
    new-instance v4, LUA;

    invoke-direct {v4, v1, v2, v3}, LUA;-><init>(IILjava/lang/String;)V

    .line 2
    invoke-virtual {v0, v4}, LsB;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public d()LyB;
    .locals 3

    iget v0, p0, LQA;->d:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, LRA;

    iget v1, p0, LQA;->d:I

    invoke-direct {v0, v1}, LRA;-><init>(I)V

    invoke-static {v0}, LBB;->a(Ljava/lang/Exception;)LyB;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, LQA;->c:I

    const/16 v1, 0xb

    const/4 v2, 0x3

    if-ne v0, v1, :cond_2

    iput v2, p0, LQA;->c:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, LQA;->j:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LQA;->c()V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, LBB;->a(Ljava/lang/Object;)LyB;

    move-result-object v0

    return-object v0

    :cond_2
    if-ne v0, v2, :cond_3

    new-instance v0, LRA;

    const/4 v1, -0x8

    invoke-direct {v0, v1}, LRA;-><init>(I)V

    invoke-static {v0}, LBB;->a(Ljava/lang/Exception;)LyB;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, LRA;

    const/4 v1, -0x7

    invoke-direct {v0, v1}, LRA;-><init>(I)V

    invoke-static {v0}, LBB;->a(Ljava/lang/Exception;)LyB;

    move-result-object v0

    return-object v0
.end method
