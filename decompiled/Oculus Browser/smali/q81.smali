.class public Lq81;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:J

.field public final synthetic x:I

.field public final synthetic y:Z

.field public final synthetic z:Lv81;


# direct methods
.method public constructor <init>(Lv81;JIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq81;->z:Lv81;

    iput-wide p2, p0, Lq81;->w:J

    iput p4, p0, Lq81;->x:I

    iput-boolean p5, p0, Lq81;->y:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq81;->z:Lv81;

    iget-object v0, v0, Lv81;->b:LA81;

    .line 2
    iget-object v0, v0, LA81;->d:Lx81;

    .line 3
    iget-wide v1, p0, Lq81;->w:J

    iget v3, p0, Lq81;->x:I

    invoke-interface {v0, v1, v2, v3}, Lx81;->a(JI)V

    .line 4
    iget-boolean v0, p0, Lq81;->y:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lq81;->z:Lv81;

    iget-object v0, v0, Lv81;->b:LA81;

    .line 6
    iget-object v0, v0, LA81;->d:Lx81;

    .line 7
    iget v1, p0, Lq81;->x:I

    invoke-interface {v0, v1}, Lx81;->a(I)V

    .line 8
    iget-object v0, p0, Lq81;->z:Lv81;

    iget-object v0, v0, Lv81;->b:LA81;

    .line 9
    iget-object v0, v0, LA81;->d:Lx81;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    .line 10
    iget-wide v3, p0, Lq81;->w:J

    aput-wide v3, v1, v2

    invoke-interface {v0, v1}, Lx81;->a([J)V

    :cond_0
    return-void
.end method
