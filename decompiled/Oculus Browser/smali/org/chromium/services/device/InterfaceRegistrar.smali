.class public Lorg/chromium/services/device/InterfaceRegistrar;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static createInterfaceRegistryForContext(ILorg/chromium/device/nfc/NfcDelegate;)V
    .locals 5

    .line 1
    sget-object v0, LK71;->a:Lj71;

    .line 2
    invoke-interface {v0, p0}, Lj71;->a(I)LF71;

    move-result-object p0

    invoke-interface {p0}, LF71;->B()Lx71;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lha1;->a(Lx71;)Lha1;

    move-result-object p0

    .line 4
    sget-object v0, Lb21;->e:LA61;

    new-instance v1, Lj11;

    invoke-direct {v1}, Lj11;-><init>()V

    .line 5
    iget-object v2, p0, Lha1;->w:Ljava/util/Map;

    invoke-virtual {v0}, LA61;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lga1;

    invoke-direct {v4, v0, v1}, Lga1;-><init>(LA61;Lea1;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, LE21;->h:LA61;

    new-instance v1, LN31;

    invoke-direct {v1, p1}, LN31;-><init>(Lorg/chromium/device/nfc/NfcDelegate;)V

    .line 7
    iget-object p1, p0, Lha1;->w:Ljava/util/Map;

    invoke-virtual {v0}, LA61;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lga1;

    invoke-direct {v3, v0, v1}, Lga1;-><init>(LA61;Lea1;)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lr31;->i:LA61;

    new-instance v0, LV31;

    invoke-direct {v0}, LV31;-><init>()V

    .line 9
    iget-object p0, p0, Lha1;->w:Ljava/util/Map;

    invoke-virtual {p1}, LA61;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lga1;

    invoke-direct {v2, p1, v0}, Lga1;-><init>(LA61;Lea1;)V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
