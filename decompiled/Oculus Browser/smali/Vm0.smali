.class public LVm0;
.super LjG0;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LVm0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LjG0;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, LGO0;->a(Landroid/view/View;Landroid/graphics/Region;)V

    const/4 p1, 0x1

    return p1
.end method
