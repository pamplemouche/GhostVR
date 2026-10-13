.class public abstract Le30;
.super Lf30;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42e80000    # 116.0f

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    return-void
.end method
