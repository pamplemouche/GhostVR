.class public LLx0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public w:Landroid/net/Uri;

.field public x:J

.field public y:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LLx0;->w:Landroid/net/Uri;

    .line 3
    iput-wide p2, p0, LLx0;->x:J

    .line 4
    iput p4, p0, LLx0;->y:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, LLx0;

    .line 2
    iget-wide v0, p1, LLx0;->x:J

    iget-wide v2, p0, LLx0;->x:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
