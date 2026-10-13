.class public final synthetic LCA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LEA;

.field public final x:J


# direct methods
.method public constructor <init>(LEA;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCA;->w:LEA;

    iput-wide p2, p0, LCA;->x:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LCA;->w:LEA;

    iget-wide v1, p0, LCA;->x:J

    .line 1
    iget-object v0, v0, LEA;->a:Lww;

    invoke-interface {v0, v1, v2}, Lww;->a(J)V

    return-void
.end method
