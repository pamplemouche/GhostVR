.class public final synthetic LMV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LRV;

.field public final x:LKV;

.field public final y:Z

.field public final z:Z


# direct methods
.method public constructor <init>(LRV;LKV;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMV;->w:LRV;

    iput-object p2, p0, LMV;->x:LKV;

    iput-boolean p3, p0, LMV;->y:Z

    iput-boolean p4, p0, LMV;->z:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LMV;->w:LRV;

    iget-object v1, p0, LMV;->x:LKV;

    iget-boolean v2, p0, LMV;->y:Z

    iget-boolean v3, p0, LMV;->z:Z

    .line 1
    invoke-virtual {v0, v1, v2, v3}, LRV;->a(LKV;ZZ)Z

    return-void
.end method
