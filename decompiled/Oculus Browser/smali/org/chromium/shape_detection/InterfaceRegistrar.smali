.class public Lorg/chromium/shape_detection/InterfaceRegistrar;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(I)Lx71;
    .locals 1

    .line 1
    sget-object v0, LK71;->a:Lj71;

    .line 2
    invoke-interface {v0, p0}, Lj71;->a(I)LF71;

    move-result-object p0

    invoke-interface {p0}, LF71;->B()Lx71;

    move-result-object p0

    return-object p0
.end method

.method public static bindBarcodeDetectionProvider(I)V
    .locals 2

    .line 1
    invoke-static {}, Lja1;->a()Lva1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lva1;->r:LA61;

    invoke-static {p0}, Lorg/chromium/shape_detection/InterfaceRegistrar;->a(I)Lx71;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, LA61;->a(LE61;Lx71;)V

    :cond_0
    return-void
.end method

.method public static bindFaceDetectionProvider(I)V
    .locals 2

    .line 1
    sget-object v0, LUa1;->t:LA61;

    new-instance v1, Loa1;

    invoke-direct {v1}, Loa1;-><init>()V

    .line 2
    invoke-static {p0}, Lorg/chromium/shape_detection/InterfaceRegistrar;->a(I)Lx71;

    move-result-object p0

    .line 3
    invoke-virtual {v0, v1, p0}, LA61;->a(LE61;Lx71;)V

    return-void
.end method

.method public static bindTextDetection(I)V
    .locals 2

    .line 1
    invoke-static {}, Lpa1;->a()Lnb1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lnb1;->u:LA61;

    invoke-static {p0}, Lorg/chromium/shape_detection/InterfaceRegistrar;->a(I)Lx71;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, LA61;->a(LE61;Lx71;)V

    :cond_0
    return-void
.end method
