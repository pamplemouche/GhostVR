.class public final synthetic Lfr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lmr0;

.field public final x:Ljava/lang/String;

.field public final y:J


# direct methods
.method public constructor <init>(Lmr0;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfr0;->w:Lmr0;

    iput-object p2, p0, Lfr0;->x:Ljava/lang/String;

    iput-wide p3, p0, Lfr0;->y:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lfr0;->w:Lmr0;

    iget-object v1, p0, Lfr0;->x:Ljava/lang/String;

    iget-wide v2, p0, Lfr0;->y:J

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Lmr0;->a(Ljava/lang/String;J)V

    return-void
.end method
