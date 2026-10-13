.class public LjT;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:LWT;


# direct methods
.method public synthetic constructor <init>(LeT;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    .line 2
    iput p1, p0, LjT;->a:I

    .line 3
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, LjT;->b:LWT;

    return-void
.end method
