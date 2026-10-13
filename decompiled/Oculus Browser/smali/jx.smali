.class public final Ljx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lvy;
.implements Ldy;


# instance fields
.field public final a:LFx;

.field public final b:Llx;

.field public final c:Lax;

.field public final d:LYw;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(LFx;Llx;Lax;LYw;LGx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ljx;->e:I

    .line 3
    iput v0, p0, Ljx;->f:I

    .line 4
    iput-object p1, p0, Ljx;->a:LFx;

    .line 5
    iput-object p2, p0, Ljx;->b:Llx;

    .line 6
    iput-object p3, p0, Ljx;->c:Lax;

    .line 7
    iput-object p4, p0, Ljx;->d:LYw;

    .line 8
    invoke-virtual {p5, p0}, LGx;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljx;->d:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    iget v0, p0, Ljx;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljx;->e:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ClearAllListener"

    const-string v2, "starting clearAll"

    .line 3
    invoke-static {v1, v2, v0}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Ljx;->a:LFx;

    invoke-virtual {v0}, LFx;->h()V

    .line 5
    iget-object v0, p0, Ljx;->b:Llx;

    check-cast v0, Liz;

    invoke-virtual {v0}, Liz;->reset()V

    .line 6
    iget-object v0, p0, Ljx;->c:Lax;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lax;->reset()V

    .line 8
    :cond_0
    iget-object v0, p0, Ljx;->a:LFx;

    invoke-virtual {v0}, LFx;->b()V

    return-void
.end method

.method public a(Lfy;)V
    .locals 4

    .line 9
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    new-instance v1, Ley;

    iget v2, p1, Lfy;->a:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "ClearAllListener"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget v0, p1, Lfy;->a:I

    .line 11
    new-instance v1, Ley;

    const-string v2, "clearCount"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 12
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget v0, p0, Ljx;->e:I

    .line 14
    iget-object v1, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    iget v0, p1, Lfy;->a:I

    .line 16
    new-instance v1, Ley;

    const-string v2, "clearWithRefreshCount"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 17
    iget-object p1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget p1, p0, Ljx;->f:I

    .line 19
    iget-object v0, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x30c9497f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x2f1a8c14

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "clearAll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "clearAllWithRefresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_2

    .line 2
    :cond_3
    iget-object p1, p0, Ljx;->a:LFx;

    const/4 v0, 0x3

    new-instance v1, Lix;

    invoke-direct {v1, p0}, Lix;-><init>(Ljx;)V

    invoke-virtual {p1, v0, v2, v1}, LFx;->a(IILjava/lang/Runnable;)V

    goto :goto_2

    .line 3
    :cond_4
    iget-object p1, p0, Ljx;->a:LFx;

    const/4 v0, 0x2

    new-instance v1, Lhx;

    invoke-direct {v1, p0}, Lhx;-><init>(Ljx;)V

    invoke-virtual {p1, v0, v2, v1}, LFx;->a(IILjava/lang/Runnable;)V

    :goto_2
    return-void
.end method
