.class public Lb90;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lb90;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lb90;
    .locals 1

    .line 1
    sget-object v0, Lb90;->a:Lb90;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb90;

    invoke-direct {v0}, Lb90;-><init>()V

    sput-object v0, Lb90;->a:Lb90;

    .line 3
    :cond_0
    sget-object v0, Lb90;->a:Lb90;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    const/16 v2, 0x37

    .line 3
    check-cast v0, LjS0;

    invoke-virtual {v0, v1, v2}, LjS0;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDownloadAutoResumptionEnabledInNative()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lf90;->a:Lh90;

    .line 3
    iget-object v0, v0, Lh90;->a:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_3

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld90;

    .line 6
    iget-boolean v6, v4, Ld90;->e:Z

    if-eqz v6, :cond_2

    .line 7
    iget-boolean v3, v4, Ld90;->c:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    :goto_2
    const/16 v2, 0x37

    const-wide/32 v3, 0x5265c00

    .line 8
    new-instance v6, LIS0;

    invoke-direct {v6}, LIS0;-><init>()V

    .line 9
    iput-wide v3, v6, LIS0;->b:J

    .line 10
    invoke-virtual {v6}, LIS0;->a()LJS0;

    move-result-object v3

    .line 11
    new-instance v4, LHS0;

    invoke-direct {v4, v2}, LHS0;-><init>(I)V

    .line 12
    iput-object v3, v4, LHS0;->g:LMS0;

    .line 13
    iput-boolean v5, v4, LHS0;->f:Z

    .line 14
    iput v0, v4, LHS0;->c:I

    .line 15
    iput-boolean v1, v4, LHS0;->d:Z

    .line 16
    iput-boolean v5, v4, LHS0;->e:Z

    .line 17
    invoke-virtual {v4}, LHS0;->a()LOS0;

    move-result-object v0

    .line 18
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v1

    .line 19
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 20
    check-cast v1, LjS0;

    invoke-virtual {v1, v2, v0}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {p0}, Lb90;->a()V

    :goto_3
    return-void
.end method
