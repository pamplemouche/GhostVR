.class public LAP0;
.super LY10;
.source "PG"


# instance fields
.field public a:LxP0;


# direct methods
.method public constructor <init>(LxP0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LY10;-><init>()V

    .line 2
    iput-object p1, p0, LAP0;->a:LxP0;

    return-void
.end method

.method public static a(J)Ljava/lang/Integer;
    .locals 3

    const-wide v0, 0x80000000L

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    long-to-int p1, p0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public b()LxP0;
    .locals 1

    .line 1
    iget-object v0, p0, LAP0;->a:LxP0;

    return-object v0
.end method
