.class public abstract Lzm0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LAm0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LAm0;

    new-instance v1, Lbm0;

    .line 2
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-direct {v1, v2}, Lbm0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, LAm0;-><init>(Lam0;)V

    sput-object v0, Lzm0;->a:LAm0;

    return-void
.end method
