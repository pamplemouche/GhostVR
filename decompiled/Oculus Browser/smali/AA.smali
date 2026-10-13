.class public final synthetic LAA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LBA;

.field public final x:Lsw;

.field public final y:LJx;


# direct methods
.method public constructor <init>(LBA;Lsw;LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAA;->w:LBA;

    iput-object p2, p0, LAA;->x:Lsw;

    iput-object p3, p0, LAA;->y:LJx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LAA;->w:LBA;

    iget-object v1, p0, LAA;->x:Lsw;

    iget-object v2, p0, LAA;->y:LJx;

    .line 1
    iget-object v0, v0, LBA;->w:Ltw;

    invoke-interface {v0, v1, v2}, Ltw;->a(Lsw;LJx;)V

    return-void
.end method
