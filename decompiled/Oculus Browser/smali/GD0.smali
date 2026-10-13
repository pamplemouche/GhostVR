.class public LGD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LGD0;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, LGD0;->w:I

    const/4 v1, 0x4

    const-string v2, "Invalidations.GCMUpstreamRequest"

    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method
