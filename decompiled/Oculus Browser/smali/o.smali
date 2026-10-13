.class public Lo;
.super Lm;
.source "PG"


# instance fields
.field public a:Ld;

.field public b:Ll;

.field public final c:Ljava/lang/ref/WeakReference;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ln;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm;-><init>()V

    .line 2
    new-instance v0, Ld;

    invoke-direct {v0}, Ld;-><init>()V

    iput-object v0, p0, Lo;->a:Ld;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lo;->d:I

    .line 4
    iput-boolean v0, p0, Lo;->e:Z

    .line 5
    iput-boolean v0, p0, Lo;->f:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo;->g:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo;->c:Ljava/lang/ref/WeakReference;

    .line 8
    sget-object p1, Ll;->x:Ll;

    iput-object p1, p0, Lo;->b:Ll;

    return-void
.end method

.method public static b(Lk;)Ll;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Ll;->w:Ll;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Ll;->A:Ll;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Ll;->z:Ll;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Ll;->y:Ll;

    return-object p0
.end method


# virtual methods
.method public a(Lk;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lo;->b(Lk;)Ll;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lo;->a(Ll;)V

    return-void
.end method

.method public final a(Ll;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lo;->b:Ll;

    if-ne v0, p1, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lo;->b:Ll;

    .line 5
    iget-boolean p1, p0, Lo;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget p1, p0, Lo;->d:I

    if-eqz p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iput-boolean v0, p0, Lo;->e:Z

    .line 7
    iget-object p1, p0, Lo;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const-string p1, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    .line 8
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lo;->a:Ld;

    .line 10
    iget p1, p1, Lj;->x:I

    if-nez p1, :cond_3

    .line 11
    iput-boolean v0, p0, Lo;->f:Z

    .line 12
    :goto_0
    iput-boolean v0, p0, Lo;->e:Z

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 13
    throw p1

    .line 14
    :cond_4
    :goto_1
    iput-boolean v0, p0, Lo;->f:Z

    return-void
.end method
