.class public LOv0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, LOv0;->a:I

    .line 3
    iput p1, p0, LOv0;->b:I

    .line 4
    iput p1, p0, LOv0;->c:I

    .line 5
    iput p1, p0, LOv0;->d:I

    goto :goto_0

    :cond_0
    const p1, 0x7f1304d8

    .line 6
    iput p1, p0, LOv0;->a:I

    const p1, 0x7f1304d9

    .line 7
    iput p1, p0, LOv0;->b:I

    const p1, 0x7f1304e1

    .line 8
    iput p1, p0, LOv0;->c:I

    const p1, 0x7f1304e7

    .line 9
    iput p1, p0, LOv0;->d:I

    goto :goto_0

    :cond_1
    const p1, 0x7f1304c3

    .line 10
    iput p1, p0, LOv0;->a:I

    const p1, 0x7f1304c4

    .line 11
    iput p1, p0, LOv0;->b:I

    const p1, 0x7f1304e0

    .line 12
    iput p1, p0, LOv0;->c:I

    const p1, 0x7f1304e6

    .line 13
    iput p1, p0, LOv0;->d:I

    goto :goto_0

    :cond_2
    const p1, 0x7f1304e3

    .line 14
    iput p1, p0, LOv0;->a:I

    const p1, 0x7f1304e4

    .line 15
    iput p1, p0, LOv0;->b:I

    const p1, 0x7f1304e2

    .line 16
    iput p1, p0, LOv0;->c:I

    const p1, 0x7f1304e8

    .line 17
    iput p1, p0, LOv0;->d:I

    :goto_0
    return-void
.end method
