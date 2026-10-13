.class public LfR;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LYF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, LWP;->a(I)LWP;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, LWP;->x:LWP;

    :cond_0
    return-object p1
.end method
