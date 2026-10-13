.class public Lja1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lva1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lva1;
    .locals 3

    .line 1
    sget-object v0, Ldm;->d:Ldm;

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, v1}, Ldm;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BarcodeProviderImpl"

    const-string v2, "Google Play Services not available"

    .line 4
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lja1;

    invoke-direct {v0}, Lja1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(LG61;LOa1;)V
    .locals 2

    .line 6
    sget-object v0, Lsa1;->q:LA61;

    new-instance v1, Lia1;

    invoke-direct {v1, p2}, Lia1;-><init>(LOa1;)V

    invoke-virtual {v0, v1, p1}, LA61;->a(LE61;LG61;)V

    return-void
.end method

.method public a(Lta1;)V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    .line 8
    check-cast p1, LBa1;

    invoke-virtual {p1, v0}, LBa1;->a(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xc
        0xd
    .end array-data
.end method

.method public a(Ly71;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method
