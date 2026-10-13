.class public LIf1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, LJf1;

    check-cast p2, LJf1;

    .line 2
    iget p1, p1, LJf1;->x:I

    iget p2, p2, LJf1;->x:I

    sub-int/2addr p1, p2

    return p1
.end method
