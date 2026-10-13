.class public final Lm90;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LbU0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/graphics/Bitmap;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Z

.field public final l:LfU0;

.field public final m:Ljava/lang/String;

.field public final n:J

.field public final o:J

.field public final p:J

.field public final q:J

.field public final r:I

.field public final s:I


# direct methods
.method public synthetic constructor <init>(Ll90;Lk90;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Ll90;->a:LbU0;

    .line 3
    iput-object p2, p0, Lm90;->a:LbU0;

    .line 4
    iget-object p2, p1, Ll90;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lm90;->b:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Ll90;->c:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lm90;->c:Ljava/lang/String;

    .line 8
    iget-object p2, p1, Ll90;->d:Landroid/graphics/Bitmap;

    .line 9
    iput-object p2, p0, Lm90;->d:Landroid/graphics/Bitmap;

    .line 10
    iget p2, p1, Ll90;->e:I

    .line 11
    iget-boolean p2, p1, Ll90;->f:Z

    .line 12
    iput-boolean p2, p0, Lm90;->e:Z

    .line 13
    iget-boolean p2, p1, Ll90;->g:Z

    .line 14
    iput-boolean p2, p0, Lm90;->f:Z

    .line 15
    iget-boolean p2, p1, Ll90;->h:Z

    .line 16
    iput-boolean p2, p0, Lm90;->g:Z

    .line 17
    iget-boolean p2, p1, Ll90;->i:Z

    .line 18
    iput-boolean p2, p0, Lm90;->h:Z

    .line 19
    iget p2, p1, Ll90;->j:I

    .line 20
    iput p2, p0, Lm90;->i:I

    .line 21
    iget-object p2, p1, Ll90;->k:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lm90;->j:Ljava/lang/String;

    .line 23
    iget-boolean p2, p1, Ll90;->l:Z

    .line 24
    iput-boolean p2, p0, Lm90;->k:Z

    .line 25
    iget-object p2, p1, Ll90;->m:LfU0;

    .line 26
    iput-object p2, p0, Lm90;->l:LfU0;

    .line 27
    iget-object p2, p1, Ll90;->n:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lm90;->m:Ljava/lang/String;

    .line 29
    iget-wide v0, p1, Ll90;->o:J

    .line 30
    iput-wide v0, p0, Lm90;->n:J

    .line 31
    iget-wide v0, p1, Ll90;->p:J

    .line 32
    iput-wide v0, p0, Lm90;->o:J

    .line 33
    iget-wide v0, p1, Ll90;->q:J

    .line 34
    iput-wide v0, p0, Lm90;->p:J

    .line 35
    iget-wide v0, p1, Ll90;->r:J

    .line 36
    iput-wide v0, p0, Lm90;->q:J

    .line 37
    iget p2, p1, Ll90;->s:I

    .line 38
    iput p2, p0, Lm90;->r:I

    .line 39
    iget p1, p1, Ll90;->t:I

    .line 40
    iput p1, p0, Lm90;->s:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, Lm90;->s:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
