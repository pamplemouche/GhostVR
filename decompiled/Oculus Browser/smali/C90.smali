.class public final synthetic LC90;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final w:Ljava/util/Comparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LC90;

    invoke-direct {v0}, LC90;-><init>()V

    sput-object v0, LC90;->w:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, LF90;

    check-cast p2, LF90;

    .line 1
    iget v0, p1, LF90;->c:I

    iget v1, p2, LF90;->c:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, LF90;->d:J

    iget-wide p1, p2, LF90;->d:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    goto :goto_0

    :cond_0
    sub-int p1, v0, v1

    :goto_0
    return p1
.end method
