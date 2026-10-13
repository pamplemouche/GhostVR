.class public final Llg0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Llg0;->a:I

    .line 3
    iput p2, p0, Llg0;->b:I

    .line 4
    iput-object p3, p0, Llg0;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Llg0;->d:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Llg0;->a:I

    .line 8
    iput p2, p0, Llg0;->b:I

    const-string p1, ""

    .line 9
    iput-object p1, p0, Llg0;->c:Ljava/lang/String;

    .line 10
    iput-boolean p3, p0, Llg0;->d:Z

    return-void
.end method
