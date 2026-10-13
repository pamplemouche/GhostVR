.class public abstract Lf00;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final A:LWT;

.field public final B:LWT;

.field public final w:Landroid/content/res/ColorStateList;

.field public final x:Landroid/content/res/ColorStateList;

.field public y:I

.field public z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lf00;->A:LWT;

    .line 3
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lf00;->B:LWT;

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, LAO0;->b(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lf00;->w:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, LAO0;->b(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lf00;->x:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .line 2
    iget v0, p0, Lf00;->y:I

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lf00;->y:I

    .line 4
    iget-object v0, p0, Lf00;->A:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld00;

    .line 5
    invoke-interface {v1, p1, p2}, Ld00;->b(IZ)V

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lf00;->y:I

    invoke-static {p1}, LAO0;->d(I)Z

    move-result p1

    .line 7
    iget-object p2, p0, Lf00;->z:Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lf00;->z:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    .line 9
    iget-object p2, p0, Lf00;->w:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lf00;->x:Landroid/content/res/ColorStateList;

    .line 10
    :goto_1
    iget-object v0, p0, Lf00;->B:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le00;

    .line 11
    invoke-interface {v1, p2, p1}, Le00;->a(Landroid/content/res/ColorStateList;Z)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf00;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
