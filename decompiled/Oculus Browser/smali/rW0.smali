.class public LrW0;
.super Lx01;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx01;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/base/UnguessableToken;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, LJ/N;->M$O7xE3y(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public d(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 0

    .line 1
    invoke-static {p1}, LJ/N;->Mm9rCM0m(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content/common/SurfaceWrapper;

    return-object p1
.end method
