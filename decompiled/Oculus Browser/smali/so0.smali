.class public Lso0;
.super LQA;
.source "PG"


# instance fields
.field public final k:I

.field public final l:Lro0;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-direct {p0, v0}, LQA;-><init>(Landroid/content/Context;)V

    .line 3
    iput p1, p0, Lso0;->k:I

    .line 4
    new-instance p1, Lro0;

    invoke-direct {p1, p0}, Lro0;-><init>(Lso0;)V

    iput-object p1, p0, Lso0;->l:Lro0;

    .line 5
    iget v0, p0, Lso0;->k:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Lro0;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 8
    iget-object v0, p0, Lso0;->l:Lro0;

    invoke-virtual {v0, p1}, Lro0;->a(I)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Play Store Flow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x7d0

    invoke-static {v0, p1, v1}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public a(LGA;ILandroid/app/Activity;I)Z
    .locals 2

    const-string v0, "Starting update flow."

    .line 4
    invoke-virtual {p0, v0}, Lso0;->a(Ljava/lang/CharSequence;)V

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, LQA;->a(LGA;ILandroid/app/Activity;I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 6
    :cond_0
    iget p1, p0, Lso0;->k:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    .line 7
    :goto_0
    sget-object p1, LZ01;->a:LFW;

    new-instance v0, Lqo0;

    invoke-direct {v0, p0, p3, p4, p2}, Lqo0;-><init>(Lso0;Landroid/app/Activity;II)V

    const-wide/16 p2, 0x1388

    invoke-static {p1, v0, p2, p3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return v1
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lso0;->l:Lro0;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public d()LyB;
    .locals 3

    const-string v0, "Completing update."

    .line 1
    invoke-virtual {p0, v0}, Lso0;->a(Ljava/lang/CharSequence;)V

    .line 2
    invoke-super {p0}, LQA;->d()LyB;

    move-result-object v0

    .line 3
    iget v1, p0, Lso0;->k:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/16 v1, 0x9

    .line 4
    invoke-virtual {p0, v1}, Lso0;->b(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 5
    invoke-virtual {p0, v1}, Lso0;->b(I)V

    :goto_0
    return-object v0
.end method
