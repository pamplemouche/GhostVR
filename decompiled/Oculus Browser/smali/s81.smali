.class public Ls81;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:J

.field public final synthetic x:Lv81;


# direct methods
.method public constructor <init>(Lv81;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls81;->x:Lv81;

    iput-wide p2, p0, Ls81;->w:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls81;->x:Lv81;

    iget-object v0, v0, Lv81;->b:LA81;

    .line 2
    iget-object v0, v0, LA81;->d:Lx81;

    .line 3
    iget-wide v1, p0, Ls81;->w:J

    invoke-interface {v0, v1, v2}, Lx81;->b(J)V

    return-void
.end method
