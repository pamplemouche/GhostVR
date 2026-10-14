.class public final Lcom/samsung/android/app/vrsetupwizard/common/b/g;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:Lcom/samsung/android/app/vrsetupwizard/common/c/e;

.field private final l:Landroid/content/Context;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "mContext"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p3, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "server"

    invoke-static {p4, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->m:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->n:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->o:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->p:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->f:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/app/vrsetupwizard/common/c/e;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->n:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, La/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->k:Lcom/samsung/android/app/vrsetupwizard/common/c/e;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a:J

    return-void
.end method

.method public final a(Lcom/samsung/android/app/vrsetupwizard/common/b/g;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b:I

    iget-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->e:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->c:I

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->g:I

    iget-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->d:Ljava/lang/String;

    iget-wide v0, p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a:J

    iput-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a:J

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->c:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->j:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->e:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->c:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->g:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->f:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->h:I

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l:Landroid/content/Context;

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->m:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->m:Ljava/lang/String;

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->n:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->n:Ljava/lang/String;

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->o:Ljava/lang/String;

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->p:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->p:Ljava/lang/String;

    invoke-static {v0, p1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->g:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->h:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->m:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->n:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->o:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->p:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->i:I

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 5

    sget-object v0, La/c/b/q;->a:La/c/b/q;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->a:J

    long-to-double v1, v1

    const/high16 v3, 0x100000

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.1f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final k()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->k:Lcom/samsung/android/app/vrsetupwizard/common/c/e;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/e;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()Lcom/samsung/android/app/vrsetupwizard/common/c/e;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->k:Lcom/samsung/android/app/vrsetupwizard/common/c/e;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->p:Ljava/lang/String;

    const-string v1, "initial"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->o:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->o:Ljava/lang/String;

    const-string v1, "oculus"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->o:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageItemData(mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/g;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
