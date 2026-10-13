.class public LP50;
.super LQ40;
.source "PG"


# static fields
.field public static final d:D


# instance fields
.field public final a:Ls50;

.field public final b:F

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x4052c00000000000L    # 75.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, LP50;->d:D

    return-void
.end method

.method public constructor <init>(Lo50;Ls50;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, LQ40;-><init>()V

    .line 2
    iget p1, p1, Lo50;->c:F

    .line 3
    iput p1, p0, LP50;->b:F

    .line 4
    iput-object p2, p0, LP50;->a:Ls50;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eqz p5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget p5, p2, Ls50;->a:F

    int-to-float p3, p3

    sub-float/2addr p5, p3

    mul-float p5, p5, p1

    .line 6
    iget p2, p2, Ls50;->b:F

    int-to-float p3, p4

    sub-float/2addr p2, p3

    mul-float p2, p2, p1

    mul-float p5, p5, p5

    mul-float p2, p2, p2

    add-float/2addr p2, p5

    float-to-double p1, p2

    .line 7
    sget-wide p3, LP50;->d:D

    cmpg-double p5, p1, p3

    if-gtz p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :cond_2
    :goto_0
    iput-boolean v0, p0, LP50;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LP50;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
