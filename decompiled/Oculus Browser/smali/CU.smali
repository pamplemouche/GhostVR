.class public final LCU;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/Window;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->isWideColorGamut()Z

    move-result p0

    return p0
.end method
