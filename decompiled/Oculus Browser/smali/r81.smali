.class public Lr81;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:J

.field public final synthetic x:I

.field public final synthetic y:Lv81;


# direct methods
.method public constructor <init>(Lv81;JI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr81;->y:Lv81;

    iput-wide p2, p0, Lr81;->w:J

    iput p4, p0, Lr81;->x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr81;->y:Lv81;

    iget-object v0, v0, Lv81;->b:LA81;

    .line 2
    iget-object v0, v0, LA81;->d:Lx81;

    .line 3
    iget-wide v1, p0, Lr81;->w:J

    iget v3, p0, Lr81;->x:I

    invoke-interface {v0, v1, v2, v3}, Lx81;->a(JI)V

    return-void
.end method
