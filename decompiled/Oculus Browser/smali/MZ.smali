.class public final synthetic LMZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LMZ;->w:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, LMZ;->w:I

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, LJ/N;->MMtVSAe3(ILjava/lang/Object;)V

    return-void
.end method
